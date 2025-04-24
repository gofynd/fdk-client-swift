

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: LocationPriceRequestSchema
        Used By: Catalog
    */

    class LocationPriceRequestSchema: Codable {
        
        
        public var priceEffective: Double
        
        public var priceMarked: Double
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case tags = "tags"
            
        }

        public init(priceEffective: Double, priceMarked: Double, tags: [String]? = nil) {
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: LocationPriceRequestSchema
        Used By: Catalog
    */

    class LocationPriceRequestSchema: Codable {
        
        
        public var priceEffective: Double
        
        public var priceMarked: Double
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case tags = "tags"
            
        }

        public init(priceEffective: Double, priceMarked: Double, tags: [String]? = nil) {
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}


