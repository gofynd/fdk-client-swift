

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: AppliedPromotion
        Used By: Cart
    */

    class AppliedPromotion: Codable {
        
        
        public var articleQuantity: Int?
        
        public var ownership: Ownership2?
        
        public var discountRules: [DiscountRulesApp]?
        
        public var appliedFreeArticles: [AppliedFreeArticles]?
        
        public var promotionName: String?
        
        public var buyRules: [BuyRules]?
        
        public var offerText: String?
        
        public var amount: Double?
        
        public var promotionType: String?
        
        public var mrpPromotion: Bool?
        
        public var promotionGroup: String?
        
        public var promoId: String?
        
        public var meta: [String: Any]?
        
        public var code: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case articleQuantity = "article_quantity"
            
            case ownership = "ownership"
            
            case discountRules = "discount_rules"
            
            case appliedFreeArticles = "applied_free_articles"
            
            case promotionName = "promotion_name"
            
            case buyRules = "buy_rules"
            
            case offerText = "offer_text"
            
            case amount = "amount"
            
            case promotionType = "promotion_type"
            
            case mrpPromotion = "mrp_promotion"
            
            case promotionGroup = "promotion_group"
            
            case promoId = "promo_id"
            
            case meta = "meta"
            
            case code = "code"
            
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, code: String? = nil, discountRules: [DiscountRulesApp]? = nil, meta: [String: Any]? = nil, mrpPromotion: Bool? = nil, offerText: String? = nil, ownership: Ownership2? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            
            self.articleQuantity = articleQuantity
            
            self.ownership = ownership
            
            self.discountRules = discountRules
            
            self.appliedFreeArticles = appliedFreeArticles
            
            self.promotionName = promotionName
            
            self.buyRules = buyRules
            
            self.offerText = offerText
            
            self.amount = amount
            
            self.promotionType = promotionType
            
            self.mrpPromotion = mrpPromotion
            
            self.promotionGroup = promotionGroup
            
            self.promoId = promoId
            
            self.meta = meta
            
            self.code = code
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ownership = try container.decode(Ownership2.self, forKey: .ownership)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountRules = try container.decode([DiscountRulesApp].self, forKey: .discountRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedFreeArticles = try container.decode([AppliedFreeArticles].self, forKey: .appliedFreeArticles)
                
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
                    buyRules = try container.decode([BuyRules].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
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
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
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
                
            
            
                do {
                    promotionGroup = try container.decode(String.self, forKey: .promotionGroup)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)
            
            
            
            
            try? container.encodeIfPresent(promotionName, forKey: .promotionName)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
            
            
            
            
            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
            
            
            
            
            try? container.encodeIfPresent(promoId, forKey: .promoId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
        }
        
    }
}


