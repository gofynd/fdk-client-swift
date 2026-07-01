

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ApplicationLanguageUpdate
        Used By: Content
    */

    class ApplicationLanguageUpdate: Codable {
        
        
        public var isDefault: Bool
        
        public var published: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case published = "published"
            
        }

        public init(isDefault: Bool, published: Bool) {
            
            self.isDefault = isDefault
            
            self.published = published
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ApplicationLanguageUpdate
        Used By: Content
    */

    class ApplicationLanguageUpdate: Codable {
        
        
        public var isDefault: Bool
        
        public var published: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isDefault = "is_default"
            
            case published = "published"
            
        }

        public init(isDefault: Bool, published: Bool) {
            
            self.isDefault = isDefault
            
            self.published = published
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
        }
        
    }
}


