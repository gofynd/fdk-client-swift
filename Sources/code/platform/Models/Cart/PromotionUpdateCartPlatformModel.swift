

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionUpdate
        Used By: Cart
    */

    class PromotionUpdate: Codable {
        
        
        public var stackable: Bool?
        
        public var calculateOn: String?
        
        public var applyExclusive: String?
        
        public var reason: String?
        
        public var promoGroup: String
        
        public var mode: String
        
        public var applyAllDiscount: Bool?
        
        public var displayMeta: DisplayMeta1?
        
        public var ownership: Ownership1?
        
        public var promotionType: String
        
        public var discountRules: [DiscountRule]?
        
        public var restrictions: Restrictions1?
        
        public var currency: String?
        
        public var code: String?
        
        public var schedule: PromotionSchedule?
        
        public var postOrderAction: PromotionAction?
        
        public var applyPriority: Int?
        
        public var author: PromotionAuthor?
        
        public var visiblility: Visibility?
        
        public var applicationId: String
        
        public var buyRules: ItemCriteria?
        
        public var customJson: [String: Any]?
        
        public var dateMeta: PromotionDateMeta?
        
        public var tags: [String]?
        
        public var autoApply: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case stackable = "stackable"
            
            case calculateOn = "calculate_on"
            
            case applyExclusive = "apply_exclusive"
            
            case reason = "reason"
            
            case promoGroup = "promo_group"
            
            case mode = "mode"
            
            case applyAllDiscount = "apply_all_discount"
            
            case displayMeta = "display_meta"
            
            case ownership = "ownership"
            
            case promotionType = "promotion_type"
            
            case discountRules = "discount_rules"
            
            case restrictions = "restrictions"
            
            case currency = "currency"
            
            case code = "code"
            
            case schedule = "_schedule"
            
            case postOrderAction = "post_order_action"
            
            case applyPriority = "apply_priority"
            
            case author = "author"
            
            case visiblility = "visiblility"
            
            case applicationId = "application_id"
            
            case buyRules = "buy_rules"
            
            case customJson = "_custom_json"
            
            case dateMeta = "date_meta"
            
            case tags = "tags"
            
            case autoApply = "auto_apply"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, autoApply: Bool? = nil, buyRules: ItemCriteria? = nil, calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule]? = nil, displayMeta: DisplayMeta1? = nil, mode: String, ownership: Ownership1? = nil, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, reason: String? = nil, restrictions: Restrictions1? = nil, stackable: Bool? = nil, tags: [String]? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            
            self.stackable = stackable
            
            self.calculateOn = calculateOn
            
            self.applyExclusive = applyExclusive
            
            self.reason = reason
            
            self.promoGroup = promoGroup
            
            self.mode = mode
            
            self.applyAllDiscount = applyAllDiscount
            
            self.displayMeta = displayMeta
            
            self.ownership = ownership
            
            self.promotionType = promotionType
            
            self.discountRules = discountRules
            
            self.restrictions = restrictions
            
            self.currency = currency
            
            self.code = code
            
            self.schedule = schedule
            
            self.postOrderAction = postOrderAction
            
            self.applyPriority = applyPriority
            
            self.author = author
            
            self.visiblility = visiblility
            
            self.applicationId = applicationId
            
            self.buyRules = buyRules
            
            self.customJson = customJson
            
            self.dateMeta = dateMeta
            
            self.tags = tags
            
            self.autoApply = autoApply
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
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
                
            
            
                do {
                    schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                do {
                    buyRules = try container.decode(ItemCriteria.self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoApply = try container.decode(Bool.self, forKey: .autoApply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
            
            
        }
        
    }
}


