

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: LadderOfferItem
        Used By: Cart
    */
    class LadderOfferItem: Codable {
        
        public var price: LadderPrice?
        
        public var margin: Int?
        
        public var maxQuantity: Int?
        
        public var minQuantity: Int?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case price = "price"
            
            case margin = "margin"
            
            case maxQuantity = "max_quantity"
            
            case minQuantity = "min_quantity"
            
            case type = "type"
            
        }

        public init(margin: Int? = nil, maxQuantity: Int? = nil, minQuantity: Int? = nil, price: LadderPrice? = nil, type: String? = nil) {
            
            self.price = price
            
            self.margin = margin
            
            self.maxQuantity = maxQuantity
            
            self.minQuantity = minQuantity
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                price = try container.decode(LadderPrice.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                margin = try container.decode(Int.self, forKey: .margin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)
            
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
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(margin, forKey: .margin)
            
            
            
            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
            
            
            
            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
