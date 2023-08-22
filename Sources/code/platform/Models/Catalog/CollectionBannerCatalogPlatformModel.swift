

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionBanner
        Used By: Catalog
    */

    class CollectionBanner: Codable {
        
        
        public var landscape: CollectionImage
        
        public var portrait: CollectionImage
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: CollectionImage, portrait: CollectionImage) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                landscape = try container.decode(CollectionImage.self, forKey: .landscape)
                
            
            
            
                portrait = try container.decode(CollectionImage.self, forKey: .portrait)
                
            
            
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
        Model: CollectionBanner
        Used By: Catalog
    */

    class CollectionBanner: Codable {
        
        
        public var landscape: CollectionImage
        
        public var portrait: CollectionImage
        

        public enum CodingKeys: String, CodingKey {
            
            case landscape = "landscape"
            
            case portrait = "portrait"
            
        }

        public init(landscape: CollectionImage, portrait: CollectionImage) {
            
            self.landscape = landscape
            
            self.portrait = portrait
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                landscape = try container.decode(CollectionImage.self, forKey: .landscape)
                
            
            
            
                portrait = try container.decode(CollectionImage.self, forKey: .portrait)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
        }
        
    }
}


