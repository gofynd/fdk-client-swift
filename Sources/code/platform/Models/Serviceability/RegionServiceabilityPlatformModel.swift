

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: Region
        Used By: Serviceability
    */

    class Region: Codable {
        
        
        public var uid: String
        
        public var displayName: String
        
        public var subType: String
        
        public var parentId: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
            case subType = "sub_type"
            
            case parentId = "parent_id"
            
        }

        public init(displayName: String, parentId: [String], subType: String, uid: String) {
            
            self.uid = uid
            
            self.displayName = displayName
            
            self.subType = subType
            
            self.parentId = parentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                parentId = try container.decode([String].self, forKey: .parentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: Region
        Used By: Serviceability
    */

    class Region: Codable {
        
        
        public var uid: String
        
        public var displayName: String
        
        public var subType: String
        
        public var parentId: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
            case subType = "sub_type"
            
            case parentId = "parent_id"
            
        }

        public init(displayName: String, parentId: [String], subType: String, uid: String) {
            
            self.uid = uid
            
            self.displayName = displayName
            
            self.subType = subType
            
            self.parentId = parentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                parentId = try container.decode([String].self, forKey: .parentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
        }
        
    }
}


