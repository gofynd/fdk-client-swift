

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OverrideCartItem
        Used By: Cart
    */

    class OverrideCartItem: Codable {
        
        
        public var sellerIdentifier: String?
        
        public var quantity: Int?
        
        public var size: String
        
        public var priceMarked: Double
        
        public var amountPaid: Double
        
        public var promoList: [OverrideCartItemPromo]?
        
        public var extraMeta: [String: Any]?
        
        public var itemId: Int
        
        public var discount: Double
        
        public var priceEffective: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerIdentifier = "seller_identifier"
            
            case quantity = "quantity"
            
            case size = "size"
            
            case priceMarked = "price_marked"
            
            case amountPaid = "amount_paid"
            
            case promoList = "promo_list"
            
            case extraMeta = "extra_meta"
            
            case itemId = "item_id"
            
            case discount = "discount"
            
            case priceEffective = "price_effective"
            
        }

        public init(amountPaid: Double, discount: Double, extraMeta: [String: Any]? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, promoList: [OverrideCartItemPromo]? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil, size: String) {
            
            self.sellerIdentifier = sellerIdentifier
            
            self.quantity = quantity
            
            self.size = size
            
            self.priceMarked = priceMarked
            
            self.amountPaid = amountPaid
            
            self.promoList = promoList
            
            self.extraMeta = extraMeta
            
            self.itemId = itemId
            
            self.discount = discount
            
            self.priceEffective = priceEffective
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
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
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                do {
                    promoList = try container.decode([OverrideCartItemPromo].self, forKey: .promoList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(promoList, forKey: .promoList)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
        }
        
    }
}


