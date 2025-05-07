

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionAddResult
        Used By: Cart
    */

    class PromotionAddResult: Codable {
        
        
        public var draft: Double?
        
        public var review: Double?
        
        public var rejected: Double?
        
        public var approved: Double?
        
        public var offerCounts: Double?
        
        public var offerPrefix: String?
        
        public var isBankOffer: Bool?
        
        public var customContent: [String: Any]?
        
        public var medias: [Media]?
        
        public var offerType: String?
        
        public var visibility: Visibility?
        
        public var isArchived: Bool?
        
        public var stackable: Bool?
        
        public var calculateOn: String?
        
        public var applyExclusive: String?
        
        public var promoGroup: String
        
        public var mode: String
        
        public var isProcessed: Bool?
        
        public var applyAllDiscount: Bool?
        
        public var displayMeta: DisplayMeta1?
        
        public var ownership: Ownership?
        
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
        
        public var buyRules: [String: ItemCriteria]?
        
        public var customJson: [String: Any]?
        
        public var dateMeta: PromotionDateMeta?
        
        public var indexedCriteria: [PromoIndexedCriteria]?
        
        public var tags: [String]?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case draft = "draft"
            
            case review = "review"
            
            case rejected = "rejected"
            
            case approved = "approved"
            
            case offerCounts = "offer_counts"
            
            case offerPrefix = "offer_prefix"
            
            case isBankOffer = "is_bank_offer"
            
            case customContent = "custom_content"
            
            case medias = "medias"
            
            case offerType = "offer_type"
            
            case visibility = "visibility"
            
            case isArchived = "is_archived"
            
            case stackable = "stackable"
            
            case calculateOn = "calculate_on"
            
            case applyExclusive = "apply_exclusive"
            
            case promoGroup = "promo_group"
            
            case mode = "mode"
            
            case isProcessed = "is_processed"
            
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
            
            case indexedCriteria = "indexed_criteria"
            
            case tags = "tags"
            
            case id = "_id"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, approved: Double? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria]? = nil, calculateOn: String? = nil, code: String? = nil, currency: String? = nil, customContent: [String: Any]? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule]? = nil, displayMeta: DisplayMeta1? = nil, draft: Double? = nil, indexedCriteria: [PromoIndexedCriteria]? = nil, isArchived: Bool? = nil, isBankOffer: Bool? = nil, isProcessed: Bool? = nil, medias: [Media]? = nil, mode: String, offerCounts: Double? = nil, offerPrefix: String? = nil, offerType: String? = nil, ownership: Ownership? = nil, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, rejected: Double? = nil, restrictions: Restrictions1? = nil, review: Double? = nil, stackable: Bool? = nil, tags: [String]? = nil, visibility: Visibility? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, id: String? = nil, schedule: PromotionSchedule? = nil) {
            
            self.draft = draft
            
            self.review = review
            
            self.rejected = rejected
            
            self.approved = approved
            
            self.offerCounts = offerCounts
            
            self.offerPrefix = offerPrefix
            
            self.isBankOffer = isBankOffer
            
            self.customContent = customContent
            
            self.medias = medias
            
            self.offerType = offerType
            
            self.visibility = visibility
            
            self.isArchived = isArchived
            
            self.stackable = stackable
            
            self.calculateOn = calculateOn
            
            self.applyExclusive = applyExclusive
            
            self.promoGroup = promoGroup
            
            self.mode = mode
            
            self.isProcessed = isProcessed
            
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
            
            self.indexedCriteria = indexedCriteria
            
            self.tags = tags
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    draft = try container.decode(Double.self, forKey: .draft)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    review = try container.decode(Double.self, forKey: .review)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejected = try container.decode(Double.self, forKey: .rejected)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approved = try container.decode(Double.self, forKey: .approved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerCounts = try container.decode(Double.self, forKey: .offerCounts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerPrefix = try container.decode(String.self, forKey: .offerPrefix)
                
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
                
            
            
                do {
                    customContent = try container.decode([String: Any].self, forKey: .customContent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offerType = try container.decode(String.self, forKey: .offerType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibility = try container.decode(Visibility.self, forKey: .visibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
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
                
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    isProcessed = try container.decode(Bool.self, forKey: .isProcessed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    ownership = try container.decode(Ownership.self, forKey: .ownership)
                
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
                    buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
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
                    indexedCriteria = try container.decode([PromoIndexedCriteria].self, forKey: .indexedCriteria)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(draft, forKey: .draft)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
            
            
            try? container.encodeIfPresent(rejected, forKey: .rejected)
            
            
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
            
            
            try? container.encodeIfPresent(offerCounts, forKey: .offerCounts)
            
            
            
            
            try? container.encodeIfPresent(offerPrefix, forKey: .offerPrefix)
            
            
            
            
            try? container.encodeIfPresent(isBankOffer, forKey: .isBankOffer)
            
            
            
            
            try? container.encodeIfPresent(customContent, forKey: .customContent)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(offerType, forKey: .offerType)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(isProcessed, forKey: .isProcessed)
            
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(indexedCriteria, forKey: .indexedCriteria)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


