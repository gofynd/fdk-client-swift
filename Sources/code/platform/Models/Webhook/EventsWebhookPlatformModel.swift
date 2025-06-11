

import Foundation


public extension PlatformClient.Webhook {
    /*
        Model: Events
        Used By: Webhook
    */

    class Events: Codable {
        
        
        public var slug: String?
        
        public var topic: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case topic = "topic"
            
        }

        public init(slug: String? = nil, topic: String? = nil) {
            
            self.slug = slug
            
            self.topic = topic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    topic = try container.decode(String.self, forKey: .topic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(topic, forKey: .topic)
            
            
        }
        
    }
}




