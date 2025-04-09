

import Foundation


public extension PlatformClient.Content {
    /*
        Model: ResourceUISchema
        Used By: Content
    */

    class ResourceUISchema: Codable {
        
        
        public var author: Author?
        
        public var title: Title?
        
        public var featureImage: FeatureImage?
        
        public var seo: Seo?
        

        public enum CodingKeys: String, CodingKey {
            
            case author = "author"
            
            case title = "title"
            
            case featureImage = "feature_image"
            
            case seo = "seo"
            
        }

        public init(author: Author? = nil, featureImage: FeatureImage? = nil, seo: Seo? = nil, title: Title? = nil) {
            
            self.author = author
            
            self.title = title
            
            self.featureImage = featureImage
            
            self.seo = seo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    author = try container.decode(Author.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(Title.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    featureImage = try container.decode(FeatureImage.self, forKey: .featureImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(Seo.self, forKey: .seo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(featureImage, forKey: .featureImage)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: ResourceUISchema
        Used By: Content
    */

    class ResourceUISchema: Codable {
        
        
        public var author: Author?
        
        public var title: Title?
        
        public var featureImage: FeatureImage?
        
        public var seo: Seo?
        

        public enum CodingKeys: String, CodingKey {
            
            case author = "author"
            
            case title = "title"
            
            case featureImage = "feature_image"
            
            case seo = "seo"
            
        }

        public init(author: Author? = nil, featureImage: FeatureImage? = nil, seo: Seo? = nil, title: Title? = nil) {
            
            self.author = author
            
            self.title = title
            
            self.featureImage = featureImage
            
            self.seo = seo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    author = try container.decode(Author.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(Title.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    featureImage = try container.decode(FeatureImage.self, forKey: .featureImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    seo = try container.decode(Seo.self, forKey: .seo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(featureImage, forKey: .featureImage)
            
            
            
            
            try? container.encodeIfPresent(seo, forKey: .seo)
            
            
        }
        
    }
}


