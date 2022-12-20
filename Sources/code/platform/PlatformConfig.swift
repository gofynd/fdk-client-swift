import Foundation
public class PlatformConfig {
    var companyId: String
    var apiKey: String?
    var apiSecret: String?
    var domain: String
    var userAgent: String?
    var language: String?
    var currency: String?
    var extraHeaders: [(key: String, value: String)] = []

    public lazy var oauthClient = PlatformOAuthClient(config: self)

    public init?(companyId: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = []) {
        self.companyId = companyId
        self.domain = domain
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders
    }

    public init?(companyId: String, apiKey: String, apiSecret: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = []) {
        self.companyId = companyId
        self.domain = domain
        self.apiKey = apiKey
        self.apiSecret = apiSecret
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders
    }
}
