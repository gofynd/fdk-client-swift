

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetCountriesItems
        Used By: Serviceability
    */

    class GetCountriesItems: Codable {
        
        
        public var id: String?
        
        public var subType: String?
        
        public var uid: String?
        
        public var name: String?
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var timezones: [String]?
        
        public var hierarchy: [HierarchyItems]?
        
        public var phoneCode: String?
        
        public var currency: CurrencyObject?
        
        public var type: String?
        
        public var latitude: String?
        
        public var longitude: String?
        
        public var displayName: String?
        
        public var hasNextHierarchy: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case subType = "sub_type"
            
            case uid = "uid"
            
            case name = "name"
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case timezones = "timezones"
            
            case hierarchy = "hierarchy"
            
            case phoneCode = "phone_code"
            
            case currency = "currency"
            
            case type = "type"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case displayName = "display_name"
            
            case hasNextHierarchy = "has_next_hierarchy"
            
        }

        public init(currency: CurrencyObject? = nil, displayName: String? = nil, hasNextHierarchy: Bool? = nil, hierarchy: [HierarchyItems]? = nil, id: String? = nil, iso2: String? = nil, iso3: String? = nil, latitude: String? = nil, longitude: String? = nil, name: String? = nil, phoneCode: String? = nil, subType: String? = nil, timezones: [String]? = nil, type: String? = nil, uid: String? = nil) {
            
            self.id = id
            
            self.subType = subType
            
            self.uid = uid
            
            self.name = name
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.timezones = timezones
            
            self.hierarchy = hierarchy
            
            self.phoneCode = phoneCode
            
            self.currency = currency
            
            self.type = type
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.displayName = displayName
            
            self.hasNextHierarchy = hasNextHierarchy
            
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
                    subType = try container.decode(String.self, forKey: .subType)
                
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
                    timezones = try container.decode([String].self, forKey: .timezones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hierarchy = try container.decode([HierarchyItems].self, forKey: .hierarchy)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasNextHierarchy = try container.decode(Bool.self, forKey: .hasNextHierarchy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            
            try? container.encodeIfPresent(timezones, forKey: .timezones)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(hasNextHierarchy, forKey: .hasNextHierarchy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetCountriesItems
        Used By: Serviceability
    */

    class GetCountriesItems: Codable {
        
        
        public var id: String?
        
        public var subType: String?
        
        public var uid: String?
        
        public var name: String?
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var timezones: [String]?
        
        public var hierarchy: [HierarchyItems]?
        
        public var phoneCode: String?
        
        public var currency: CurrencyObject?
        
        public var type: String?
        
        public var latitude: String?
        
        public var longitude: String?
        
        public var displayName: String?
        
        public var hasNextHierarchy: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case subType = "sub_type"
            
            case uid = "uid"
            
            case name = "name"
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case timezones = "timezones"
            
            case hierarchy = "hierarchy"
            
            case phoneCode = "phone_code"
            
            case currency = "currency"
            
            case type = "type"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case displayName = "display_name"
            
            case hasNextHierarchy = "has_next_hierarchy"
            
        }

        public init(currency: CurrencyObject? = nil, displayName: String? = nil, hasNextHierarchy: Bool? = nil, hierarchy: [HierarchyItems]? = nil, id: String? = nil, iso2: String? = nil, iso3: String? = nil, latitude: String? = nil, longitude: String? = nil, name: String? = nil, phoneCode: String? = nil, subType: String? = nil, timezones: [String]? = nil, type: String? = nil, uid: String? = nil) {
            
            self.id = id
            
            self.subType = subType
            
            self.uid = uid
            
            self.name = name
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.timezones = timezones
            
            self.hierarchy = hierarchy
            
            self.phoneCode = phoneCode
            
            self.currency = currency
            
            self.type = type
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.displayName = displayName
            
            self.hasNextHierarchy = hasNextHierarchy
            
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
                    subType = try container.decode(String.self, forKey: .subType)
                
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
                    timezones = try container.decode([String].self, forKey: .timezones)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hierarchy = try container.decode([HierarchyItems].self, forKey: .hierarchy)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasNextHierarchy = try container.decode(Bool.self, forKey: .hasNextHierarchy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            
            try? container.encodeIfPresent(timezones, forKey: .timezones)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(hasNextHierarchy, forKey: .hasNextHierarchy)
            
            
        }
        
    }
}


