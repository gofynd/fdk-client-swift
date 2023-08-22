

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: AppliedPromotion
        Used By: PosCart
    */
    class AppliedPromotion: Codable {
        
        public var promotionName: String?
        
        public var mrpPromotion: Bool?
        
        public var buyRules: [BuyRules]?
        
        public var promotionType: String?
        
        public var articleQuantity: Int?
        
        public var amount: Double?
        
        public var discountRules: [DiscountRulesApp]?
        
        public var offerText: String?
        
        public var promoId: String?
        
        public var appliedFreeArticles: [AppliedFreeArticles]?
        
        public var ownership: Ownership?
        
        public var promotionGroup: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionName = "promotion_name"
            
            case mrpPromotion = "mrp_promotion"
            
            case buyRules = "buy_rules"
            
            case promotionType = "promotion_type"
            
            case articleQuantity = "article_quantity"
            
            case amount = "amount"
            
            case discountRules = "discount_rules"
            
            case offerText = "offer_text"
            
            case promoId = "promo_id"
            
            case appliedFreeArticles = "applied_free_articles"
            
            case ownership = "ownership"
            
            case promotionGroup = "promotion_group"
            
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRulesApp]? = nil, mrpPromotion: Bool? = nil, offerText: String? = nil, ownership: Ownership? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            
            self.promotionName = promotionName
            
            self.mrpPromotion = mrpPromotion
            
            self.buyRules = buyRules
            
            self.promotionType = promotionType
            
            self.articleQuantity = articleQuantity
            
            self.amount = amount
            
            self.discountRules = discountRules
            
            self.offerText = offerText
            
            self.promoId = promoId
            
            self.appliedFreeArticles = appliedFreeArticles
            
            self.ownership = ownership
            
            self.promotionGroup = promotionGroup
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                promotionName = try container.decode(String.self, forKey: .promotionName)
            
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
                buyRules = try container.decode([BuyRules].self, forKey: .buyRules)
            
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
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)
            
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
                discountRules = try container.decode([DiscountRulesApp].self, forKey: .discountRules)
            
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
                promoId = try container.decode(String.self, forKey: .promoId)
            
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
                ownership = try container.decode(Ownership.self, forKey: .ownership)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(promotionName, forKey: .promotionName)
            
            
            
            
            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(promoId, forKey: .promoId)
            
            
            
            
            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
            
            
        }
        
    }
}
