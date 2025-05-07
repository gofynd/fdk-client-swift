

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: PostBoostAttribute
        Used By: Catalog
    */

    class PostBoostAttribute: Codable {
        
        
        public var attribute: String
        
        public var value: String
        
        public var strength: Int
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case attribute = "attribute"
            
            case value = "value"
            
            case strength = "strength"
            
            case action = "action"
            
        }

        public init(action: String, attribute: String, strength: Int, value: String) {
            
            self.attribute = attribute
            
            self.value = value
            
            self.strength = strength
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                attribute = try container.decode(String.self, forKey: .attribute)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                strength = try container.decode(Int.self, forKey: .strength)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(strength, forKey: .strength)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: PostBoostAttribute
        Used By: Catalog
    */

    class PostBoostAttribute: Codable {
        
        
        public var attribute: String
        
        public var value: String
        
        public var strength: Int
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case attribute = "attribute"
            
            case value = "value"
            
            case strength = "strength"
            
            case action = "action"
            
        }

        public init(action: String, attribute: String, strength: Int, value: String) {
            
            self.attribute = attribute
            
            self.value = value
            
            self.strength = strength
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                attribute = try container.decode(String.self, forKey: .attribute)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                strength = try container.decode(Int.self, forKey: .strength)
                
            
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(strength, forKey: .strength)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}


