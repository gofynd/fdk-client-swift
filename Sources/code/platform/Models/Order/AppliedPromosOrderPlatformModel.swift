

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AppliedPromos
        Used By: Order
    */

    class AppliedPromos: Codable {
        
        
        public var promotionType: String?
        
        public var promotionName: String?
        
        public var discountRules: [DiscountRules]?
        
        public var amount: Double?
        
        public var articleQuantity: Int?
        
        public var buyRules: [BuyRules]?
        
        public var promoId: String?
        
        public var mrpPromotion: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionType = "promotion_type"
            
            case promotionName = "promotion_name"
            
            case discountRules = "discount_rules"
            
            case amount = "amount"
            
            case articleQuantity = "article_quantity"
            
            case buyRules = "buy_rules"
            
            case promoId = "promo_id"
            
            case mrpPromotion = "mrp_promotion"
            
        }

        public init(amount: Double? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRules]? = nil, mrpPromotion: Bool? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            
            self.promotionType = promotionType
            
            self.promotionName = promotionName
            
            self.discountRules = discountRules
            
            self.amount = amount
            
            self.articleQuantity = articleQuantity
            
            self.buyRules = buyRules
            
            self.promoId = promoId
            
            self.mrpPromotion = mrpPromotion
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionName = try container.decode(String.self, forKey: .promotionName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountRules = try container.decode([DiscountRules].self, forKey: .discountRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyRules = try container.decode([BuyRules].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoId = try container.decode(String.self, forKey: .promoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encode(promotionName, forKey: .promotionName)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encode(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encode(promoId, forKey: .promoId)
            
            
            
            
            try? container.encode(mrpPromotion, forKey: .mrpPromotion)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AppliedPromos
        Used By: Order
    */

    class AppliedPromos: Codable {
        
        
        public var promotionType: String?
        
        public var promotionName: String?
        
        public var discountRules: [DiscountRules]?
        
        public var amount: Double?
        
        public var articleQuantity: Int?
        
        public var buyRules: [BuyRules]?
        
        public var promoId: String?
        
        public var mrpPromotion: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionType = "promotion_type"
            
            case promotionName = "promotion_name"
            
            case discountRules = "discount_rules"
            
            case amount = "amount"
            
            case articleQuantity = "article_quantity"
            
            case buyRules = "buy_rules"
            
            case promoId = "promo_id"
            
            case mrpPromotion = "mrp_promotion"
            
        }

        public init(amount: Double? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRules]? = nil, mrpPromotion: Bool? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            
            self.promotionType = promotionType
            
            self.promotionName = promotionName
            
            self.discountRules = discountRules
            
            self.amount = amount
            
            self.articleQuantity = articleQuantity
            
            self.buyRules = buyRules
            
            self.promoId = promoId
            
            self.mrpPromotion = mrpPromotion
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionName = try container.decode(String.self, forKey: .promotionName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountRules = try container.decode([DiscountRules].self, forKey: .discountRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyRules = try container.decode([BuyRules].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoId = try container.decode(String.self, forKey: .promoId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encode(promotionName, forKey: .promotionName)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encode(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encode(promoId, forKey: .promoId)
            
            
            
            
            try? container.encode(mrpPromotion, forKey: .mrpPromotion)
            
            
        }
        
    }
}


