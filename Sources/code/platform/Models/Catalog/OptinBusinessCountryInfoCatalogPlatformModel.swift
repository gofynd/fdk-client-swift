

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: OptinBusinessCountryInfo
        Used By: Catalog
    */

    class OptinBusinessCountryInfo: Codable {
        
        
        public var country: String?
        
        public var countryCode: String?
        
        public var currency: [String: Any]?
        
        public var timezone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case countryCode = "country_code"
            
            case currency = "currency"
            
            case timezone = "timezone"
            
        }

        public init(country: String? = nil, countryCode: String? = nil, currency: [String: Any]? = nil, timezone: String? = nil) {
            
            self.country = country
            
            self.countryCode = countryCode
            
            self.currency = currency
            
            self.timezone = timezone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([String: Any].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timezone = try container.decode(String.self, forKey: .timezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(timezone, forKey: .timezone)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: OptinBusinessCountryInfo
        Used By: Catalog
    */

    class OptinBusinessCountryInfo: Codable {
        
        
        public var country: String?
        
        public var countryCode: String?
        
        public var currency: [String: Any]?
        
        public var timezone: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case countryCode = "country_code"
            
            case currency = "currency"
            
            case timezone = "timezone"
            
        }

        public init(country: String? = nil, countryCode: String? = nil, currency: [String: Any]? = nil, timezone: String? = nil) {
            
            self.country = country
            
            self.countryCode = countryCode
            
            self.currency = currency
            
            self.timezone = timezone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([String: Any].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timezone = try container.decode(String.self, forKey: .timezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(timezone, forKey: .timezone)
            
            
        }
        
    }
}


