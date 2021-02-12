class Setup {
    var applicationID: String
    var applicationToken: String
    var domain = "https://api.fynd.com"

    init?(applicationID: String, applicationToken: String, domain: String = "https://api.fynd.com") {
        let regex = "^[0-9a-fA-F]{24}$"
        let mongoObjectIDRegex = NSPredicate(format: "SELF MATCHES %@", regex)

        if (!mongoObjectIDRegex.evaluate(with: applicationID)) {
            return nil
        }
    }
}