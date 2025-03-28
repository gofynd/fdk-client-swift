

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Country
        Used By: Logistic
    */
    class Country: Codable {
        
        public var uid: String
        
        public var displayName: String
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String, uid: String) {
            
            self.uid = uid
            
            self.displayName = displayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            uid = try container.decode(String.self, forKey: .uid)
            
            
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}
