

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocationRuleValues
        Used By: Serviceability
    */

    class LocationRuleValues: Codable {
        
        
        public var uid: String
        
        public var subType: String?
        
        public var displayName: String?
        
        public var parentUid: String?
        
        public var parentId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case subType = "sub_type"
            
            case displayName = "display_name"
            
            case parentUid = "parent_uid"
            
            case parentId = "parent_id"
            
        }

        public init(displayName: String? = nil, parentId: [String]? = nil, parentUid: String? = nil, subType: String? = nil, uid: String) {
            
            self.uid = uid
            
            self.subType = subType
            
            self.displayName = displayName
            
            self.parentUid = parentUid
            
            self.parentId = parentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
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
                    parentUid = try container.decode(String.self, forKey: .parentUid)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocationRuleValues
        Used By: Serviceability
    */

    class LocationRuleValues: Codable {
        
        
        public var uid: String
        
        public var subType: String?
        
        public var displayName: String?
        
        public var parentUid: String?
        
        public var parentId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case subType = "sub_type"
            
            case displayName = "display_name"
            
            case parentUid = "parent_uid"
            
            case parentId = "parent_id"
            
        }

        public init(displayName: String? = nil, parentId: [String]? = nil, parentUid: String? = nil, subType: String? = nil, uid: String) {
            
            self.uid = uid
            
            self.subType = subType
            
            self.displayName = displayName
            
            self.parentUid = parentUid
            
            self.parentId = parentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
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
                    parentUid = try container.decode(String.self, forKey: .parentUid)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
        }
        
    }
}


