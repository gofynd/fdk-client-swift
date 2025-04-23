

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneMappingRegions
        Used By: Serviceability
    */

    class ZoneMappingRegions: Codable {
        
        
        public var displayName: String?
        
        public var parentId: [String]?
        
        public var parentUid: String?
        
        public var subType: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case parentId = "parent_id"
            
            case parentUid = "parent_uid"
            
            case subType = "sub_type"
            
            case uid = "uid"
            
        }

        public init(displayName: String? = nil, parentId: [String]? = nil, parentUid: String? = nil, subType: String? = nil, uid: String? = nil) {
            
            self.displayName = displayName
            
            self.parentId = parentId
            
            self.parentUid = parentUid
            
            self.subType = subType
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneMappingRegions
        Used By: Serviceability
    */

    class ZoneMappingRegions: Codable {
        
        
        public var displayName: String?
        
        public var parentId: [String]?
        
        public var parentUid: String?
        
        public var subType: String?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case parentId = "parent_id"
            
            case parentUid = "parent_uid"
            
            case subType = "sub_type"
            
            case uid = "uid"
            
        }

        public init(displayName: String? = nil, parentId: [String]? = nil, parentUid: String? = nil, subType: String? = nil, uid: String? = nil) {
            
            self.displayName = displayName
            
            self.parentId = parentId
            
            self.parentUid = parentUid
            
            self.subType = subType
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


