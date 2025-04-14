

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ArticleSet
        Used By: Logistic
    */
    class ArticleSet: Codable {
        
        public var name: String?
        
        public var quantity: Int?
        
        public var sizeDistribution: ArticleSizeDistribution?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case quantity = "quantity"
            
            case sizeDistribution = "size_distribution"
            
        }

        public init(name: String? = nil, quantity: Int? = nil, sizeDistribution: ArticleSizeDistribution? = nil) {
            
            self.name = name
            
            self.quantity = quantity
            
            self.sizeDistribution = sizeDistribution
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sizeDistribution = try container.decode(ArticleSizeDistribution.self, forKey: .sizeDistribution)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(sizeDistribution, forKey: .sizeDistribution)
            
            
        }
        
    }
}
