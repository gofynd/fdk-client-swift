

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ArticleSet
        Used By: Logistic
    */
    class ArticleSet: Codable {
        
        public var name: String
        
        public var quantity: Int
        
        public var sizeDistribution: ArticleSizeDistribution
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case quantity = "quantity"
            
            case sizeDistribution = "size_distribution"
            
        }

        public init(name: String, quantity: Int, sizeDistribution: ArticleSizeDistribution) {
            
            self.name = name
            
            self.quantity = quantity
            
            self.sizeDistribution = sizeDistribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
            
            quantity = try container.decode(Int.self, forKey: .quantity)
            
            
            
            
            sizeDistribution = try container.decode(ArticleSizeDistribution.self, forKey: .sizeDistribution)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
            
            
        }
        
    }
}
