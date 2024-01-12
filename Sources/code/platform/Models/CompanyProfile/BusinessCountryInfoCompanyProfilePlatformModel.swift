

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: BusinessCountryInfo
        Used By: CompanyProfile
    */

    class BusinessCountryInfo: Codable {
        
        
        public var countryCode: String
        
        public var country: String
        
        public var currency: CountryCurrencyInfo
        
        public var timezone: String
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
            case currency = "currency"
            
            case timezone = "timezone"
            
        }

        public init(country: String, countryCode: String, currency: CountryCurrencyInfo, timezone: String) {
            
            self.countryCode = countryCode
            
            self.country = country
            
            self.currency = currency
            
            self.timezone = timezone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                currency = try container.decode(CountryCurrencyInfo.self, forKey: .currency)
                
            
            
            
                timezone = try container.decode(String.self, forKey: .timezone)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(timezone, forKey: .timezone)
            
            
        }
        
    }
}




