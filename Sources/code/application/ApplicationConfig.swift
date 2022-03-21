import Foundation
public class ApplicationConfig {
    var applicationId: String
    var applicationToken: String
    var domain: String
    var userAgent: String?
    var currency: String?
    var language: String?
    var extraHeaders: [(key: String, value: String)] = []

    public init?(applicationId: String, applicationToken: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = []) {
        self.applicationId = applicationId
        self.applicationToken = applicationToken
        self.domain = domain
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders

        //let regex = "^[0-9a-fA-F]{24}$"
        let regex = try? NSRegularExpression(pattern: "^[0-9a-fA-F]{24}$",
                options: [.caseInsensitive])

        if regex?.firstMatch(in: applicationId, options:[],
        range: NSMakeRange(0, applicationId.utf16.count)) == nil {
            return nil
        }

        // if let mongoObjectIdRegex = NSPredicate(format: "SELF MATCHES %@", regex) {

        //     if (!mongoObjectIdRegex.evaluate(with: applicationId)) {
        //         return nil
        //     }
        // }
    }
}