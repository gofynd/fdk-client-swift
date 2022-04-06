import Foundation
public class ApplicationConfig {
    var applicationId: String
    var applicationToken: String
    var domain: String
    var userAgent: String?
    var currency: String?
    var language: String?
    var extraHeaders: [(key: String, value: String)] = []
    var locationDetails: LocationDetails?

    public init?(applicationId: String, applicationToken: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = [], locationDetails: LocationDetails? = nil) {
        self.applicationId = applicationId
        self.applicationToken = applicationToken
        self.domain = domain
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders
        self.locationDetails = locationDetails
        let regex = try? NSRegularExpression(pattern: "^[0-9a-fA-F]{24}$",
                                             options: [.caseInsensitive])

        if regex?.firstMatch(in: applicationId, options: [],
                             range: NSMakeRange(0, applicationId.utf16.count)) == nil
        {
            return nil
        }
    }
}

public extension ApplicationConfig {
    class LocationDetails: Codable {
        var pincode: String
        var country: String
        var city: String?
        var location: LatLong?

        public init(pincode: String, country: String, city: String? = nil, latitude: String? = nil, longitude: String? = nil) {
            self.pincode = pincode
            self.country = country
            self.city = city
            if let lat = latitude,
               let long = longitude
            {
                self.location = LatLong(longitude: long, latitude: lat)
            }
        }
    }

    struct LatLong: Codable {
        var longitude: String
        var latitude: String
    }
}
