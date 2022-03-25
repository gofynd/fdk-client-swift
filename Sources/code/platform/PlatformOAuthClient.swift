import Foundation
public struct AccessToken: Codable {
    public let accessToken: String

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accessToken = try container.decode(String.self, forKey: .accessToken)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try? container.encodeIfPresent(accessToken, forKey: .accessToken)
    }
}

typealias RefreshToken = String

public class PlatformOAuthClient {
    var config: PlatformConfig
    var token: AccessToken?
    var refreshToken: RefreshToken?

    public var getCustomToken: ((@escaping (AccessToken?) -> Void) -> Void)?

    enum GrantType: String {
        case authorizationCode = "refresh_token"
        case refreshToken = "authorization_code"
    }

    init(config: PlatformConfig) {
        self.config = config
    }

    private var randomState: String {
        ""
    }

    func getAuthorizationURL(scope: [String], redirectUri: String, isOnline: Bool = true) throws -> String {
        guard let apiKey = config.apiKey else {
            throw NSError(domain: "API Key missing in config", code: 0, userInfo: nil)
        }

        let query: [String: String] = [
            "client_id": apiKey,
            "scope": scope.joined(separator: ","),
            "redirect_uri": redirectUri,
            "state": randomState,
            "access_mode": isOnline ? "online" : "offline"
        ]

        return "https://\(config.domain)/v1.0/company/\(config.companyId)/oauth/authorize?\(query.asQueryString)"
    }

    func getAccessToken(onToken: @escaping (AccessToken?) -> Void) {
        if let token = token {
            return onToken(token)
        }

        if let getCustomToken = getCustomToken {
            return getCustomToken(onToken)
        }

        if let refreshToken = refreshToken {
            getToken(grant: [
                "grant_type": GrantType.refreshToken.rawValue,
                "refresh_token": refreshToken
            ], onToken: onToken)
        } else {
            onToken(nil)
        }
    }

    func getToken(grant: [String: String], onToken: @escaping (AccessToken?) -> Void) {
        guard let apiKey = config.apiKey,
              let apiSecret = config.apiSecret
        else {
            return onToken(nil)
        }
        let headers = [
            (key: "Authorization", value: "Basic " + "\(apiKey):\(apiSecret)".asBase64)
        ]

        AlmofireHelper.request(config.domain.appendAsPath("service/panel/authentication/v1.0/company/\(config.companyId)/oauth/token"), query: nil, parameters: grant, type: "POST", headers: headers, isJsonEncoding: false) { responseData, error, responseCode in
            if let _ = error, let data = responseData {
                var err = Utility.decode(FDKError.self, from: data)
                if err?.status == nil {
                    err?.status = responseCode
                }
                onToken(nil)
            } else if let data = responseData {
                let token = Utility.decode(AccessToken.self, from: data)
                onToken(token)
            } else {
                onToken(nil)
            }
        }
    }
}
