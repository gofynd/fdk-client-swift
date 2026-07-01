

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PlatformLocationArticle
        Used By: Serviceability
    */

    class PlatformLocationArticle: Codable {
        
        
        public var price: Double
        
        public var itemId: Int
        
        public var size: String
        
        public var quantity: Int
        
        public var parentItemIdentifiers: ParentItemIdentifiers?
        

        public enum CodingKeys: String, CodingKey {
            
            case price = "price"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case quantity = "quantity"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
        }

        public init(itemId: Int, parentItemIdentifiers: ParentItemIdentifiers? = nil, price: Double, quantity: Int, size: String) {
            
            self.price = price
            
            self.itemId = itemId
            
            self.size = size
            
            self.quantity = quantity
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                price = try container.decode(Double.self, forKey: .price)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    parentItemIdentifiers = try container.decode(ParentItemIdentifiers.self, forKey: .parentItemIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PlatformLocationArticle
        Used By: Serviceability
    */

    class PlatformLocationArticle: Codable {
        
        
        public var price: Double
        
        public var itemId: Int
        
        public var size: String
        
        public var quantity: Int
        
        public var parentItemIdentifiers: ParentItemIdentifiers?
        

        public enum CodingKeys: String, CodingKey {
            
            case price = "price"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case quantity = "quantity"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
        }

        public init(itemId: Int, parentItemIdentifiers: ParentItemIdentifiers? = nil, price: Double, quantity: Int, size: String) {
            
            self.price = price
            
            self.itemId = itemId
            
            self.size = size
            
            self.quantity = quantity
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                price = try container.decode(Double.self, forKey: .price)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    parentItemIdentifiers = try container.decode(ParentItemIdentifiers.self, forKey: .parentItemIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
        }
        
    }
}


