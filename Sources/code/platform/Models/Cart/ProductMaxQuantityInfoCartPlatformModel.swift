

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ProductMaxQuantityInfo
        Used By: Cart
    */

    class ProductMaxQuantityInfo: Codable {
        
        
        public var item: Double?
        
        public var itemSeller: Double?
        
        public var itemStore: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case item = "item"
            
            case itemSeller = "item_seller"
            
            case itemStore = "item_store"
            
        }

        public init(item: Double? = nil, itemSeller: Double? = nil, itemStore: Double? = nil) {
            
            self.item = item
            
            self.itemSeller = itemSeller
            
            self.itemStore = itemStore
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    item = try container.decode(Double.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSeller = try container.decode(Double.self, forKey: .itemSeller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemStore = try container.decode(Double.self, forKey: .itemStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(itemSeller, forKey: .itemSeller)
            
            
            
            
            try? container.encodeIfPresent(itemStore, forKey: .itemStore)
            
            
        }
        
    }
}


