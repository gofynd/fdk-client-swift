

import Foundation


public extension PlatformClient.Content {
    /*
        Model: unPublishApplicationLanguage
        Used By: Content
    */

    class unPublishApplicationLanguage: Codable {
        
        
        public var published: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case published = "published"
            
        }

        public init(published: Bool) {
            
            self.published = published
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: unPublishApplicationLanguage
        Used By: Content
    */

    class unPublishApplicationLanguage: Codable {
        
        
        public var published: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case published = "published"
            
        }

        public init(published: Bool) {
            
            self.published = published
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
        }
        
    }
}


