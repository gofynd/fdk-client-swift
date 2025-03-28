

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OverrideCartItemPromo
        Used By: Cart
    */

    class OverrideCartItemPromo: Codable {
        
        
        public var restrictions: [String: Any]?
        
        public var promoId: String
        
        public var promoAmount: String
        
        public var promoDesc: String?
        
        public var rwrdTndr: String?
        
        public var itemList: [[String: Any]]?
        
        public var parentPromoId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case restrictions = "restrictions"
            
            case promoId = "promo_id"
            
            case promoAmount = "promo_amount"
            
            case promoDesc = "promo_desc"
            
            case rwrdTndr = "rwrd_tndr"
            
            case itemList = "item_list"
            
            case parentPromoId = "parent_promo_id"
            
        }

        public init(itemList: [[String: Any]]? = nil, parentPromoId: String? = nil, promoAmount: String, promoDesc: String? = nil, promoId: String, restrictions: [String: Any]? = nil, rwrdTndr: String? = nil) {
            
            self.restrictions = restrictions
            
            self.promoId = promoId
            
            self.promoAmount = promoAmount
            
            self.promoDesc = promoDesc
            
            self.rwrdTndr = rwrdTndr
            
            self.itemList = itemList
            
            self.parentPromoId = parentPromoId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    restrictions = try container.decode([String: Any].self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoId = try container.decode(String.self, forKey: .promoId)
                
            
            
            
                promoAmount = try container.decode(String.self, forKey: .promoAmount)
                
            
            
            
                do {
                    promoDesc = try container.decode(String.self, forKey: .promoDesc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rwrdTndr = try container.decode(String.self, forKey: .rwrdTndr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemList = try container.decode([[String: Any]].self, forKey: .itemList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentPromoId = try container.decode(String.self, forKey: .parentPromoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(promoId, forKey: .promoId)
            
            
            
            
            try? container.encodeIfPresent(promoAmount, forKey: .promoAmount)
            
            
            
            
            try? container.encodeIfPresent(promoDesc, forKey: .promoDesc)
            
            
            
            
            try? container.encodeIfPresent(rwrdTndr, forKey: .rwrdTndr)
            
            
            
            
            try? container.encodeIfPresent(itemList, forKey: .itemList)
            
            
            
            
            try? container.encodeIfPresent(parentPromoId, forKey: .parentPromoId)
            
            
        }
        
    }
}


