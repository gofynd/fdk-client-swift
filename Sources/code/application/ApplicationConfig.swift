import Foundation
import Alamofire

public class ApplicationConfig {
    var applicationId: String
    var applicationToken: String
    var domain: String
    var userAgent: String?
    var currency: String?
    var language: String?
    var extraHeaders: [(key: String, value: String)] = []
    var locationDetails: LocationDetails?
    public var session: Alamofire.Session


    public init?(applicationId: String, applicationToken: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = [], locationDetails: LocationDetails? = nil, session: Alamofire.Session = AF) {
        self.applicationId = applicationId
        self.applicationToken = applicationToken
        self.domain = domain
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders
        self.locationDetails = locationDetails
        self.session = session
        let regex = try? NSRegularExpression(pattern: "^[0-9a-fA-F]{24}$",
                options: [.caseInsensitive])

        if regex?.firstMatch(in: applicationId, options:[],
        range: NSMakeRange(0, applicationId.utf16.count)) == nil {
            return nil
        }
    }
}

public extension ApplicationConfig {
    class LocationDetails: Codable {
        var pincode: String?
        var country: String?
        var city: String?
        var location: LatLong?
        var countryIsoCode: String?
        var sector:String?
        
        enum CodingKeys: String, CodingKey {
            case pincode
            case country
            case city
            case location
            case countryIsoCode = "country_iso_code"
            case sector
        }

        public init(pincode: String?, country: String?, city: String? = nil, latitude: String? = nil, longitude: String? = nil,countryIsoCode: String? = nil, sector:String? = nil) {
            self.pincode = pincode
            self.country = country
            self.city = city
            if let lat = latitude,
               let long = longitude {
                self.location = LatLong(longitude: long, latitude: lat)
            }
            self.countryIsoCode = countryIsoCode
            self.sector = sector
        }
    }

    struct LatLong : Codable {
        var longitude: String?
        var latitude: String?
    }
}
