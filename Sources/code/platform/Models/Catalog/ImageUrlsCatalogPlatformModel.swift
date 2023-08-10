

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ImageUrls
        Used By: Catalog
    */

    class ImageUrls: Codable {
        
        
        public var landscape: BannerImage?
        
        public var portrait: BannerImage?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: BannerImage? = nil, portrait: BannerImage? = nil) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landscape = try container.decode(BannerImage.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portrait = try container.decode(BannerImage.self, forKey: .portrait)
                
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
        Model: ImageUrls
        Used By: Catalog
    */

    class ImageUrls: Codable {
        
        
        public var landscape: BannerImage?
        
        public var portrait: BannerImage?
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: BannerImage? = nil, portrait: BannerImage? = nil) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landscape = try container.decode(BannerImage.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    portrait = try container.decode(BannerImage.self, forKey: .portrait)
                
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


