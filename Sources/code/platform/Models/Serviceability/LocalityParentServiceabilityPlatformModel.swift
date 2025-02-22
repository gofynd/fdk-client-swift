

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocalityParent
        Used By: Serviceability
    */

    class LocalityParent: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var meta: [String: Any]?
        
        public var parentIds: [String]?
        
        public var type: String?
        
        public var serviceability: [String: Any]?
        
        public var parentUid: String?
        
        public var code: String?
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var currency: [String: Any]?
        
        public var phoneCode: String?
        
        public var hierarchy: [String: Any]?
        
        public var latitude: String?
        
        public var longitude: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case meta = "meta"
            
            case parentIds = "parent_ids"
            
            case type = "type"
            
            case serviceability = "serviceability"
            
            case parentUid = "parent_uid"
            
            case code = "code"
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case currency = "currency"
            
            case phoneCode = "phone_code"
            
            case hierarchy = "hierarchy"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
        }

        public init(code: String? = nil, currency: [String: Any]? = nil, displayName: String? = nil, hierarchy: [String: Any]? = nil, id: String? = nil, iso2: String? = nil, iso3: String? = nil, latitude: String? = nil, longitude: String? = nil, meta: [String: Any]? = nil, name: String? = nil, parentIds: [String]? = nil, parentUid: String? = nil, phoneCode: String? = nil, serviceability: [String: Any]? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.meta = meta
            
            self.parentIds = parentIds
            
            self.type = type
            
            self.serviceability = serviceability
            
            self.parentUid = parentUid
            
            self.code = code
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.currency = currency
            
            self.phoneCode = phoneCode
            
            self.hierarchy = hierarchy
            
            self.latitude = latitude
            
            self.longitude = longitude
            
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentIds = try container.decode([String].self, forKey: .parentIds)
                
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
                    serviceability = try container.decode([String: Any].self, forKey: .serviceability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentUid = try container.decode(String.self, forKey: .parentUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                    currency = try container.decode([String: Any].self, forKey: .currency)
                
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
                    hierarchy = try container.decode([String: Any].self, forKey: .hierarchy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(serviceability, forKey: .serviceability)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocalityParent
        Used By: Serviceability
    */

    class LocalityParent: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var meta: [String: Any]?
        
        public var parentIds: [String]?
        
        public var type: String?
        
        public var serviceability: [String: Any]?
        
        public var parentUid: String?
        
        public var code: String?
        
        public var iso2: String?
        
        public var iso3: String?
        
        public var currency: [String: Any]?
        
        public var phoneCode: String?
        
        public var hierarchy: [String: Any]?
        
        public var latitude: String?
        
        public var longitude: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case meta = "meta"
            
            case parentIds = "parent_ids"
            
            case type = "type"
            
            case serviceability = "serviceability"
            
            case parentUid = "parent_uid"
            
            case code = "code"
            
            case iso2 = "iso2"
            
            case iso3 = "iso3"
            
            case currency = "currency"
            
            case phoneCode = "phone_code"
            
            case hierarchy = "hierarchy"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
        }

        public init(code: String? = nil, currency: [String: Any]? = nil, displayName: String? = nil, hierarchy: [String: Any]? = nil, id: String? = nil, iso2: String? = nil, iso3: String? = nil, latitude: String? = nil, longitude: String? = nil, meta: [String: Any]? = nil, name: String? = nil, parentIds: [String]? = nil, parentUid: String? = nil, phoneCode: String? = nil, serviceability: [String: Any]? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.meta = meta
            
            self.parentIds = parentIds
            
            self.type = type
            
            self.serviceability = serviceability
            
            self.parentUid = parentUid
            
            self.code = code
            
            self.iso2 = iso2
            
            self.iso3 = iso3
            
            self.currency = currency
            
            self.phoneCode = phoneCode
            
            self.hierarchy = hierarchy
            
            self.latitude = latitude
            
            self.longitude = longitude
            
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentIds = try container.decode([String].self, forKey: .parentIds)
                
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
                    serviceability = try container.decode([String: Any].self, forKey: .serviceability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentUid = try container.decode(String.self, forKey: .parentUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                    currency = try container.decode([String: Any].self, forKey: .currency)
                
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
                    hierarchy = try container.decode([String: Any].self, forKey: .hierarchy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(serviceability, forKey: .serviceability)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(iso2, forKey: .iso2)
            
            
            
            
            try? container.encodeIfPresent(iso3, forKey: .iso3)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
        }
        
    }
}


