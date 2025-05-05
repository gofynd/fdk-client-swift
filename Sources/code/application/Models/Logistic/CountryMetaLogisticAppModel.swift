

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: CountryMeta
        Used By: Logistic
    */
    class CountryMeta: Codable {
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var currency: CurrencyObject?
        
        public var phoneCode: String?
        
        public var parentId: String?
        
        public var zone: String?
        
        public var deliverables: [String]?
        
        public var hierarchy: [CountryHierarchy]?
        
        public var latitude: String?
        
        public var longitude: String?
        
        public var countryCode: String?
        
        public var isdCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case currency = "currency"
            
            case phoneCode = "phone_code"
            
            case parentId = "parent_id"
            
            case zone = "zone"
            
            case deliverables = "deliverables"
            
            case hierarchy = "hierarchy"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case countryCode = "country_code"
            
            case isdCode = "isd_code"
            
        }

        public init(countryCode: String? = nil, currency: CurrencyObject? = nil, deliverables: [String]? = nil, hierarchy: [CountryHierarchy]? = nil, isdCode: String? = nil, iso2: String? = nil, iso3: String? = nil, latitude: String? = nil, longitude: String? = nil, parentId: String? = nil, phoneCode: String? = nil, zone: String? = nil) {
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.currency = currency
            
            self.phoneCode = phoneCode
            
            self.parentId = parentId
            
            self.zone = zone
            
            self.deliverables = deliverables
            
            self.hierarchy = hierarchy
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.countryCode = countryCode
            
            self.isdCode = isdCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                currency = try container.decode(CurrencyObject.self, forKey: .currency)
            
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
                parentId = try container.decode(String.self, forKey: .parentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                zone = try container.decode(String.self, forKey: .zone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliverables = try container.decode([String].self, forKey: .deliverables)
            
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
                countryCode = try container.decode(String.self, forKey: .countryCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isdCode = try container.decode(String.self, forKey: .isdCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            try? container.encodeIfPresent(deliverables, forKey: .deliverables)
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(isdCode, forKey: .isdCode)
            
            
        }
        
    }
}
