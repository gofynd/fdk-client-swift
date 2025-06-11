

import Foundation
public extension PublicClient.Content {
    /*
        Model: SDKLinkObjectSchema
        Used By: Content
    */

    class SDKLinkObjectSchema: Codable {
        
        
        public var owner: String?
        
        public var repo: String?
        
        public var path: String?
        
        public var image: String?
        
        public var name: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case owner = "owner"
            
            case repo = "repo"
            
            case path = "path"
            
            case image = "image"
            
            case name = "name"
            
            case type = "type"
            
        }

        public init(image: String? = nil, name: String? = nil, owner: String? = nil, path: String? = nil, repo: String? = nil, type: String? = nil) {
            
            self.owner = owner
            
            self.repo = repo
            
            self.path = path
            
            self.image = image
            
            self.name = name
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    owner = try container.decode(String.self, forKey: .owner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    repo = try container.decode(String.self, forKey: .repo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    path = try container.decode(String.self, forKey: .path)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(owner, forKey: .owner)
            
            
            
            try? container.encodeIfPresent(repo, forKey: .repo)
            
            
            
            try? container.encodeIfPresent(path, forKey: .path)
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
