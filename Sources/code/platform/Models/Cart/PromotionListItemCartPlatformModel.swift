

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionListItem
        Used By: Cart
    */

    class PromotionListItem: Codable {
        
        
        public var draft: Double?
        
        public var review: Double?
        
        public var rejected: Double?
        
        public var approved: Double?
        
        public var stackable: Bool?
        
        public var calculateOn: String?
        
        public var applyExclusive: String?
        
        public var promoGroup: String
        
        public var mode: String?
        
        public var displayMeta: DisplayMeta1
        
        public var ownership: Ownership?
        
        public var schedule: PromotionSchedule?
        
        public var author: PromotionAuthor?
        
        public var dateMeta: PromotionDateMeta
        
        public var id: String?
        
        public var isProcessed: Bool?
        
        public var code: String?
        
        public var tags: [String]?
        
        public var promotionType: String?
        
        public var isArchived: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case draft = "draft"
            
            case review = "review"
            
            case rejected = "rejected"
            
            case approved = "approved"
            
            case stackable = "stackable"
            
            case calculateOn = "calculate_on"
            
            case applyExclusive = "apply_exclusive"
            
            case promoGroup = "promo_group"
            
            case mode = "mode"
            
            case displayMeta = "display_meta"
            
            case ownership = "ownership"
            
            case schedule = "_schedule"
            
            case author = "author"
            
            case dateMeta = "date_meta"
            
            case id = "_id"
            
            case isProcessed = "is_processed"
            
            case code = "code"
            
            case tags = "tags"
            
            case promotionType = "promotion_type"
            
            case isArchived = "is_archived"
            
        }

        public init(applyExclusive: String? = nil, approved: Double? = nil, author: PromotionAuthor? = nil, calculateOn: String? = nil, code: String? = nil, dateMeta: PromotionDateMeta, displayMeta: DisplayMeta1, draft: Double? = nil, isArchived: Bool? = nil, isProcessed: Bool? = nil, mode: String? = nil, ownership: Ownership? = nil, promotionType: String? = nil, promoGroup: String, rejected: Double? = nil, review: Double? = nil, stackable: Bool? = nil, tags: [String]? = nil, id: String? = nil, schedule: PromotionSchedule? = nil) {
            
            self.draft = draft
            
            self.review = review
            
            self.rejected = rejected
            
            self.approved = approved
            
            self.stackable = stackable
            
            self.calculateOn = calculateOn
            
            self.applyExclusive = applyExclusive
            
            self.promoGroup = promoGroup
            
            self.mode = mode
            
            self.displayMeta = displayMeta
            
            self.ownership = ownership
            
            self.schedule = schedule
            
            self.author = author
            
            self.dateMeta = dateMeta
            
            self.id = id
            
            self.isProcessed = isProcessed
            
            self.code = code
            
            self.tags = tags
            
            self.promotionType = promotionType
            
            self.isArchived = isArchived
            
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
                
            
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    ownership = try container.decode(Ownership.self, forKey: .ownership)
                
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
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
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
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(draft, forKey: .draft)
            
            
            
            
            try? container.encodeIfPresent(review, forKey: .review)
            
            
            
            
            try? container.encodeIfPresent(rejected, forKey: .rejected)
            
            
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isProcessed, forKey: .isProcessed)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
        }
        
    }
}


