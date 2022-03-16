import Foundation
public class PlatformConfig {
    var companyId: String
    var apiKey: String?
    var apiSecret: String?
    var domain: String
    var userAgent: String?

    public lazy var oauthClient = PlatformOAuthClient(config: self)

    public init?(companyId: String, domain: String = "https://api.fynd.com", userAgent: String? = nil) {
        self.companyId = companyId
        self.domain = domain
        self.userAgent = userAgent
    }
    
    public init?(companyId: String, apiKey: String, apiSecret: String, domain: String = "https://api.fynd.com", userAgent: String? = nil) {
        self.companyId = companyId
        self.domain = domain
        self.apiKey = apiKey
        self.apiSecret = apiSecret
        self.userAgent = userAgent
    }
}