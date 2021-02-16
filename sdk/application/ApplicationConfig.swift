public class ApplicationConfig {
    var applicationID: String
    var applicationToken: String
    var domain: String

    public init?(applicationID: String, applicationToken: String, domain: String = "https://api.fynd.com") {
        self.applicationID = applicationID
        self.applicationToken = applicationToken
        self.domain = domain
        let regex = "^[0-9a-fA-F]{24}$"
        let mongoObjectIDRegex = NSPredicate(format: "SELF MATCHES %@", regex)

        if (!mongoObjectIDRegex.evaluate(with: applicationID)) {
            return nil
        }
    }
}