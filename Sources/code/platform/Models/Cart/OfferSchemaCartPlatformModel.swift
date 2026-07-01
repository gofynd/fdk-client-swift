

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferSchema
        Used By: Cart
    */

    class OfferSchema: Codable {
        
        
        public var id: String?
        
        public var mode: String
        
        public var autoApply: Bool?
        
        public var applicationId: String?
        
        public var companyId: String?
        
        public var discountRules: [OfferDiscountRule]?
        
        public var buyRules: [String: OfferItemCriteria]?
        
        public var restrictions: OfferRestrictions?
        
        public var displayMeta: OfferDisplayMeta
        
        public var ownership: OfferOwnership?
        
        public var author: OfferAuthor?
        
        public var dateMeta: OfferDateMeta?
        
        public var schedule: OfferSchedule?
        
        public var customJson: [String: Any]?
        
        public var stackable: Bool?
        
        public var status: String
        
        public var published: Bool
        
        public var type: String
        
        public var priority: Int?
        
        public var isExclusiveCoupon: Bool?
        
        public var applyExclusive: String?
        
        public var calculateOn: String?
        
        public var promoGroup: String?
        
        public var currency: String?
        
        public var code: String?
        
        public var couponConfig: OfferCouponConfiguration?
        
        public var isProcessed: Bool?
        
        public var isBankOffer: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case mode = "mode"
            
            case autoApply = "auto_apply"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case discountRules = "discount_rules"
            
            case buyRules = "buy_rules"
            
            case restrictions = "restrictions"
            
            case displayMeta = "display_meta"
            
            case ownership = "ownership"
            
            case author = "author"
            
            case dateMeta = "date_meta"
            
            case schedule = "_schedule"
            
            case customJson = "_custom_json"
            
            case stackable = "stackable"
            
            case status = "status"
            
            case published = "published"
            
            case type = "type"
            
            case priority = "priority"
            
            case isExclusiveCoupon = "is_exclusive_coupon"
            
            case applyExclusive = "apply_exclusive"
            
            case calculateOn = "calculate_on"
            
            case promoGroup = "promo_group"
            
            case currency = "currency"
            
            case code = "code"
            
            case couponConfig = "coupon_config"
            
            case isProcessed = "is_processed"
            
            case isBankOffer = "is_bank_offer"
            
        }

        public init(applicationId: String? = nil, applyExclusive: String? = nil, author: OfferAuthor? = nil, autoApply: Bool? = nil, buyRules: [String: OfferItemCriteria]? = nil, calculateOn: String? = nil, code: String? = nil, companyId: String? = nil, couponConfig: OfferCouponConfiguration? = nil, currency: String? = nil, dateMeta: OfferDateMeta? = nil, discountRules: [OfferDiscountRule]? = nil, displayMeta: OfferDisplayMeta, isBankOffer: Bool? = nil, isExclusiveCoupon: Bool? = nil, isProcessed: Bool? = nil, mode: String, ownership: OfferOwnership? = nil, priority: Int? = nil, promoGroup: String? = nil, published: Bool, restrictions: OfferRestrictions? = nil, stackable: Bool? = nil, status: String, type: String, customJson: [String: Any]? = nil, id: String? = nil, schedule: OfferSchedule? = nil) {
            
            self.id = id
            
            self.mode = mode
            
            self.autoApply = autoApply
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.discountRules = discountRules
            
            self.buyRules = buyRules
            
            self.restrictions = restrictions
            
            self.displayMeta = displayMeta
            
            self.ownership = ownership
            
            self.author = author
            
            self.dateMeta = dateMeta
            
            self.schedule = schedule
            
            self.customJson = customJson
            
            self.stackable = stackable
            
            self.status = status
            
            self.published = published
            
            self.type = type
            
            self.priority = priority
            
            self.isExclusiveCoupon = isExclusiveCoupon
            
            self.applyExclusive = applyExclusive
            
            self.calculateOn = calculateOn
            
            self.promoGroup = promoGroup
            
            self.currency = currency
            
            self.code = code
            
            self.couponConfig = couponConfig
            
            self.isProcessed = isProcessed
            
            self.isBankOffer = isBankOffer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    autoApply = try container.decode(Bool.self, forKey: .autoApply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountRules = try container.decode([OfferDiscountRule].self, forKey: .discountRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyRules = try container.decode([String: OfferItemCriteria].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(OfferRestrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(OfferDisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                do {
                    ownership = try container.decode(OfferOwnership.self, forKey: .ownership)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(OfferAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateMeta = try container.decode(OfferDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(OfferSchedule.self, forKey: .schedule)
                
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
                    stackable = try container.decode(Bool.self, forKey: .stackable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isExclusiveCoupon = try container.decode(Bool.self, forKey: .isExclusiveCoupon)
                
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
                    calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
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
                    couponConfig = try container.decode(OfferCouponConfiguration.self, forKey: .couponConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isProcessed = try container.decode(Bool.self, forKey: .isProcessed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isBankOffer = try container.decode(Bool.self, forKey: .isBankOffer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(isExclusiveCoupon, forKey: .isExclusiveCoupon)
            
            
            
            
            try? container.encodeIfPresent(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(couponConfig, forKey: .couponConfig)
            
            
            
            
            try? container.encodeIfPresent(isProcessed, forKey: .isProcessed)
            
            
            
            
            try? container.encodeIfPresent(isBankOffer, forKey: .isBankOffer)
            
            
        }
        
    }
}


