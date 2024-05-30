import Foundation
import Alamofire

public class PlatformConfig {
    var companyId: String
    var apiKey: String?
    var apiSecret: String?
    var domain: String
    var userAgent: String?
    var language: String?
    var currency: String?
    var extraHeaders: [(key: String, value: String)] = []
    var locationDetails: LocationDetails?
    public var session: Alamofire.Session

    public lazy var oauthClient = PlatformOAuthClient(config: self)

    public init?(companyId: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = [], locationDetails: LocationDetails? = nil, session: Alamofire.Session = AF) {
        self.companyId = companyId
        self.domain = domain
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders
        self.locationDetails = locationDetails
        self.session = session
    }
    
    public init?(companyId: String, apiKey: String, apiSecret: String, domain: String = "https://api.fynd.com", userAgent: String? = nil, language: String? = "en-IN", currency: String? = "INR", extraHeaders: [(key: String, value: String)] = [], locationDetails: LocationDetails? = nil, session: Alamofire.Session = AF) {
        self.companyId = companyId
        self.domain = domain
        self.apiKey = apiKey
        self.apiSecret = apiSecret
        self.userAgent = userAgent
        self.language = language
        self.currency = currency
        self.extraHeaders = extraHeaders
        self.locationDetails = locationDetails
        self.session = session
    }
}

public extension PlatformConfig {
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
        
        public init(pincode: String? = nil, country: String? = nil, city: String? = nil, latitude: String? = nil, longitude: String? = nil,countryIsoCode: String? = nil, sector:String? = nil) {
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
        var longitude: String? = nil
        var latitude: String? = nil
    }
}

