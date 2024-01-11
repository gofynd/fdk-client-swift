

import Foundation


public extension PlatformClient.Content {
    /*
        Model: Detail
        Used By: Content
    */

    class Detail: Codable {
        
        
        public var title: String?
        
        public var description: String?
        
        public var imageUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case imageUrl = "image_url"
            
        }

        public init(description: String? = nil, imageUrl: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.description = description
            
            self.imageUrl = imageUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageUrl = try container.decode(String.self, forKey: .imageUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(imageUrl, forKey: .imageUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: Detail
        Used By: Content
    */

    class Detail: Codable {
        
        
        public var title: String?
        
        public var description: String?
        
        public var imageUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case description = "description"
            
            case imageUrl = "image_url"
            
        }

        public init(description: String? = nil, imageUrl: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.description = description
            
            self.imageUrl = imageUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    imageUrl = try container.decode(String.self, forKey: .imageUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(imageUrl, forKey: .imageUrl)
            
            
        }
        
    }
}


