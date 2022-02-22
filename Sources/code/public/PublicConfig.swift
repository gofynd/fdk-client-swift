import Foundation
public class PublicConfig {
    var domain: String
    var userAgent: String?
    var currency: String?
    var language: String?

    public init?(domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR") {
        self.domain = domain
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
    }
}