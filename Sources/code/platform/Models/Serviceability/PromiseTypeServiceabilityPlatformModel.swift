

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PromiseType
        Used By: Serviceability
    */

    class PromiseType: Codable {
        
        
        public var displayName: String
        
        public var slug: String
        
        public var description: String
        
        public var isActive: Bool
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case slug = "slug"
            
            case description = "description"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
        }

        public init(description: String, displayName: String, isActive: Bool, isDefault: Bool, slug: String) {
            
            self.displayName = displayName
            
            self.slug = slug
            
            self.description = description
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PromiseType
        Used By: Serviceability
    */

    class PromiseType: Codable {
        
        
        public var displayName: String
        
        public var slug: String
        
        public var description: String
        
        public var isActive: Bool
        
        public var isDefault: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case slug = "slug"
            
            case description = "description"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
        }

        public init(description: String, displayName: String, isActive: Bool, isDefault: Bool, slug: String) {
            
            self.displayName = displayName
            
            self.slug = slug
            
            self.description = description
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}


