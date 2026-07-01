

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ArticleSizeDistribution
        Used By: Serviceability
    */

    class ArticleSizeDistribution: Codable {
        
        
        public var sizes: [SetSize]
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
        }

        public init(sizes: [SetSize]) {
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sizes = try container.decode([SetSize].self, forKey: .sizes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ArticleSizeDistribution
        Used By: Serviceability
    */

    class ArticleSizeDistribution: Codable {
        
        
        public var sizes: [SetSize]
        

        public enum CodingKeys: String, CodingKey {
            
            case sizes = "sizes"
            
        }

        public init(sizes: [SetSize]) {
            
            self.sizes = sizes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                sizes = try container.decode([SetSize].self, forKey: .sizes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
        }
        
    }
}


