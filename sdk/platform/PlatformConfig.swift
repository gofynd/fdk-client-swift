public class PlatformConfig {
    var companyId: String
    var domain: String

    public init?(companyId: String, domain: String = "https://api.fynd.com") {
        self.companyId = companyId
        self.domain = domain
    }
}