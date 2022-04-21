

import Foundation
public extension ApplicationClient {
    /*
         Model: OAuthRequestSchemaOauth2
         Used By: User
     */
    class OAuthRequestSchemaOauth2: Codable {
        public var accessToken: String?

        public var expiry: Int?

        public var refreshToken: String?

        public enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"

            case expiry

            case refreshToken = "refresh_token"
        }

        public init(accessToken: String? = nil, expiry: Int? = nil, refreshToken: String? = nil) {
            self.accessToken = accessToken

            self.expiry = expiry

            self.refreshToken = refreshToken
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                accessToken = try container.decode(String.self, forKey: .accessToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiry = try container.decode(Int.self, forKey: .expiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refreshToken = try container.decode(String.self, forKey: .refreshToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accessToken, forKey: .accessToken)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        }
    }
}
