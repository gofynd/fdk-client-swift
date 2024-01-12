

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetCountry
        Used By: Logistic
    */
    class GetCountry: Codable {
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var timezones: [String]?
        
        public var hierarchy: [CountryHierarchy]?
        
        public var phoneCode: String?
        
        public var latitude: String?
        
        public var longitude: String?
        
        public var currency: CurrencyObject?
        
        public var type: String?
        
        public var fields: GetCountryFields?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case timezones = "timezones"
            
            case hierarchy = "hierarchy"
            
            case phoneCode = "phone_code"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case currency = "currency"
            
            case type = "type"
            
            case fields = "fields"
            
        }

        public init(currency: CurrencyObject? = nil, displayName: String? = nil, fields: GetCountryFields? = nil, hierarchy: [CountryHierarchy]? = nil, id: String? = nil, iso2: String? = nil, iso3: String? = nil, latitude: String? = nil, longitude: String? = nil, name: String? = nil, phoneCode: String? = nil, timezones: [String]? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.timezones = timezones
            
            self.hierarchy = hierarchy
            
            self.phoneCode = phoneCode
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.currency = currency
            
            self.type = type
            
            self.fields = fields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                displayName = try container.decode(String.self, forKey: .displayName)
            
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
                timezones = try container.decode([String].self, forKey: .timezones)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hierarchy = try container.decode([CountryHierarchy].self, forKey: .hierarchy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                phoneCode = try container.decode(String.self, forKey: .phoneCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latitude = try container.decode(String.self, forKey: .latitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longitude = try container.decode(String.self, forKey: .longitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(CurrencyObject.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fields = try container.decode(GetCountryFields.self, forKey: .fields)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            try? container.encodeIfPresent(timezones, forKey: .timezones)
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(fields, forKey: .fields)
            
            
        }
        
    }
}
