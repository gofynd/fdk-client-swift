

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Localities
        Used By: Serviceability
    */

    class Localities: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var parentIds: [String]?
        
        public var meta: [String: Any]?
        
        public var type: String?
        
        public var latLong: PincodeLatLongData?
        
        public var parentUid: String?
        
        public var localities: [LocalityParent]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case parentIds = "parent_ids"
            
            case meta = "meta"
            
            case type = "type"
            
            case latLong = "lat_long"
            
            case parentUid = "parent_uid"
            
            case localities = "localities"
            
        }

        public init(displayName: String? = nil, id: String? = nil, latLong: PincodeLatLongData? = nil, localities: [LocalityParent]? = nil, meta: [String: Any]? = nil, name: String? = nil, parentIds: [String]? = nil, parentUid: String? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.parentIds = parentIds
            
            self.meta = meta
            
            self.type = type
            
            self.latLong = latLong
            
            self.parentUid = parentUid
            
            self.localities = localities
            
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
                    parentIds = try container.decode([String].self, forKey: .parentIds)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latLong = try container.decode(PincodeLatLongData.self, forKey: .latLong)
                
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
                    localities = try container.decode([LocalityParent].self, forKey: .localities)
                
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
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(localities, forKey: .localities)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Localities
        Used By: Serviceability
    */

    class Localities: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var parentIds: [String]?
        
        public var meta: [String: Any]?
        
        public var type: String?
        
        public var latLong: PincodeLatLongData?
        
        public var parentUid: String?
        
        public var localities: [LocalityParent]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case parentIds = "parent_ids"
            
            case meta = "meta"
            
            case type = "type"
            
            case latLong = "lat_long"
            
            case parentUid = "parent_uid"
            
            case localities = "localities"
            
        }

        public init(displayName: String? = nil, id: String? = nil, latLong: PincodeLatLongData? = nil, localities: [LocalityParent]? = nil, meta: [String: Any]? = nil, name: String? = nil, parentIds: [String]? = nil, parentUid: String? = nil, type: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.parentIds = parentIds
            
            self.meta = meta
            
            self.type = type
            
            self.latLong = latLong
            
            self.parentUid = parentUid
            
            self.localities = localities
            
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
                    parentIds = try container.decode([String].self, forKey: .parentIds)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latLong = try container.decode(PincodeLatLongData.self, forKey: .latLong)
                
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
                    localities = try container.decode([LocalityParent].self, forKey: .localities)
                
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
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(localities, forKey: .localities)
            
            
        }
        
    }
}


