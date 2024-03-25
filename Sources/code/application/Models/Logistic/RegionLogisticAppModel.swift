

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Region
        Used By: Logistic
    */
    class Region: Codable {
        
        public var uid: String
        
        public var displayName: String
        
        public var subType: String
        
        public var parentId: [String]
        
        public var parentUid: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
            case subType = "sub_type"
            
            case parentId = "parent_id"
            
            case parentUid = "parent_uid"
            
        }

        public init(displayName: String, parentId: [String], parentUid: String, subType: String, uid: String) {
            
            self.uid = uid
            
            self.displayName = displayName
            
            self.subType = subType
            
            self.parentId = parentId
            
            self.parentUid = parentUid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            uid = try container.decode(String.self, forKey: .uid)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            subType = try container.decode(String.self, forKey: .subType)
            
            
            
            
            parentId = try container.decode([String].self, forKey: .parentId)
            
            
            
            
            parentUid = try container.decode(String.self, forKey: .parentUid)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
        }
        
    }
}
