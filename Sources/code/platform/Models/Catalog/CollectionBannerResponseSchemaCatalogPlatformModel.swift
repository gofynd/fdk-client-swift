

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionBannerResponseSchema
        Used By: Catalog
    */

    class CollectionBannerResponseSchema: Codable {
        
        
        public var landscape: CollectionImageResponseSchema?
        
        public var portrait: CollectionImageResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: CollectionImageResponseSchema? = nil, portrait: CollectionImageResponseSchema? = nil) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landscape = try container.decode(CollectionImageResponseSchema.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portrait = try container.decode(CollectionImageResponseSchema.self, forKey: .portrait)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionBannerResponseSchema
        Used By: Catalog
    */

    class CollectionBannerResponseSchema: Codable {
        
        
        public var landscape: CollectionImageResponseSchema?
        
        public var portrait: CollectionImageResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: CollectionImageResponseSchema? = nil, portrait: CollectionImageResponseSchema? = nil) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landscape = try container.decode(CollectionImageResponseSchema.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portrait = try container.decode(CollectionImageResponseSchema.self, forKey: .portrait)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
        }
        
    }
}


