

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: CountryCurrencyMapping
        Used By: Catalog
    */
    class CountryCurrencyMapping: Codable {
        
        public var name: String?
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var uid: String?
        
        public var isDefault: Bool?
        
        public var currencies: [CurrenciesSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case uid = "uid"
            
            case isDefault = "is_default"
            
            case currencies = "currencies"
            
        }

        public init(currencies: [CurrenciesSchema]? = nil, iso2: String? = nil, iso3: String? = nil, isDefault: Bool? = nil, name: String? = nil, uid: String? = nil) {
            
            self.name = name
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.uid = uid
            
            self.isDefault = isDefault
            
            self.currencies = currencies
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                iso2 = try container.decode(String.self, forKey: .iso2)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                iso3 = try container.decode(String.self, forKey: .iso3)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                uid = try container.decode(String.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currencies = try container.decode([CurrenciesSchema].self, forKey: .currencies)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(currencies, forKey: .currencies)
            
            
        }
        
    }
}
