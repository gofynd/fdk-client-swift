import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: CouponAction
        Used By: Cart
    */

    class CouponAction: Codable {
        
        
        public var actionDate: String?
        
        public var txnMode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case actionDate = "action_date"
            
            case txnMode = "txn_mode"
            
        }

        public init(actionDate: String?, txnMode: String?) {
            
            self.actionDate = actionDate
            
            self.txnMode = txnMode
            
        }

        public func duplicate() -> CouponAction {
            let dict = self.dictionary!
            let copy = CouponAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    actionDate = try container.decode(String.self, forKey: .actionDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    txnMode = try container.decode(String.self, forKey: .txnMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(actionDate, forKey: .actionDate)
            
            
            
            
            try? container.encodeIfPresent(txnMode, forKey: .txnMode)
            
            
        }
        
    }
    
    /*
        Model: CouponAuthor
        Used By: Cart
    */

    class CouponAuthor: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(createdBy: String?, modifiedBy: String?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        public func duplicate() -> CouponAuthor {
            let dict = self.dictionary!
            let copy = CouponAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
    
    /*
        Model: CouponDateMeta
        Used By: Cart
    */

    class CouponDateMeta: Codable {
        
        
        public var modifiedOn: String?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case createdOn = "created_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.modifiedOn = modifiedOn
            
            self.createdOn = createdOn
            
        }

        public func duplicate() -> CouponDateMeta {
            let dict = self.dictionary!
            let copy = CouponDateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
        }
        
    }
    
    /*
        Model: Validity
        Used By: Cart
    */

    class Validity: Codable {
        
        
        public var priority: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
        }

        public init(priority: Int?) {
            
            self.priority = priority
            
        }

        public func duplicate() -> Validity {
            let dict = self.dictionary!
            let copy = Validity(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
    
    /*
        Model: CouponSchedule
        Used By: Cart
    */

    class CouponSchedule: Codable {
        
        
        public var start: String?
        
        public var nextSchedule: [[String: Any]]?
        
        public var cron: String?
        
        public var end: String?
        
        public var duration: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case nextSchedule = "next_schedule"
            
            case cron = "cron"
            
            case end = "end"
            
            case duration = "duration"
            
        }

        public init(cron: String?, duration: Int?, end: String?, nextSchedule: [[String: Any]]?, start: String?) {
            
            self.start = start
            
            self.nextSchedule = nextSchedule
            
            self.cron = cron
            
            self.end = end
            
            self.duration = duration
            
        }

        public func duplicate() -> CouponSchedule {
            let dict = self.dictionary!
            let copy = CouponSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
        }
        
    }
    
    /*
        Model: Ownership
        Used By: Cart
    */

    class Ownership: Codable {
        
        
        public var payableBy: String
        
        public var payableCategory: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableBy = "payable_by"
            
            case payableCategory = "payable_category"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableBy = payableBy
            
            self.payableCategory = payableCategory
            
        }

        public func duplicate() -> Ownership {
            let dict = self.dictionary!
            let copy = Ownership(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
        }
        
    }
    
    /*
        Model: DisplayMetaDict
        Used By: Cart
    */

    class DisplayMetaDict: Codable {
        
        
        public var title: String?
        
        public var subtitle: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case subtitle = "subtitle"
            
        }

        public init(subtitle: String?, title: String?) {
            
            self.title = title
            
            self.subtitle = subtitle
            
        }

        public func duplicate() -> DisplayMetaDict {
            let dict = self.dictionary!
            let copy = DisplayMetaDict(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
        }
        
    }
    
    /*
        Model: DisplayMeta
        Used By: Cart
    */

    class DisplayMeta: Codable {
        
        
        public var apply: DisplayMetaDict?
        
        public var subtitle: String?
        
        public var auto: DisplayMetaDict?
        
        public var description: String?
        
        public var remove: DisplayMetaDict?
        
        public var title: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case apply = "apply"
            
            case subtitle = "subtitle"
            
            case auto = "auto"
            
            case description = "description"
            
            case remove = "remove"
            
            case title = "title"
            
        }

        public init(apply: DisplayMetaDict?, auto: DisplayMetaDict?, description: String?, remove: DisplayMetaDict?, subtitle: String?, title: String?) {
            
            self.apply = apply
            
            self.subtitle = subtitle
            
            self.auto = auto
            
            self.description = description
            
            self.remove = remove
            
            self.title = title
            
        }

        public func duplicate() -> DisplayMeta {
            let dict = self.dictionary!
            let copy = DisplayMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    apply = try container.decode(DisplayMetaDict.self, forKey: .apply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subtitle = try container.decode(String.self, forKey: .subtitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    auto = try container.decode(DisplayMetaDict.self, forKey: .auto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    remove = try container.decode(DisplayMetaDict.self, forKey: .remove)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(apply, forKey: .apply)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(auto, forKey: .auto)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(remove, forKey: .remove)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
        }
        
    }
    
    /*
        Model: Identifier
        Used By: Cart
    */

    class Identifier: Codable {
        
        
        public var itemId: [Int]?
        
        public var companyId: [Int]?
        
        public var brandId: [Int]?
        
        public var collectionId: [String]?
        
        public var storeId: [Int]?
        
        public var userId: [String]?
        
        public var categoryId: [Int]?
        
        public var articleId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case companyId = "company_id"
            
            case brandId = "brand_id"
            
            case collectionId = "collection_id"
            
            case storeId = "store_id"
            
            case userId = "user_id"
            
            case categoryId = "category_id"
            
            case articleId = "article_id"
            
        }

        public init(articleId: [String]?, brandId: [Int]?, categoryId: [Int]?, collectionId: [String]?, companyId: [Int]?, itemId: [Int]?, storeId: [Int]?, userId: [String]?) {
            
            self.itemId = itemId
            
            self.companyId = companyId
            
            self.brandId = brandId
            
            self.collectionId = collectionId
            
            self.storeId = storeId
            
            self.userId = userId
            
            self.categoryId = categoryId
            
            self.articleId = articleId
            
        }

        public func duplicate() -> Identifier {
            let dict = self.dictionary!
            let copy = Identifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode([Int].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode([Int].self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode([Int].self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionId = try container.decode([String].self, forKey: .collectionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode([Int].self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode([Int].self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleId = try container.decode([String].self, forKey: .articleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(collectionId, forKey: .collectionId)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
        }
        
    }
    
    /*
        Model: Rule
        Used By: Cart
    */

    class Rule: Codable {
        
        
        public var value: Double?
        
        public var max: Double?
        
        public var discountQty: Double?
        
        public var key: Double?
        
        public var min: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case max = "max"
            
            case discountQty = "discount_qty"
            
            case key = "key"
            
            case min = "min"
            
        }

        public init(discountQty: Double?, key: Double?, max: Double?, min: Double?, value: Double?) {
            
            self.value = value
            
            self.max = max
            
            self.discountQty = discountQty
            
            self.key = key
            
            self.min = min
            
        }

        public func duplicate() -> Rule {
            let dict = self.dictionary!
            let copy = Rule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountQty = try container.decode(Double.self, forKey: .discountQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(Double.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(discountQty, forKey: .discountQty)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
        }
        
    }
    
    /*
        Model: State
        Used By: Cart
    */

    class State: Codable {
        
        
        public var isArchived: Bool?
        
        public var isDisplay: Bool?
        
        public var isPublic: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isArchived = "is_archived"
            
            case isDisplay = "is_display"
            
            case isPublic = "is_public"
            
        }

        public init(isArchived: Bool?, isDisplay: Bool?, isPublic: Bool?) {
            
            self.isArchived = isArchived
            
            self.isDisplay = isDisplay
            
            self.isPublic = isPublic
            
        }

        public func duplicate() -> State {
            let dict = self.dictionary!
            let copy = State(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDisplay = try container.decode(Bool.self, forKey: .isDisplay)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPublic = try container.decode(Bool.self, forKey: .isPublic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(isDisplay, forKey: .isDisplay)
            
            
            
            
            try? container.encodeIfPresent(isPublic, forKey: .isPublic)
            
            
        }
        
    }
    
    /*
        Model: RuleDefinition
        Used By: Cart
    */

    class RuleDefinition: Codable {
        
        
        public var valueType: String
        
        public var type: String
        
        public var isExact: Bool?
        
        public var applicableOn: String
        
        public var currencyCode: String?
        
        public var autoApply: Bool?
        
        public var scope: [String]?
        
        public var calculateOn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case valueType = "value_type"
            
            case type = "type"
            
            case isExact = "is_exact"
            
            case applicableOn = "applicable_on"
            
            case currencyCode = "currency_code"
            
            case autoApply = "auto_apply"
            
            case scope = "scope"
            
            case calculateOn = "calculate_on"
            
        }

        public init(applicableOn: String, autoApply: Bool?, calculateOn: String, currencyCode: String?, isExact: Bool?, scope: [String]?, type: String, valueType: String) {
            
            self.valueType = valueType
            
            self.type = type
            
            self.isExact = isExact
            
            self.applicableOn = applicableOn
            
            self.currencyCode = currencyCode
            
            self.autoApply = autoApply
            
            self.scope = scope
            
            self.calculateOn = calculateOn
            
        }

        public func duplicate() -> RuleDefinition {
            let dict = self.dictionary!
            let copy = RuleDefinition(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                valueType = try container.decode(String.self, forKey: .valueType)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    isExact = try container.decode(Bool.self, forKey: .isExact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicableOn = try container.decode(String.self, forKey: .applicableOn)
                
            
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
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
                
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(valueType, forKey: .valueType)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isExact, forKey: .isExact)
            
            
            
            
            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
        }
        
    }
    
    /*
        Model: Validation
        Used By: Cart
    */

    class Validation: Codable {
        
        
        public var userRegisteredAfter: String?
        
        public var anonymous: Bool?
        
        public var appId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case userRegisteredAfter = "user_registered_after"
            
            case anonymous = "anonymous"
            
            case appId = "app_id"
            
        }

        public init(anonymous: Bool?, appId: [String]?, userRegisteredAfter: String?) {
            
            self.userRegisteredAfter = userRegisteredAfter
            
            self.anonymous = anonymous
            
            self.appId = appId
            
        }

        public func duplicate() -> Validation {
            let dict = self.dictionary!
            let copy = Validation(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userRegisteredAfter = try container.decode(String.self, forKey: .userRegisteredAfter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anonymous = try container.decode(Bool.self, forKey: .anonymous)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appId = try container.decode([String].self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(userRegisteredAfter, forKey: .userRegisteredAfter)
            
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
    
    /*
        Model: PostOrder
        Used By: Cart
    */

    class PostOrder: Codable {
        
        
        public var cancellationAllowed: Bool?
        
        public var returnAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancellationAllowed = "cancellation_allowed"
            
            case returnAllowed = "return_allowed"
            
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            
            self.cancellationAllowed = cancellationAllowed
            
            self.returnAllowed = returnAllowed
            
        }

        public func duplicate() -> PostOrder {
            let dict = self.dictionary!
            let copy = PostOrder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
        }
        
    }
    
    /*
        Model: PriceRange
        Used By: Cart
    */

    class PriceRange: Codable {
        
        
        public var max: Int?
        
        public var min: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: Int?, min: Int?) {
            
            self.max = max
            
            self.min = min
            
        }

        public func duplicate() -> PriceRange {
            let dict = self.dictionary!
            let copy = PriceRange(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
        }
        
    }
    
    /*
        Model: PaymentAllowValue
        Used By: Cart
    */

    class PaymentAllowValue: Codable {
        
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
        }

        public init(max: Int?) {
            
            self.max = max
            
        }

        public func duplicate() -> PaymentAllowValue {
            let dict = self.dictionary!
            let copy = PaymentAllowValue(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PaymentModes
        Used By: Cart
    */

    class PaymentModes: Codable {
        
        
        public var types: [String]?
        
        public var networks: [String]?
        
        public var uses: PaymentAllowValue?
        
        public var codes: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case types = "types"
            
            case networks = "networks"
            
            case uses = "uses"
            
            case codes = "codes"
            
        }

        public init(codes: [String]?, networks: [String]?, types: [String]?, uses: PaymentAllowValue?) {
            
            self.types = types
            
            self.networks = networks
            
            self.uses = uses
            
            self.codes = codes
            
        }

        public func duplicate() -> PaymentModes {
            let dict = self.dictionary!
            let copy = PaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    types = try container.decode([String].self, forKey: .types)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    networks = try container.decode([String].self, forKey: .networks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(PaymentAllowValue.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codes = try container.decode([String].self, forKey: .codes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(types, forKey: .types)
            
            
            
            
            try? container.encodeIfPresent(networks, forKey: .networks)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(codes, forKey: .codes)
            
            
        }
        
    }
    
    /*
        Model: BulkBundleRestriction
        Used By: Cart
    */

    class BulkBundleRestriction: Codable {
        
        
        public var multiStoreAllowed: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case multiStoreAllowed = "multi_store_allowed"
            
        }

        public init(multiStoreAllowed: Bool) {
            
            self.multiStoreAllowed = multiStoreAllowed
            
        }

        public func duplicate() -> BulkBundleRestriction {
            let dict = self.dictionary!
            let copy = BulkBundleRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                multiStoreAllowed = try container.decode(Bool.self, forKey: .multiStoreAllowed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(multiStoreAllowed, forKey: .multiStoreAllowed)
            
            
        }
        
    }
    
    /*
        Model: UsesRemaining
        Used By: Cart
    */

    class UsesRemaining: Codable {
        
        
        public var total: Int?
        
        public var app: Int?
        
        public var user: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case app = "app"
            
            case user = "user"
            
        }

        public init(app: Int?, total: Int?, user: Int?) {
            
            self.total = total
            
            self.app = app
            
            self.user = user
            
        }

        public func duplicate() -> UsesRemaining {
            let dict = self.dictionary!
            let copy = UsesRemaining(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    app = try container.decode(Int.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(Int.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(app, forKey: .app)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
    
    /*
        Model: UsesRestriction
        Used By: Cart
    */

    class UsesRestriction: Codable {
        
        
        public var remaining: UsesRemaining?
        
        public var maximum: UsesRemaining?
        

        public enum CodingKeys: String, CodingKey {
            
            case remaining = "remaining"
            
            case maximum = "maximum"
            
        }

        public init(maximum: UsesRemaining?, remaining: UsesRemaining?) {
            
            self.remaining = remaining
            
            self.maximum = maximum
            
        }

        public func duplicate() -> UsesRestriction {
            let dict = self.dictionary!
            let copy = UsesRestriction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    remaining = try container.decode(UsesRemaining.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maximum = try container.decode(UsesRemaining.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
        }
        
    }
    
    /*
        Model: Restrictions
        Used By: Cart
    */

    class Restrictions: Codable {
        
        
        public var postOrder: PostOrder?
        
        public var priceRange: PriceRange?
        
        public var couponAllowed: Bool?
        
        public var orderingStores: [Int]?
        
        public var payments: [String: PaymentModes]?
        
        public var bulkBundle: BulkBundleRestriction?
        
        public var platforms: [String]?
        
        public var uses: UsesRestriction?
        
        public var userGroups: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case postOrder = "post_order"
            
            case priceRange = "price_range"
            
            case couponAllowed = "coupon_allowed"
            
            case orderingStores = "ordering_stores"
            
            case payments = "payments"
            
            case bulkBundle = "bulk_bundle"
            
            case platforms = "platforms"
            
            case uses = "uses"
            
            case userGroups = "user_groups"
            
        }

        public init(bulkBundle: BulkBundleRestriction?, couponAllowed: Bool?, orderingStores: [Int]?, payments: [String: PaymentModes]?, platforms: [String]?, postOrder: PostOrder?, priceRange: PriceRange?, userGroups: [Int]?, uses: UsesRestriction?) {
            
            self.postOrder = postOrder
            
            self.priceRange = priceRange
            
            self.couponAllowed = couponAllowed
            
            self.orderingStores = orderingStores
            
            self.payments = payments
            
            self.bulkBundle = bulkBundle
            
            self.platforms = platforms
            
            self.uses = uses
            
            self.userGroups = userGroups
            
        }

        public func duplicate() -> Restrictions {
            let dict = self.dictionary!
            let copy = Restrictions(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    postOrder = try container.decode(PostOrder.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceRange = try container.decode(PriceRange.self, forKey: .priceRange)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponAllowed = try container.decode(Bool.self, forKey: .couponAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStores = try container.decode([Int].self, forKey: .orderingStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([String: PaymentModes].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkBundle = try container.decode(BulkBundleRestriction.self, forKey: .bulkBundle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(UsesRestriction.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroups = try container.decode([Int].self, forKey: .userGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encodeIfPresent(priceRange, forKey: .priceRange)
            
            
            
            
            try? container.encodeIfPresent(couponAllowed, forKey: .couponAllowed)
            
            
            
            
            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(bulkBundle, forKey: .bulkBundle)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
        }
        
    }
    
    /*
        Model: CouponAdd
        Used By: Cart
    */

    class CouponAdd: Codable {
        
        
        public var action: CouponAction?
        
        public var author: CouponAuthor?
        
        public var tags: [String]?
        
        public var dateMeta: CouponDateMeta?
        
        public var validity: Validity
        
        public var schedule: CouponSchedule?
        
        public var typeSlug: String
        
        public var code: String
        
        public var ownership: Ownership
        
        public var displayMeta: DisplayMeta
        
        public var identifiers: Identifier
        
        public var rule: [Rule]
        
        public var state: State?
        
        public var ruleDefinition: RuleDefinition
        
        public var validation: Validation?
        
        public var restrictions: Restrictions?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case author = "author"
            
            case tags = "tags"
            
            case dateMeta = "date_meta"
            
            case validity = "validity"
            
            case schedule = "_schedule"
            
            case typeSlug = "type_slug"
            
            case code = "code"
            
            case ownership = "ownership"
            
            case displayMeta = "display_meta"
            
            case identifiers = "identifiers"
            
            case rule = "rule"
            
            case state = "state"
            
            case ruleDefinition = "rule_definition"
            
            case validation = "validation"
            
            case restrictions = "restrictions"
            
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            
            self.action = action
            
            self.author = author
            
            self.tags = tags
            
            self.dateMeta = dateMeta
            
            self.validity = validity
            
            self.schedule = schedule
            
            self.typeSlug = typeSlug
            
            self.code = code
            
            self.ownership = ownership
            
            self.displayMeta = displayMeta
            
            self.identifiers = identifiers
            
            self.rule = rule
            
            self.state = state
            
            self.ruleDefinition = ruleDefinition
            
            self.validation = validation
            
            self.restrictions = restrictions
            
        }

        public func duplicate() -> CouponAdd {
            let dict = self.dictionary!
            let copy = CouponAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
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
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
        }
        
    }
    
    /*
        Model: CouponsResponse
        Used By: Cart
    */

    class CouponsResponse: Codable {
        
        
        public var items: CouponAdd?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: CouponAdd?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CouponsResponse {
            let dict = self.dictionary!
            let copy = CouponsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode(CouponAdd.self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: SuccessMessage
        Used By: Cart
    */

    class SuccessMessage: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(message: String?, success: Bool?) {
            
            self.success = success
            
            self.message = message
            
        }

        public func duplicate() -> SuccessMessage {
            let dict = self.dictionary!
            let copy = SuccessMessage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: OperationErrorResponse
        Used By: Cart
    */

    class OperationErrorResponse: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(message: String?, success: Bool?) {
            
            self.success = success
            
            self.message = message
            
        }

        public func duplicate() -> OperationErrorResponse {
            let dict = self.dictionary!
            let copy = OperationErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: CouponUpdate
        Used By: Cart
    */

    class CouponUpdate: Codable {
        
        
        public var action: CouponAction?
        
        public var author: CouponAuthor?
        
        public var tags: [String]?
        
        public var dateMeta: CouponDateMeta?
        
        public var validity: Validity
        
        public var schedule: CouponSchedule?
        
        public var typeSlug: String
        
        public var code: String
        
        public var ownership: Ownership
        
        public var displayMeta: DisplayMeta
        
        public var identifiers: Identifier
        
        public var rule: [Rule]
        
        public var state: State?
        
        public var ruleDefinition: RuleDefinition
        
        public var validation: Validation?
        
        public var restrictions: Restrictions?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case author = "author"
            
            case tags = "tags"
            
            case dateMeta = "date_meta"
            
            case validity = "validity"
            
            case schedule = "_schedule"
            
            case typeSlug = "type_slug"
            
            case code = "code"
            
            case ownership = "ownership"
            
            case displayMeta = "display_meta"
            
            case identifiers = "identifiers"
            
            case rule = "rule"
            
            case state = "state"
            
            case ruleDefinition = "rule_definition"
            
            case validation = "validation"
            
            case restrictions = "restrictions"
            
        }

        public init(action: CouponAction?, author: CouponAuthor?, code: String, dateMeta: CouponDateMeta?, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions?, rule: [Rule], ruleDefinition: RuleDefinition, state: State?, tags: [String]?, typeSlug: String, validation: Validation?, validity: Validity, schedule: CouponSchedule?) {
            
            self.action = action
            
            self.author = author
            
            self.tags = tags
            
            self.dateMeta = dateMeta
            
            self.validity = validity
            
            self.schedule = schedule
            
            self.typeSlug = typeSlug
            
            self.code = code
            
            self.ownership = ownership
            
            self.displayMeta = displayMeta
            
            self.identifiers = identifiers
            
            self.rule = rule
            
            self.state = state
            
            self.ruleDefinition = ruleDefinition
            
            self.validation = validation
            
            self.restrictions = restrictions
            
        }

        public func duplicate() -> CouponUpdate {
            let dict = self.dictionary!
            let copy = CouponUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    action = try container.decode(CouponAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    author = try container.decode(CouponAuthor.self, forKey: .author)
                
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
                    dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                validity = try container.decode(Validity.self, forKey: .validity)
                
            
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                typeSlug = try container.decode(String.self, forKey: .typeSlug)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                ownership = try container.decode(Ownership.self, forKey: .ownership)
                
            
            
            
                displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)
                
            
            
            
                identifiers = try container.decode(Identifier.self, forKey: .identifiers)
                
            
            
            
                rule = try container.decode([Rule].self, forKey: .rule)
                
            
            
            
                do {
                    state = try container.decode(State.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)
                
            
            
            
                do {
                    validation = try container.decode(Validation.self, forKey: .validation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restrictions = try container.decode(Restrictions.self, forKey: .restrictions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(validity, forKey: .validity)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(rule, forKey: .rule)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)
            
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
        }
        
    }
    
    /*
        Model: CouponPartialUpdate
        Used By: Cart
    */

    class CouponPartialUpdate: Codable {
        
        
        public var archive: Bool?
        
        public var schedule: CouponSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case archive = "archive"
            
            case schedule = "schedule"
            
        }

        public init(archive: Bool?, schedule: CouponSchedule?) {
            
            self.archive = archive
            
            self.schedule = schedule
            
        }

        public func duplicate() -> CouponPartialUpdate {
            let dict = self.dictionary!
            let copy = CouponPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode(CouponSchedule.self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
    
    /*
        Model: PromotionAuthor
        Used By: Cart
    */

    class PromotionAuthor: Codable {
        
        
        public var createdBy: String?
        
        public var modifiedBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
        }

        public init(createdBy: String?, modifiedBy: String?) {
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
        }

        public func duplicate() -> PromotionAuthor {
            let dict = self.dictionary!
            let copy = PromotionAuthor(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(String.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
    
    /*
        Model: Visibility
        Used By: Cart
    */

    class Visibility: Codable {
        
        
        public var couponList: Bool
        
        public var pdp: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case couponList = "coupon_list"
            
            case pdp = "pdp"
            
        }

        public init(couponList: Bool, pdp: Bool) {
            
            self.couponList = couponList
            
            self.pdp = pdp
            
        }

        public func duplicate() -> Visibility {
            let dict = self.dictionary!
            let copy = Visibility(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                couponList = try container.decode(Bool.self, forKey: .couponList)
                
            
            
            
                pdp = try container.decode(Bool.self, forKey: .pdp)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(couponList, forKey: .couponList)
            
            
            
            
            try? container.encodeIfPresent(pdp, forKey: .pdp)
            
            
        }
        
    }
    
    /*
        Model: DisplayMeta1
        Used By: Cart
    */

    class DisplayMeta1: Codable {
        
        
        public var offerText: String?
        
        public var description: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case offerText = "offer_text"
            
            case description = "description"
            
            case name = "name"
            
        }

        public init(description: String?, name: String?, offerText: String?) {
            
            self.offerText = offerText
            
            self.description = description
            
            self.name = name
            
        }

        public func duplicate() -> DisplayMeta1 {
            let dict = self.dictionary!
            let copy = DisplayMeta1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    offerText = try container.decode(String.self, forKey: .offerText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: PromotionDateMeta
        Used By: Cart
    */

    class PromotionDateMeta: Codable {
        
        
        public var modifiedOn: String?
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifiedOn = "modified_on"
            
            case createdOn = "created_on"
            
        }

        public init(createdOn: String?, modifiedOn: String?) {
            
            self.modifiedOn = modifiedOn
            
            self.createdOn = createdOn
            
        }

        public func duplicate() -> PromotionDateMeta {
            let dict = self.dictionary!
            let copy = PromotionDateMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encode(createdOn, forKey: .createdOn)
            
            
        }
        
    }
    
    /*
        Model: DiscountOffer
        Used By: Cart
    */

    class DiscountOffer: Codable {
        
        
        public var discountPercentage: Double?
        
        public var maxOfferQuantity: Int?
        
        public var minOfferQuantity: Int?
        
        public var maxDiscountAmount: Double?
        
        public var code: String?
        
        public var discountPrice: Double?
        
        public var discountAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountPercentage = "discount_percentage"
            
            case maxOfferQuantity = "max_offer_quantity"
            
            case minOfferQuantity = "min_offer_quantity"
            
            case maxDiscountAmount = "max_discount_amount"
            
            case code = "code"
            
            case discountPrice = "discount_price"
            
            case discountAmount = "discount_amount"
            
        }

        public init(code: String?, discountAmount: Double?, discountPercentage: Double?, discountPrice: Double?, maxDiscountAmount: Double?, maxOfferQuantity: Int?, minOfferQuantity: Int?) {
            
            self.discountPercentage = discountPercentage
            
            self.maxOfferQuantity = maxOfferQuantity
            
            self.minOfferQuantity = minOfferQuantity
            
            self.maxDiscountAmount = maxDiscountAmount
            
            self.code = code
            
            self.discountPrice = discountPrice
            
            self.discountAmount = discountAmount
            
        }

        public func duplicate() -> DiscountOffer {
            let dict = self.dictionary!
            let copy = DiscountOffer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discountPercentage = try container.decode(Double.self, forKey: .discountPercentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxOfferQuantity = try container.decode(Int.self, forKey: .maxOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minOfferQuantity = try container.decode(Int.self, forKey: .minOfferQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxDiscountAmount = try container.decode(Double.self, forKey: .maxDiscountAmount)
                
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
                    discountPrice = try container.decode(Double.self, forKey: .discountPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountAmount = try container.decode(Double.self, forKey: .discountAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountPercentage, forKey: .discountPercentage)
            
            
            
            
            try? container.encodeIfPresent(maxOfferQuantity, forKey: .maxOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(minOfferQuantity, forKey: .minOfferQuantity)
            
            
            
            
            try? container.encodeIfPresent(maxDiscountAmount, forKey: .maxDiscountAmount)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(discountPrice, forKey: .discountPrice)
            
            
            
            
            try? container.encodeIfPresent(discountAmount, forKey: .discountAmount)
            
            
        }
        
    }
    
    /*
        Model: CompareObject
        Used By: Cart
    */

    class CompareObject: Codable {
        
        
        public var lessThanEquals: Double?
        
        public var equals: Double?
        
        public var greaterThanEquals: Double?
        
        public var greaterThan: Double?
        
        public var lessThan: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case lessThanEquals = "less_than_equals"
            
            case equals = "equals"
            
            case greaterThanEquals = "greater_than_equals"
            
            case greaterThan = "greater_than"
            
            case lessThan = "less_than"
            
        }

        public init(equals: Double?, greaterThan: Double?, greaterThanEquals: Double?, lessThan: Double?, lessThanEquals: Double?) {
            
            self.lessThanEquals = lessThanEquals
            
            self.equals = equals
            
            self.greaterThanEquals = greaterThanEquals
            
            self.greaterThan = greaterThan
            
            self.lessThan = lessThan
            
        }

        public func duplicate() -> CompareObject {
            let dict = self.dictionary!
            let copy = CompareObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    lessThanEquals = try container.decode(Double.self, forKey: .lessThanEquals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    equals = try container.decode(Double.self, forKey: .equals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    greaterThanEquals = try container.decode(Double.self, forKey: .greaterThanEquals)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    greaterThan = try container.decode(Double.self, forKey: .greaterThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lessThan = try container.decode(Double.self, forKey: .lessThan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(lessThanEquals, forKey: .lessThanEquals)
            
            
            
            
            try? container.encodeIfPresent(equals, forKey: .equals)
            
            
            
            
            try? container.encodeIfPresent(greaterThanEquals, forKey: .greaterThanEquals)
            
            
            
            
            try? container.encodeIfPresent(greaterThan, forKey: .greaterThan)
            
            
            
            
            try? container.encodeIfPresent(lessThan, forKey: .lessThan)
            
            
        }
        
    }
    
    /*
        Model: ItemCriteria
        Used By: Cart
    */

    class ItemCriteria: Codable {
        
        
        public var itemId: [Int]?
        
        public var itemCategory: [Int]?
        
        public var itemStore: [Int]?
        
        public var itemExcludeStore: [Int]?
        
        public var cartQuantity: CompareObject?
        
        public var cartTotal: CompareObject?
        
        public var itemCompany: [Int]?
        
        public var itemExcludeCompany: [Int]?
        
        public var itemExcludeBrand: [Int]?
        
        public var itemBrand: [Int]?
        
        public var itemExcludeSku: [String]?
        
        public var buyExpression: String?
        
        public var itemExcludeCategory: [Int]?
        
        public var itemSku: [String]?
        
        public var itemSize: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case itemCategory = "item_category"
            
            case itemStore = "item_store"
            
            case itemExcludeStore = "item_exclude_store"
            
            case cartQuantity = "cart_quantity"
            
            case cartTotal = "cart_total"
            
            case itemCompany = "item_company"
            
            case itemExcludeCompany = "item_exclude_company"
            
            case itemExcludeBrand = "item_exclude_brand"
            
            case itemBrand = "item_brand"
            
            case itemExcludeSku = "item_exclude_sku"
            
            case buyExpression = "buy_expression"
            
            case itemExcludeCategory = "item_exclude_category"
            
            case itemSku = "item_sku"
            
            case itemSize = "item_size"
            
        }

        public init(buyExpression: String?, cartQuantity: CompareObject?, cartTotal: CompareObject?, itemBrand: [Int]?, itemCategory: [Int]?, itemCompany: [Int]?, itemExcludeBrand: [Int]?, itemExcludeCategory: [Int]?, itemExcludeCompany: [Int]?, itemExcludeSku: [String]?, itemExcludeStore: [Int]?, itemId: [Int]?, itemSize: [String]?, itemSku: [String]?, itemStore: [Int]?) {
            
            self.itemId = itemId
            
            self.itemCategory = itemCategory
            
            self.itemStore = itemStore
            
            self.itemExcludeStore = itemExcludeStore
            
            self.cartQuantity = cartQuantity
            
            self.cartTotal = cartTotal
            
            self.itemCompany = itemCompany
            
            self.itemExcludeCompany = itemExcludeCompany
            
            self.itemExcludeBrand = itemExcludeBrand
            
            self.itemBrand = itemBrand
            
            self.itemExcludeSku = itemExcludeSku
            
            self.buyExpression = buyExpression
            
            self.itemExcludeCategory = itemExcludeCategory
            
            self.itemSku = itemSku
            
            self.itemSize = itemSize
            
        }

        public func duplicate() -> ItemCriteria {
            let dict = self.dictionary!
            let copy = ItemCriteria(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode([Int].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCategory = try container.decode([Int].self, forKey: .itemCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemStore = try container.decode([Int].self, forKey: .itemStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCompany = try container.decode([Int].self, forKey: .itemCompany)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemBrand = try container.decode([Int].self, forKey: .itemBrand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyExpression = try container.decode(String.self, forKey: .buyExpression)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSku = try container.decode([String].self, forKey: .itemSku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemSize = try container.decode([String].self, forKey: .itemSize)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)
            
            
            
            
            try? container.encodeIfPresent(itemStore, forKey: .itemStore)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)
            
            
            
            
            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)
            
            
            
            
            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)
            
            
            
            
            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)
            
            
            
            
            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)
            
            
            
            
            try? container.encodeIfPresent(buyExpression, forKey: .buyExpression)
            
            
            
            
            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)
            
            
            
            
            try? container.encodeIfPresent(itemSku, forKey: .itemSku)
            
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
        }
        
    }
    
    /*
        Model: DiscountRule
        Used By: Cart
    */

    class DiscountRule: Codable {
        
        
        public var discountType: String
        
        public var offer: DiscountOffer
        
        public var itemCriteria: ItemCriteria
        
        public var buyCondition: String
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case offer = "offer"
            
            case itemCriteria = "item_criteria"
            
            case buyCondition = "buy_condition"
            
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            
            self.discountType = discountType
            
            self.offer = offer
            
            self.itemCriteria = itemCriteria
            
            self.buyCondition = buyCondition
            
        }

        public func duplicate() -> DiscountRule {
            let dict = self.dictionary!
            let copy = DiscountRule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                offer = try container.decode(DiscountOffer.self, forKey: .offer)
                
            
            
            
                itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)
                
            
            
            
                buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
        }
        
    }
    
    /*
        Model: Ownership1
        Used By: Cart
    */

    class Ownership1: Codable {
        
        
        public var payableBy: String
        
        public var payableCategory: String
        

        public enum CodingKeys: String, CodingKey {
            
            case payableBy = "payable_by"
            
            case payableCategory = "payable_category"
            
        }

        public init(payableBy: String, payableCategory: String) {
            
            self.payableBy = payableBy
            
            self.payableCategory = payableCategory
            
        }

        public func duplicate() -> Ownership1 {
            let dict = self.dictionary!
            let copy = Ownership1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                payableBy = try container.decode(String.self, forKey: .payableBy)
                
            
            
            
                payableCategory = try container.decode(String.self, forKey: .payableCategory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(payableBy, forKey: .payableBy)
            
            
            
            
            try? container.encodeIfPresent(payableCategory, forKey: .payableCategory)
            
            
        }
        
    }
    
    /*
        Model: PromotionAction
        Used By: Cart
    */

    class PromotionAction: Codable {
        
        
        public var actionDate: String
        
        public var actionType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case actionDate = "action_date"
            
            case actionType = "action_type"
            
        }

        public init(actionDate: String, actionType: String) {
            
            self.actionDate = actionDate
            
            self.actionType = actionType
            
        }

        public func duplicate() -> PromotionAction {
            let dict = self.dictionary!
            let copy = PromotionAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                actionDate = try container.decode(String.self, forKey: .actionDate)
                
            
            
            
                actionType = try container.decode(String.self, forKey: .actionType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(actionDate, forKey: .actionDate)
            
            
            
            
            try? container.encodeIfPresent(actionType, forKey: .actionType)
            
            
        }
        
    }
    
    /*
        Model: PostOrder1
        Used By: Cart
    */

    class PostOrder1: Codable {
        
        
        public var cancellationAllowed: Bool?
        
        public var returnAllowed: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case cancellationAllowed = "cancellation_allowed"
            
            case returnAllowed = "return_allowed"
            
        }

        public init(cancellationAllowed: Bool?, returnAllowed: Bool?) {
            
            self.cancellationAllowed = cancellationAllowed
            
            self.returnAllowed = returnAllowed
            
        }

        public func duplicate() -> PostOrder1 {
            let dict = self.dictionary!
            let copy = PostOrder1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cancellationAllowed = try container.decode(Bool.self, forKey: .cancellationAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnAllowed = try container.decode(Bool.self, forKey: .returnAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cancellationAllowed, forKey: .cancellationAllowed)
            
            
            
            
            try? container.encodeIfPresent(returnAllowed, forKey: .returnAllowed)
            
            
        }
        
    }
    
    /*
        Model: UserRegistered
        Used By: Cart
    */

    class UserRegistered: Codable {
        
        
        public var end: String?
        
        public var start: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case end = "end"
            
            case start = "start"
            
        }

        public init(end: String?, start: String?) {
            
            self.end = end
            
            self.start = start
            
        }

        public func duplicate() -> UserRegistered {
            let dict = self.dictionary!
            let copy = UserRegistered(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    end = try container.decode(String.self, forKey: .end)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    start = try container.decode(String.self, forKey: .start)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encode(start, forKey: .start)
            
            
        }
        
    }
    
    /*
        Model: PaymentAllowValue1
        Used By: Cart
    */

    class PaymentAllowValue1: Codable {
        
        
        public var max: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
        }

        public init(max: Int?) {
            
            self.max = max
            
        }

        public func duplicate() -> PaymentAllowValue1 {
            let dict = self.dictionary!
            let copy = PaymentAllowValue1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
        }
        
    }
    
    /*
        Model: PromotionPaymentModes
        Used By: Cart
    */

    class PromotionPaymentModes: Codable {
        
        
        public var codes: [String]?
        
        public var uses: PaymentAllowValue1?
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case codes = "codes"
            
            case uses = "uses"
            
            case type = "type"
            
        }

        public init(codes: [String]?, type: String, uses: PaymentAllowValue1?) {
            
            self.codes = codes
            
            self.uses = uses
            
            self.type = type
            
        }

        public func duplicate() -> PromotionPaymentModes {
            let dict = self.dictionary!
            let copy = PromotionPaymentModes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    codes = try container.decode([String].self, forKey: .codes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uses = try container.decode(PaymentAllowValue1.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(codes, forKey: .codes)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: UsesRemaining1
        Used By: Cart
    */

    class UsesRemaining1: Codable {
        
        
        public var total: Int?
        
        public var user: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case user = "user"
            
        }

        public init(total: Int?, user: Int?) {
            
            self.total = total
            
            self.user = user
            
        }

        public func duplicate() -> UsesRemaining1 {
            let dict = self.dictionary!
            let copy = UsesRemaining1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    total = try container.decode(Int.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(Int.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
    
    /*
        Model: UsesRestriction1
        Used By: Cart
    */

    class UsesRestriction1: Codable {
        
        
        public var remaining: UsesRemaining1?
        
        public var maximum: UsesRemaining1?
        

        public enum CodingKeys: String, CodingKey {
            
            case remaining = "remaining"
            
            case maximum = "maximum"
            
        }

        public init(maximum: UsesRemaining1?, remaining: UsesRemaining1?) {
            
            self.remaining = remaining
            
            self.maximum = maximum
            
        }

        public func duplicate() -> UsesRestriction1 {
            let dict = self.dictionary!
            let copy = UsesRestriction1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    remaining = try container.decode(UsesRemaining1.self, forKey: .remaining)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maximum = try container.decode(UsesRemaining1.self, forKey: .maximum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(remaining, forKey: .remaining)
            
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
        }
        
    }
    
    /*
        Model: Restrictions1
        Used By: Cart
    */

    class Restrictions1: Codable {
        
        
        public var orderQuantity: Int?
        
        public var postOrder: PostOrder1?
        
        public var userRegistered: UserRegistered?
        
        public var payments: [PromotionPaymentModes]?
        
        public var anonymousUsers: Bool?
        
        public var platforms: [String]?
        
        public var uses: UsesRestriction1
        
        public var userId: [String]?
        
        public var userGroups: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderQuantity = "order_quantity"
            
            case postOrder = "post_order"
            
            case userRegistered = "user_registered"
            
            case payments = "payments"
            
            case anonymousUsers = "anonymous_users"
            
            case platforms = "platforms"
            
            case uses = "uses"
            
            case userId = "user_id"
            
            case userGroups = "user_groups"
            
        }

        public init(anonymousUsers: Bool?, orderQuantity: Int?, payments: [PromotionPaymentModes]?, platforms: [String]?, postOrder: PostOrder1?, userGroups: [Int]?, userId: [String]?, userRegistered: UserRegistered?, uses: UsesRestriction1) {
            
            self.orderQuantity = orderQuantity
            
            self.postOrder = postOrder
            
            self.userRegistered = userRegistered
            
            self.payments = payments
            
            self.anonymousUsers = anonymousUsers
            
            self.platforms = platforms
            
            self.uses = uses
            
            self.userId = userId
            
            self.userGroups = userGroups
            
        }

        public func duplicate() -> Restrictions1 {
            let dict = self.dictionary!
            let copy = Restrictions1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode(PostOrder1.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userRegistered = try container.decode(UserRegistered.self, forKey: .userRegistered)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([PromotionPaymentModes].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anonymousUsers = try container.decode(Bool.self, forKey: .anonymousUsers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uses = try container.decode(UsesRestriction1.self, forKey: .uses)
                
            
            
            
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userGroups = try container.decode([Int].self, forKey: .userGroups)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encode(userRegistered, forKey: .userRegistered)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(anonymousUsers, forKey: .anonymousUsers)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
        }
        
    }
    
    /*
        Model: PromotionSchedule
        Used By: Cart
    */

    class PromotionSchedule: Codable {
        
        
        public var start: String
        
        public var nextSchedule: [[String: Any]]?
        
        public var cron: String?
        
        public var end: String
        
        public var duration: Int?
        
        public var published: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case start = "start"
            
            case nextSchedule = "next_schedule"
            
            case cron = "cron"
            
            case end = "end"
            
            case duration = "duration"
            
            case published = "published"
            
        }

        public init(cron: String?, duration: Int?, end: String, nextSchedule: [[String: Any]]?, published: Bool, start: String) {
            
            self.start = start
            
            self.nextSchedule = nextSchedule
            
            self.cron = cron
            
            self.end = end
            
            self.duration = duration
            
            self.published = published
            
        }

        public func duplicate() -> PromotionSchedule {
            let dict = self.dictionary!
            let copy = PromotionSchedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                start = try container.decode(String.self, forKey: .start)
                
            
            
            
                do {
                    nextSchedule = try container.decode([[String: Any]].self, forKey: .nextSchedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cron = try container.decode(String.self, forKey: .cron)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                end = try container.decode(String.self, forKey: .end)
                
            
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                published = try container.decode(Bool.self, forKey: .published)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            
            try? container.encodeIfPresent(nextSchedule, forKey: .nextSchedule)
            
            
            
            
            try? container.encode(cron, forKey: .cron)
            
            
            
            
            try? container.encode(end, forKey: .end)
            
            
            
            
            try? container.encode(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(published, forKey: .published)
            
            
        }
        
    }
    
    /*
        Model: PromotionListItem
        Used By: Cart
    */

    class PromotionListItem: Codable {
        
        
        public var author: PromotionAuthor?
        
        public var stackable: Bool?
        
        public var visiblility: Visibility?
        
        public var promotionType: String
        
        public var code: String?
        
        public var applicationId: String
        
        public var promoGroup: String
        
        public var applyAllDiscount: Bool?
        
        public var displayMeta: DisplayMeta1
        
        public var dateMeta: PromotionDateMeta?
        
        public var customJson: [String: Any]?
        
        public var discountRules: [DiscountRule]
        
        public var ownership: Ownership1
        
        public var applyPriority: Int?
        
        public var currency: String?
        
        public var buyRules: [String: ItemCriteria]
        
        public var postOrderAction: PromotionAction?
        
        public var restrictions: Restrictions1?
        
        public var mode: String
        
        public var applyExclusive: String?
        
        public var schedule: PromotionSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case author = "author"
            
            case stackable = "stackable"
            
            case visiblility = "visiblility"
            
            case promotionType = "promotion_type"
            
            case code = "code"
            
            case applicationId = "application_id"
            
            case promoGroup = "promo_group"
            
            case applyAllDiscount = "apply_all_discount"
            
            case displayMeta = "display_meta"
            
            case dateMeta = "date_meta"
            
            case customJson = "_custom_json"
            
            case discountRules = "discount_rules"
            
            case ownership = "ownership"
            
            case applyPriority = "apply_priority"
            
            case currency = "currency"
            
            case buyRules = "buy_rules"
            
            case postOrderAction = "post_order_action"
            
            case restrictions = "restrictions"
            
            case mode = "mode"
            
            case applyExclusive = "apply_exclusive"
            
            case schedule = "_schedule"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.author = author
            
            self.stackable = stackable
            
            self.visiblility = visiblility
            
            self.promotionType = promotionType
            
            self.code = code
            
            self.applicationId = applicationId
            
            self.promoGroup = promoGroup
            
            self.applyAllDiscount = applyAllDiscount
            
            self.displayMeta = displayMeta
            
            self.dateMeta = dateMeta
            
            self.customJson = customJson
            
            self.discountRules = discountRules
            
            self.ownership = ownership
            
            self.applyPriority = applyPriority
            
            self.currency = currency
            
            self.buyRules = buyRules
            
            self.postOrderAction = postOrderAction
            
            self.restrictions = restrictions
            
            self.mode = mode
            
            self.applyExclusive = applyExclusive
            
            self.schedule = schedule
            
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
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
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
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
                
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
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
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
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
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
    
    /*
        Model: PromotionsResponse
        Used By: Cart
    */

    class PromotionsResponse: Codable {
        
        
        public var items: PromotionListItem?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: PromotionListItem?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> PromotionsResponse {
            let dict = self.dictionary!
            let copy = PromotionsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode(PromotionListItem.self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: PromotionAdd
        Used By: Cart
    */

    class PromotionAdd: Codable {
        
        
        public var author: PromotionAuthor?
        
        public var stackable: Bool?
        
        public var visiblility: Visibility?
        
        public var promotionType: String
        
        public var code: String?
        
        public var applicationId: String
        
        public var promoGroup: String
        
        public var applyAllDiscount: Bool?
        
        public var displayMeta: DisplayMeta1
        
        public var dateMeta: PromotionDateMeta?
        
        public var customJson: [String: Any]?
        
        public var discountRules: [DiscountRule]
        
        public var ownership: Ownership1
        
        public var applyPriority: Int?
        
        public var currency: String?
        
        public var buyRules: [String: ItemCriteria]
        
        public var postOrderAction: PromotionAction?
        
        public var restrictions: Restrictions1?
        
        public var mode: String
        
        public var applyExclusive: String?
        
        public var schedule: PromotionSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case author = "author"
            
            case stackable = "stackable"
            
            case visiblility = "visiblility"
            
            case promotionType = "promotion_type"
            
            case code = "code"
            
            case applicationId = "application_id"
            
            case promoGroup = "promo_group"
            
            case applyAllDiscount = "apply_all_discount"
            
            case displayMeta = "display_meta"
            
            case dateMeta = "date_meta"
            
            case customJson = "_custom_json"
            
            case discountRules = "discount_rules"
            
            case ownership = "ownership"
            
            case applyPriority = "apply_priority"
            
            case currency = "currency"
            
            case buyRules = "buy_rules"
            
            case postOrderAction = "post_order_action"
            
            case restrictions = "restrictions"
            
            case mode = "mode"
            
            case applyExclusive = "apply_exclusive"
            
            case schedule = "_schedule"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.author = author
            
            self.stackable = stackable
            
            self.visiblility = visiblility
            
            self.promotionType = promotionType
            
            self.code = code
            
            self.applicationId = applicationId
            
            self.promoGroup = promoGroup
            
            self.applyAllDiscount = applyAllDiscount
            
            self.displayMeta = displayMeta
            
            self.dateMeta = dateMeta
            
            self.customJson = customJson
            
            self.discountRules = discountRules
            
            self.ownership = ownership
            
            self.applyPriority = applyPriority
            
            self.currency = currency
            
            self.buyRules = buyRules
            
            self.postOrderAction = postOrderAction
            
            self.restrictions = restrictions
            
            self.mode = mode
            
            self.applyExclusive = applyExclusive
            
            self.schedule = schedule
            
        }

        public func duplicate() -> PromotionAdd {
            let dict = self.dictionary!
            let copy = PromotionAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
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
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
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
                
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
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
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
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
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
    
    /*
        Model: PromotionUpdate
        Used By: Cart
    */

    class PromotionUpdate: Codable {
        
        
        public var author: PromotionAuthor?
        
        public var stackable: Bool?
        
        public var visiblility: Visibility?
        
        public var promotionType: String
        
        public var code: String?
        
        public var applicationId: String
        
        public var promoGroup: String
        
        public var applyAllDiscount: Bool?
        
        public var displayMeta: DisplayMeta1
        
        public var dateMeta: PromotionDateMeta?
        
        public var customJson: [String: Any]?
        
        public var discountRules: [DiscountRule]
        
        public var ownership: Ownership1
        
        public var applyPriority: Int?
        
        public var currency: String?
        
        public var buyRules: [String: ItemCriteria]
        
        public var postOrderAction: PromotionAction?
        
        public var restrictions: Restrictions1?
        
        public var mode: String
        
        public var applyExclusive: String?
        
        public var schedule: PromotionSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case author = "author"
            
            case stackable = "stackable"
            
            case visiblility = "visiblility"
            
            case promotionType = "promotion_type"
            
            case code = "code"
            
            case applicationId = "application_id"
            
            case promoGroup = "promo_group"
            
            case applyAllDiscount = "apply_all_discount"
            
            case displayMeta = "display_meta"
            
            case dateMeta = "date_meta"
            
            case customJson = "_custom_json"
            
            case discountRules = "discount_rules"
            
            case ownership = "ownership"
            
            case applyPriority = "apply_priority"
            
            case currency = "currency"
            
            case buyRules = "buy_rules"
            
            case postOrderAction = "post_order_action"
            
            case restrictions = "restrictions"
            
            case mode = "mode"
            
            case applyExclusive = "apply_exclusive"
            
            case schedule = "_schedule"
            
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            
            self.author = author
            
            self.stackable = stackable
            
            self.visiblility = visiblility
            
            self.promotionType = promotionType
            
            self.code = code
            
            self.applicationId = applicationId
            
            self.promoGroup = promoGroup
            
            self.applyAllDiscount = applyAllDiscount
            
            self.displayMeta = displayMeta
            
            self.dateMeta = dateMeta
            
            self.customJson = customJson
            
            self.discountRules = discountRules
            
            self.ownership = ownership
            
            self.applyPriority = applyPriority
            
            self.currency = currency
            
            self.buyRules = buyRules
            
            self.postOrderAction = postOrderAction
            
            self.restrictions = restrictions
            
            self.mode = mode
            
            self.applyExclusive = applyExclusive
            
            self.schedule = schedule
            
        }

        public func duplicate() -> PromotionUpdate {
            let dict = self.dictionary!
            let copy = PromotionUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    author = try container.decode(PromotionAuthor.self, forKey: .author)
                
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
                    visiblility = try container.decode(Visibility.self, forKey: .visiblility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                promotionType = try container.decode(String.self, forKey: .promotionType)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                promoGroup = try container.decode(String.self, forKey: .promoGroup)
                
            
            
            
                do {
                    applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)
                
            
            
            
                do {
                    dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)
                
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
                
            
            
                discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
                
            
            
            
                ownership = try container.decode(Ownership1.self, forKey: .ownership)
                
            
            
            
                do {
                    applyPriority = try container.decode(Int.self, forKey: .applyPriority)
                
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
                
            
            
                buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)
                
            
            
            
                do {
                    postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)
                
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
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    applyExclusive = try container.decode(String.self, forKey: .applyExclusive)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(author, forKey: .author)
            
            
            
            
            try? container.encodeIfPresent(stackable, forKey: .stackable)
            
            
            
            
            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)
            
            
            
            
            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
            
            
            
            
            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(ownership, forKey: .ownership)
            
            
            
            
            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
            
            
            
            
            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encode(applyExclusive, forKey: .applyExclusive)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
    
    /*
        Model: PromotionPartialUpdate
        Used By: Cart
    */

    class PromotionPartialUpdate: Codable {
        
        
        public var archive: Bool?
        
        public var schedule: PromotionSchedule?
        

        public enum CodingKeys: String, CodingKey {
            
            case archive = "archive"
            
            case schedule = "schedule"
            
        }

        public init(archive: Bool?, schedule: PromotionSchedule?) {
            
            self.archive = archive
            
            self.schedule = schedule
            
        }

        public func duplicate() -> PromotionPartialUpdate {
            let dict = self.dictionary!
            let copy = PromotionPartialUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    archive = try container.decode(Bool.self, forKey: .archive)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
    
    /*
        Model: CartItem
        Used By: Cart
    */

    class CartItem: Codable {
        
        
        public var size: String
        
        public var productId: String
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case productId = "product_id"
            
            case quantity = "quantity"
            
        }

        public init(productId: String, quantity: Int?, size: String) {
            
            self.size = size
            
            self.productId = productId
            
            self.quantity = quantity
            
        }

        public func duplicate() -> CartItem {
            let dict = self.dictionary!
            let copy = CartItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                productId = try container.decode(String.self, forKey: .productId)
                
            
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
    
    /*
        Model: OpenapiCartDetailsRequest
        Used By: Cart
    */

    class OpenapiCartDetailsRequest: Codable {
        
        
        public var cartItems: CartItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
        }

        public init(cartItems: CartItem?) {
            
            self.cartItems = cartItems
            
        }

        public func duplicate() -> OpenapiCartDetailsRequest {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartItems = try container.decode(CartItem.self, forKey: .cartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
        }
        
    }
    
    /*
        Model: RawBreakup
        Used By: Cart
    */

    class RawBreakup: Codable {
        
        
        public var subtotal: Double?
        
        public var fyndCash: Double?
        
        public var youSaved: Double?
        
        public var gstCharges: Double?
        
        public var mrpTotal: Double?
        
        public var vog: Double?
        
        public var deliveryCharge: Double?
        
        public var codCharge: Double?
        
        public var total: Double?
        
        public var discount: Double?
        
        public var coupon: Double?
        
        public var convenienceFee: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case subtotal = "subtotal"
            
            case fyndCash = "fynd_cash"
            
            case youSaved = "you_saved"
            
            case gstCharges = "gst_charges"
            
            case mrpTotal = "mrp_total"
            
            case vog = "vog"
            
            case deliveryCharge = "delivery_charge"
            
            case codCharge = "cod_charge"
            
            case total = "total"
            
            case discount = "discount"
            
            case coupon = "coupon"
            
            case convenienceFee = "convenience_fee"
            
        }

        public init(codCharge: Double?, convenienceFee: Double?, coupon: Double?, deliveryCharge: Double?, discount: Double?, fyndCash: Double?, gstCharges: Double?, mrpTotal: Double?, subtotal: Double?, total: Double?, vog: Double?, youSaved: Double?) {
            
            self.subtotal = subtotal
            
            self.fyndCash = fyndCash
            
            self.youSaved = youSaved
            
            self.gstCharges = gstCharges
            
            self.mrpTotal = mrpTotal
            
            self.vog = vog
            
            self.deliveryCharge = deliveryCharge
            
            self.codCharge = codCharge
            
            self.total = total
            
            self.discount = discount
            
            self.coupon = coupon
            
            self.convenienceFee = convenienceFee
            
        }

        public func duplicate() -> RawBreakup {
            let dict = self.dictionary!
            let copy = RawBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    subtotal = try container.decode(Double.self, forKey: .subtotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCash = try container.decode(Double.self, forKey: .fyndCash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    youSaved = try container.decode(Double.self, forKey: .youSaved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCharges = try container.decode(Double.self, forKey: .gstCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpTotal = try container.decode(Double.self, forKey: .mrpTotal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vog = try container.decode(Double.self, forKey: .vog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharge = try container.decode(Double.self, forKey: .codCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(Double.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    convenienceFee = try container.decode(Double.self, forKey: .convenienceFee)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subtotal, forKey: .subtotal)
            
            
            
            
            try? container.encodeIfPresent(fyndCash, forKey: .fyndCash)
            
            
            
            
            try? container.encodeIfPresent(youSaved, forKey: .youSaved)
            
            
            
            
            try? container.encodeIfPresent(gstCharges, forKey: .gstCharges)
            
            
            
            
            try? container.encodeIfPresent(mrpTotal, forKey: .mrpTotal)
            
            
            
            
            try? container.encodeIfPresent(vog, forKey: .vog)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
            
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(convenienceFee, forKey: .convenienceFee)
            
            
        }
        
    }
    
    /*
        Model: LoyaltyPoints
        Used By: Cart
    */

    class LoyaltyPoints: Codable {
        
        
        public var isApplied: Bool?
        
        public var total: Double?
        
        public var description: String?
        
        public var applicable: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case isApplied = "is_applied"
            
            case total = "total"
            
            case description = "description"
            
            case applicable = "applicable"
            
        }

        public init(applicable: Double?, description: String?, isApplied: Bool?, total: Double?) {
            
            self.isApplied = isApplied
            
            self.total = total
            
            self.description = description
            
            self.applicable = applicable
            
        }

        public func duplicate() -> LoyaltyPoints {
            let dict = self.dictionary!
            let copy = LoyaltyPoints(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    total = try container.decode(Double.self, forKey: .total)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicable = try container.decode(Double.self, forKey: .applicable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(applicable, forKey: .applicable)
            
            
        }
        
    }
    
    /*
        Model: DisplayBreakup
        Used By: Cart
    */

    class DisplayBreakup: Codable {
        
        
        public var currencySymbol: String?
        
        public var display: String?
        
        public var value: Double?
        
        public var key: String?
        
        public var message: [String]?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case display = "display"
            
            case value = "value"
            
            case key = "key"
            
            case message = "message"
            
            case currencyCode = "currency_code"
            
        }

        public init(currencyCode: String?, currencySymbol: String?, display: String?, key: String?, message: [String]?, value: Double?) {
            
            self.currencySymbol = currencySymbol
            
            self.display = display
            
            self.value = value
            
            self.key = key
            
            self.message = message
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> DisplayBreakup {
            let dict = self.dictionary!
            let copy = DisplayBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode([String].self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: CouponBreakup
        Used By: Cart
    */

    class CouponBreakup: Codable {
        
        
        public var value: Double?
        
        public var uid: String?
        
        public var code: String?
        
        public var type: String?
        
        public var message: String?
        
        public var isApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case uid = "uid"
            
            case code = "code"
            
            case type = "type"
            
            case message = "message"
            
            case isApplied = "is_applied"
            
        }

        public init(code: String?, isApplied: Bool?, message: String?, type: String?, uid: String?, value: Double?) {
            
            self.value = value
            
            self.uid = uid
            
            self.code = code
            
            self.type = type
            
            self.message = message
            
            self.isApplied = isApplied
            
        }

        public func duplicate() -> CouponBreakup {
            let dict = self.dictionary!
            let copy = CouponBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    value = try container.decode(Double.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isApplied = try container.decode(Bool.self, forKey: .isApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
        }
        
    }
    
    /*
        Model: CartBreakup
        Used By: Cart
    */

    class CartBreakup: Codable {
        
        
        public var raw: RawBreakup?
        
        public var loyaltyPoints: LoyaltyPoints?
        
        public var display: [DisplayBreakup]?
        
        public var coupon: CouponBreakup?
        

        public enum CodingKeys: String, CodingKey {
            
            case raw = "raw"
            
            case loyaltyPoints = "loyalty_points"
            
            case display = "display"
            
            case coupon = "coupon"
            
        }

        public init(coupon: CouponBreakup?, display: [DisplayBreakup]?, loyaltyPoints: LoyaltyPoints?, raw: RawBreakup?) {
            
            self.raw = raw
            
            self.loyaltyPoints = loyaltyPoints
            
            self.display = display
            
            self.coupon = coupon
            
        }

        public func duplicate() -> CartBreakup {
            let dict = self.dictionary!
            let copy = CartBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    raw = try container.decode(RawBreakup.self, forKey: .raw)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode([DisplayBreakup].self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(CouponBreakup.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(raw, forKey: .raw)
            
            
            
            
            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
    
    /*
        Model: ActionQuery
        Used By: Cart
    */

    class ActionQuery: Codable {
        
        
        public var productSlug: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case productSlug = "product_slug"
            
        }

        public init(productSlug: [String]?) {
            
            self.productSlug = productSlug
            
        }

        public func duplicate() -> ActionQuery {
            let dict = self.dictionary!
            let copy = ActionQuery(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productSlug = try container.decode([String].self, forKey: .productSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productSlug, forKey: .productSlug)
            
            
        }
        
    }
    
    /*
        Model: ProductAction
        Used By: Cart
    */

    class ProductAction: Codable {
        
        
        public var url: String?
        
        public var query: ActionQuery?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case query = "query"
            
            case type = "type"
            
        }

        public init(query: ActionQuery?, type: String?, url: String?) {
            
            self.url = url
            
            self.query = query
            
            self.type = type
            
        }

        public func duplicate() -> ProductAction {
            let dict = self.dictionary!
            let copy = ProductAction(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(ActionQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
    
    /*
        Model: BaseInfo
        Used By: Cart
    */

    class BaseInfo: Codable {
        
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String?, uid: Int?) {
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> BaseInfo {
            let dict = self.dictionary!
            let copy = BaseInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ProductImage
        Used By: Cart
    */

    class ProductImage: Codable {
        
        
        public var url: String?
        
        public var secureUrl: String?
        
        public var aspectRatio: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case secureUrl = "secure_url"
            
            case aspectRatio = "aspect_ratio"
            
        }

        public init(aspectRatio: String?, secureUrl: String?, url: String?) {
            
            self.url = url
            
            self.secureUrl = secureUrl
            
            self.aspectRatio = aspectRatio
            
        }

        public func duplicate() -> ProductImage {
            let dict = self.dictionary!
            let copy = ProductImage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    secureUrl = try container.decode(String.self, forKey: .secureUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)
            
            
            
            
            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
            
            
        }
        
    }
    
    /*
        Model: CategoryInfo
        Used By: Cart
    */

    class CategoryInfo: Codable {
        
        
        public var uid: Int?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String?, uid: Int?) {
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> CategoryInfo {
            let dict = self.dictionary!
            let copy = CategoryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: CartProduct
        Used By: Cart
    */

    class CartProduct: Codable {
        
        
        public var slug: String?
        
        public var action: ProductAction?
        
        public var brand: BaseInfo?
        
        public var images: [ProductImage]?
        
        public var name: String?
        
        public var uid: Int?
        
        public var type: String?
        
        public var categories: [CategoryInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case action = "action"
            
            case brand = "brand"
            
            case images = "images"
            
            case name = "name"
            
            case uid = "uid"
            
            case type = "type"
            
            case categories = "categories"
            
        }

        public init(action: ProductAction?, brand: BaseInfo?, categories: [CategoryInfo]?, images: [ProductImage]?, name: String?, slug: String?, type: String?, uid: Int?) {
            
            self.slug = slug
            
            self.action = action
            
            self.brand = brand
            
            self.images = images
            
            self.name = name
            
            self.uid = uid
            
            self.type = type
            
            self.categories = categories
            
        }

        public func duplicate() -> CartProduct {
            let dict = self.dictionary!
            let copy = CartProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(ProductAction.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(BaseInfo.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode([ProductImage].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categories = try container.decode([CategoryInfo].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
        }
        
    }
    
    /*
        Model: ProductAvailability
        Used By: Cart
    */

    class ProductAvailability: Codable {
        
        
        public var outOfStock: Bool?
        
        public var sizes: [String]?
        
        public var otherStoreQuantity: Int?
        
        public var deliverable: Bool?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case outOfStock = "out_of_stock"
            
            case sizes = "sizes"
            
            case otherStoreQuantity = "other_store_quantity"
            
            case deliverable = "deliverable"
            
            case isValid = "is_valid"
            
        }

        public init(deliverable: Bool?, isValid: Bool?, otherStoreQuantity: Int?, outOfStock: Bool?, sizes: [String]?) {
            
            self.outOfStock = outOfStock
            
            self.sizes = sizes
            
            self.otherStoreQuantity = otherStoreQuantity
            
            self.deliverable = deliverable
            
            self.isValid = isValid
            
        }

        public func duplicate() -> ProductAvailability {
            let dict = self.dictionary!
            let copy = ProductAvailability(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    outOfStock = try container.decode(Bool.self, forKey: .outOfStock)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sizes = try container.decode([String].self, forKey: .sizes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    otherStoreQuantity = try container.decode(Int.self, forKey: .otherStoreQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverable = try container.decode(Bool.self, forKey: .deliverable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)
            
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            
            try? container.encodeIfPresent(otherStoreQuantity, forKey: .otherStoreQuantity)
            
            
            
            
            try? container.encodeIfPresent(deliverable, forKey: .deliverable)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
    
    /*
        Model: ProductPrice
        Used By: Cart
    */

    class ProductPrice: Codable {
        
        
        public var addOn: Double?
        
        public var currencySymbol: String?
        
        public var marked: Double?
        
        public var selling: Double?
        
        public var effective: Double?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addOn = "add_on"
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case selling = "selling"
            
            case effective = "effective"
            
            case currencyCode = "currency_code"
            
        }

        public init(addOn: Double?, currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?, selling: Double?) {
            
            self.addOn = addOn
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.selling = selling
            
            self.effective = effective
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> ProductPrice {
            let dict = self.dictionary!
            let copy = ProductPrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addOn = try container.decode(Double.self, forKey: .addOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    selling = try container.decode(Double.self, forKey: .selling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addOn, forKey: .addOn)
            
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(selling, forKey: .selling)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: ProductPriceInfo
        Used By: Cart
    */

    class ProductPriceInfo: Codable {
        
        
        public var converted: ProductPrice?
        
        public var base: ProductPrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(base: ProductPrice?, converted: ProductPrice?) {
            
            self.converted = converted
            
            self.base = base
            
        }

        public func duplicate() -> ProductPriceInfo {
            let dict = self.dictionary!
            let copy = ProductPriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    converted = try container.decode(ProductPrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    base = try container.decode(ProductPrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
        }
        
    }
    
    /*
        Model: PromoMeta
        Used By: Cart
    */

    class PromoMeta: Codable {
        
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
        }

        public init(message: String?) {
            
            self.message = message
            
        }

        public func duplicate() -> PromoMeta {
            let dict = self.dictionary!
            let copy = PromoMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: CartProductIdentifer
        Used By: Cart
    */

    class CartProductIdentifer: Codable {
        
        
        public var identifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case identifier = "identifier"
            
        }

        public init(identifier: String?) {
            
            self.identifier = identifier
            
        }

        public func duplicate() -> CartProductIdentifer {
            let dict = self.dictionary!
            let copy = CartProductIdentifer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
    
    /*
        Model: BasePrice
        Used By: Cart
    */

    class BasePrice: Codable {
        
        
        public var currencySymbol: String?
        
        public var marked: Double?
        
        public var effective: Double?
        
        public var currencyCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencySymbol = "currency_symbol"
            
            case marked = "marked"
            
            case effective = "effective"
            
            case currencyCode = "currency_code"
            
        }

        public init(currencyCode: String?, currencySymbol: String?, effective: Double?, marked: Double?) {
            
            self.currencySymbol = currencySymbol
            
            self.marked = marked
            
            self.effective = effective
            
            self.currencyCode = currencyCode
            
        }

        public func duplicate() -> BasePrice {
            let dict = self.dictionary!
            let copy = BasePrice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencySymbol = try container.decode(String.self, forKey: .currencySymbol)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marked = try container.decode(Double.self, forKey: .marked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    effective = try container.decode(Double.self, forKey: .effective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
            
            
            
            
            try? container.encodeIfPresent(marked, forKey: .marked)
            
            
            
            
            try? container.encodeIfPresent(effective, forKey: .effective)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
        }
        
    }
    
    /*
        Model: ArticlePriceInfo
        Used By: Cart
    */

    class ArticlePriceInfo: Codable {
        
        
        public var converted: BasePrice?
        
        public var base: BasePrice?
        

        public enum CodingKeys: String, CodingKey {
            
            case converted = "converted"
            
            case base = "base"
            
        }

        public init(base: BasePrice?, converted: BasePrice?) {
            
            self.converted = converted
            
            self.base = base
            
        }

        public func duplicate() -> ArticlePriceInfo {
            let dict = self.dictionary!
            let copy = ArticlePriceInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    converted = try container.decode(BasePrice.self, forKey: .converted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    base = try container.decode(BasePrice.self, forKey: .base)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
        }
        
    }
    
    /*
        Model: ProductArticle
        Used By: Cart
    */

    class ProductArticle: Codable {
        
        
        public var productGroupTags: [String]?
        
        public var extraMeta: [String: Any]?
        
        public var seller: BaseInfo?
        
        public var price: ArticlePriceInfo?
        
        public var uid: String?
        
        public var size: String?
        
        public var type: String?
        
        public var store: BaseInfo?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case productGroupTags = "product_group_tags"
            
            case extraMeta = "extra_meta"
            
            case seller = "seller"
            
            case price = "price"
            
            case uid = "uid"
            
            case size = "size"
            
            case type = "type"
            
            case store = "store"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case quantity = "quantity"
            
        }

        public init(extraMeta: [String: Any]?, parentItemIdentifiers: [String: Any]?, price: ArticlePriceInfo?, productGroupTags: [String]?, quantity: Int?, seller: BaseInfo?, size: String?, store: BaseInfo?, type: String?, uid: String?) {
            
            self.productGroupTags = productGroupTags
            
            self.extraMeta = extraMeta
            
            self.seller = seller
            
            self.price = price
            
            self.uid = uid
            
            self.size = size
            
            self.type = type
            
            self.store = store
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.quantity = quantity
            
        }

        public func duplicate() -> ProductArticle {
            let dict = self.dictionary!
            let copy = ProductArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    productGroupTags = try container.decode([String].self, forKey: .productGroupTags)
                
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
                
            
            
                do {
                    seller = try container.decode(BaseInfo.self, forKey: .seller)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ArticlePriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(BaseInfo.self, forKey: .store)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productGroupTags, forKey: .productGroupTags)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
    
    /*
        Model: AppliedPromotion
        Used By: Cart
    */

    class AppliedPromotion: Codable {
        
        
        public var articleQuantity: Int?
        
        public var promotionType: String?
        
        public var amount: Double?
        
        public var mrpPromotion: Bool?
        
        public var promoId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case articleQuantity = "article_quantity"
            
            case promotionType = "promotion_type"
            
            case amount = "amount"
            
            case mrpPromotion = "mrp_promotion"
            
            case promoId = "promo_id"
            
        }

        public init(amount: Double?, articleQuantity: Int?, mrpPromotion: Bool?, promotionType: String?, promoId: String?) {
            
            self.articleQuantity = articleQuantity
            
            self.promotionType = promotionType
            
            self.amount = amount
            
            self.mrpPromotion = mrpPromotion
            
            self.promoId = promoId
            
        }

        public func duplicate() -> AppliedPromotion {
            let dict = self.dictionary!
            let copy = AppliedPromotion(dictionary: dict)!
            return copy
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
                    promotionType = try container.decode(String.self, forKey: .promotionType)
                
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
                    mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)
            
            
            
            
            try? container.encodeIfPresent(promoId, forKey: .promoId)
            
            
        }
        
    }
    
    /*
        Model: CartProductInfo
        Used By: Cart
    */

    class CartProductInfo: Codable {
        
        
        public var product: CartProduct?
        
        public var availability: ProductAvailability?
        
        public var price: ProductPriceInfo?
        
        public var promoMeta: PromoMeta?
        
        public var identifiers: CartProductIdentifer
        
        public var article: ProductArticle?
        
        public var key: String?
        
        public var discount: String?
        
        public var message: String?
        
        public var pricePerUnit: ProductPriceInfo?
        
        public var promotionApplied: [AppliedPromotion]?
        
        public var couponMessage: String?
        
        public var isSet: Bool?
        
        public var parentItemIdentifiers: [String: Any]?
        
        public var bulkOffer: [String: Any]?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case product = "product"
            
            case availability = "availability"
            
            case price = "price"
            
            case promoMeta = "promo_meta"
            
            case identifiers = "identifiers"
            
            case article = "article"
            
            case key = "key"
            
            case discount = "discount"
            
            case message = "message"
            
            case pricePerUnit = "price_per_unit"
            
            case promotionApplied = "promotion_applied"
            
            case couponMessage = "coupon_message"
            
            case isSet = "is_set"
            
            case parentItemIdentifiers = "parent_item_identifiers"
            
            case bulkOffer = "bulk_offer"
            
            case quantity = "quantity"
            
        }

        public init(article: ProductArticle?, availability: ProductAvailability?, bulkOffer: [String: Any]?, couponMessage: String?, discount: String?, identifiers: CartProductIdentifer, isSet: Bool?, key: String?, message: String?, parentItemIdentifiers: [String: Any]?, price: ProductPriceInfo?, pricePerUnit: ProductPriceInfo?, product: CartProduct?, promotionApplied: [AppliedPromotion]?, promoMeta: PromoMeta?, quantity: Int?) {
            
            self.product = product
            
            self.availability = availability
            
            self.price = price
            
            self.promoMeta = promoMeta
            
            self.identifiers = identifiers
            
            self.article = article
            
            self.key = key
            
            self.discount = discount
            
            self.message = message
            
            self.pricePerUnit = pricePerUnit
            
            self.promotionApplied = promotionApplied
            
            self.couponMessage = couponMessage
            
            self.isSet = isSet
            
            self.parentItemIdentifiers = parentItemIdentifiers
            
            self.bulkOffer = bulkOffer
            
            self.quantity = quantity
            
        }

        public func duplicate() -> CartProductInfo {
            let dict = self.dictionary!
            let copy = CartProductInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    product = try container.decode(CartProduct.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availability = try container.decode(ProductAvailability.self, forKey: .availability)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(ProductPriceInfo.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promoMeta = try container.decode(PromoMeta.self, forKey: .promoMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifiers = try container.decode(CartProductIdentifer.self, forKey: .identifiers)
                
            
            
            
                do {
                    article = try container.decode(ProductArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(String.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pricePerUnit = try container.decode(ProductPriceInfo.self, forKey: .pricePerUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionApplied = try container.decode([AppliedPromotion].self, forKey: .promotionApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponMessage = try container.decode(String.self, forKey: .couponMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentItemIdentifiers = try container.decode([String: Any].self, forKey: .parentItemIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkOffer = try container.decode([String: Any].self, forKey: .bulkOffer)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(availability, forKey: .availability)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(promoMeta, forKey: .promoMeta)
            
            
            
            
            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            
            try? container.encodeIfPresent(promotionApplied, forKey: .promotionApplied)
            
            
            
            
            try? container.encodeIfPresent(couponMessage, forKey: .couponMessage)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(parentItemIdentifiers, forKey: .parentItemIdentifiers)
            
            
            
            
            try? container.encodeIfPresent(bulkOffer, forKey: .bulkOffer)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
    
    /*
        Model: OpenapiCartDetailsResponse
        Used By: Cart
    */

    class OpenapiCartDetailsResponse: Codable {
        
        
        public var breakupValues: CartBreakup?
        
        public var message: String?
        
        public var items: [CartProductInfo]?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case breakupValues = "breakup_values"
            
            case message = "message"
            
            case items = "items"
            
            case isValid = "is_valid"
            
        }

        public init(breakupValues: CartBreakup?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            
            self.breakupValues = breakupValues
            
            self.message = message
            
            self.items = items
            
            self.isValid = isValid
            
        }

        public func duplicate() -> OpenapiCartDetailsResponse {
            let dict = self.dictionary!
            let copy = OpenapiCartDetailsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
    
    /*
        Model: OpenApiErrorResponse
        Used By: Cart
    */

    class OpenApiErrorResponse: Codable {
        
        
        public var errors: [String: Any]?
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(errors: [String: Any]?, message: String?, success: Bool?) {
            
            self.errors = errors
            
            self.success = success
            
            self.message = message
            
        }

        public func duplicate() -> OpenApiErrorResponse {
            let dict = self.dictionary!
            let copy = OpenApiErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    errors = try container.decode([String: Any].self, forKey: .errors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
    
    /*
        Model: ShippingAddress
        Used By: Cart
    */

    class ShippingAddress: Codable {
        
        
        public var landmark: String?
        
        public var meta: [String: Any]?
        
        public var areaCode: String
        
        public var name: String?
        
        public var city: String?
        
        public var email: String?
        
        public var area: String?
        
        public var addressType: String?
        
        public var countryCode: String?
        
        public var country: String?
        
        public var areaCodeSlug: String?
        
        public var state: String?
        
        public var pincode: Int?
        
        public var phone: Int?
        
        public var address: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case landmark = "landmark"
            
            case meta = "meta"
            
            case areaCode = "area_code"
            
            case name = "name"
            
            case city = "city"
            
            case email = "email"
            
            case area = "area"
            
            case addressType = "address_type"
            
            case countryCode = "country_code"
            
            case country = "country"
            
            case areaCodeSlug = "area_code_slug"
            
            case state = "state"
            
            case pincode = "pincode"
            
            case phone = "phone"
            
            case address = "address"
            
        }

        public init(address: String?, addressType: String?, area: String?, areaCode: String, areaCodeSlug: String?, city: String?, country: String?, countryCode: String?, email: String?, landmark: String?, meta: [String: Any]?, name: String?, phone: Int?, pincode: Int?, state: String?) {
            
            self.landmark = landmark
            
            self.meta = meta
            
            self.areaCode = areaCode
            
            self.name = name
            
            self.city = city
            
            self.email = email
            
            self.area = area
            
            self.addressType = addressType
            
            self.countryCode = countryCode
            
            self.country = country
            
            self.areaCodeSlug = areaCodeSlug
            
            self.state = state
            
            self.pincode = pincode
            
            self.phone = phone
            
            self.address = address
            
        }

        public func duplicate() -> ShippingAddress {
            let dict = self.dictionary!
            let copy = ShippingAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
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
                
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode(Int.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCartServiceabilityRequest
        Used By: Cart
    */

    class OpenApiCartServiceabilityRequest: Codable {
        
        
        public var cartItems: CartItem?
        
        public var shippingAddress: ShippingAddress
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
            case shippingAddress = "shipping_address"
            
        }

        public init(cartItems: CartItem?, shippingAddress: ShippingAddress) {
            
            self.cartItems = cartItems
            
            self.shippingAddress = shippingAddress
            
        }

        public func duplicate() -> OpenApiCartServiceabilityRequest {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartItems = try container.decode(CartItem.self, forKey: .cartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
        }
        
    }
    
    /*
        Model: PromiseTimestamp
        Used By: Cart
    */

    class PromiseTimestamp: Codable {
        
        
        public var max: Double?
        
        public var min: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: Double?, min: Double?) {
            
            self.max = max
            
            self.min = min
            
        }

        public func duplicate() -> PromiseTimestamp {
            let dict = self.dictionary!
            let copy = PromiseTimestamp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Double.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Double.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
        }
        
    }
    
    /*
        Model: PromiseFormatted
        Used By: Cart
    */

    class PromiseFormatted: Codable {
        
        
        public var max: String?
        
        public var min: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
        }

        public init(max: String?, min: String?) {
            
            self.max = max
            
            self.min = min
            
        }

        public func duplicate() -> PromiseFormatted {
            let dict = self.dictionary!
            let copy = PromiseFormatted(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(String.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(String.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
        }
        
    }
    
    /*
        Model: ShipmentPromise
        Used By: Cart
    */

    class ShipmentPromise: Codable {
        
        
        public var timestamp: PromiseTimestamp?
        
        public var formatted: PromiseFormatted?
        

        public enum CodingKeys: String, CodingKey {
            
            case timestamp = "timestamp"
            
            case formatted = "formatted"
            
        }

        public init(formatted: PromiseFormatted?, timestamp: PromiseTimestamp?) {
            
            self.timestamp = timestamp
            
            self.formatted = formatted
            
        }

        public func duplicate() -> ShipmentPromise {
            let dict = self.dictionary!
            let copy = ShipmentPromise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    timestamp = try container.decode(PromiseTimestamp.self, forKey: .timestamp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    formatted = try container.decode(PromiseFormatted.self, forKey: .formatted)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
            
            
            
            
            try? container.encodeIfPresent(formatted, forKey: .formatted)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCartServiceabilityResponse
        Used By: Cart
    */

    class OpenApiCartServiceabilityResponse: Codable {
        
        
        public var breakupValues: CartBreakup?
        
        public var items: [CartProductInfo]?
        
        public var deliveryPromise: ShipmentPromise?
        
        public var message: String?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case breakupValues = "breakup_values"
            
            case items = "items"
            
            case deliveryPromise = "delivery_promise"
            
            case message = "message"
            
            case isValid = "is_valid"
            
        }

        public init(breakupValues: CartBreakup?, deliveryPromise: ShipmentPromise?, isValid: Bool?, items: [CartProductInfo]?, message: String?) {
            
            self.breakupValues = breakupValues
            
            self.items = items
            
            self.deliveryPromise = deliveryPromise
            
            self.message = message
            
            self.isValid = isValid
            
        }

        public func duplicate() -> OpenApiCartServiceabilityResponse {
            let dict = self.dictionary!
            let copy = OpenApiCartServiceabilityResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryPromise = try container.decode(ShipmentPromise.self, forKey: .deliveryPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
    
    /*
        Model: CartItemMeta
        Used By: Cart
    */

    class CartItemMeta: Codable {
        
        
        public var groupId: String?
        
        public var primaryItem: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case groupId = "group_id"
            
            case primaryItem = "primary_item"
            
        }

        public init(groupId: String?, primaryItem: Bool?) {
            
            self.groupId = groupId
            
            self.primaryItem = primaryItem
            
        }

        public func duplicate() -> CartItemMeta {
            let dict = self.dictionary!
            let copy = CartItemMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    primaryItem = try container.decode(Bool.self, forKey: .primaryItem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)
            
            
        }
        
    }
    
    /*
        Model: MultiTenderPaymentMeta
        Used By: Cart
    */

    class MultiTenderPaymentMeta: Codable {
        
        
        public var extraMeta: [String: Any]?
        
        public var paymentGateway: String?
        
        public var orderId: String?
        
        public var paymentId: String?
        
        public var currentStatus: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case extraMeta = "extra_meta"
            
            case paymentGateway = "payment_gateway"
            
            case orderId = "order_id"
            
            case paymentId = "payment_id"
            
            case currentStatus = "current_status"
            
        }

        public init(currentStatus: String?, extraMeta: [String: Any]?, orderId: String?, paymentGateway: String?, paymentId: String?) {
            
            self.extraMeta = extraMeta
            
            self.paymentGateway = paymentGateway
            
            self.orderId = orderId
            
            self.paymentId = paymentId
            
            self.currentStatus = currentStatus
            
        }

        public func duplicate() -> MultiTenderPaymentMeta {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMeta(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentGateway = try container.decode(String.self, forKey: .paymentGateway)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encode(paymentGateway, forKey: .paymentGateway)
            
            
            
            
            try? container.encode(orderId, forKey: .orderId)
            
            
            
            
            try? container.encode(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encode(currentStatus, forKey: .currentStatus)
            
            
        }
        
    }
    
    /*
        Model: MultiTenderPaymentMethod
        Used By: Cart
    */

    class MultiTenderPaymentMethod: Codable {
        
        
        public var name: String?
        
        public var amount: Double
        
        public var meta: MultiTenderPaymentMeta?
        
        public var mode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case amount = "amount"
            
            case meta = "meta"
            
            case mode = "mode"
            
        }

        public init(amount: Double, meta: MultiTenderPaymentMeta?, mode: String, name: String?) {
            
            self.name = name
            
            self.amount = amount
            
            self.meta = meta
            
            self.mode = mode
            
        }

        public func duplicate() -> MultiTenderPaymentMethod {
            let dict = self.dictionary!
            let copy = MultiTenderPaymentMethod(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    meta = try container.decode(MultiTenderPaymentMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
        }
        
    }
    
    /*
        Model: OpenApiFiles
        Used By: Cart
    */

    class OpenApiFiles: Codable {
        
        
        public var key: String
        
        public var values: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case values = "values"
            
        }

        public init(key: String, values: [String]) {
            
            self.key = key
            
            self.values = values
            
        }

        public func duplicate() -> OpenApiFiles {
            let dict = self.dictionary!
            let copy = OpenApiFiles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                values = try container.decode([String].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
    
    /*
        Model: OpenApiOrderItem
        Used By: Cart
    */

    class OpenApiOrderItem: Codable {
        
        
        public var productId: Int
        
        public var extraMeta: [String: Any]?
        
        public var priceMarked: Double
        
        public var loyaltyDiscount: Double?
        
        public var employeeDiscount: Double?
        
        public var meta: CartItemMeta?
        
        public var size: String
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        
        public var codCharges: Double
        
        public var couponEffectiveDiscount: Double
        
        public var amountPaid: Double
        
        public var discount: Double
        
        public var priceEffective: Double
        
        public var deliveryCharges: Double
        
        public var cashbackApplied: Double
        
        public var files: [OpenApiFiles]?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case productId = "product_id"
            
            case extraMeta = "extra_meta"
            
            case priceMarked = "price_marked"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case employeeDiscount = "employee_discount"
            
            case meta = "meta"
            
            case size = "size"
            
            case paymentMethods = "payment_methods"
            
            case codCharges = "cod_charges"
            
            case couponEffectiveDiscount = "coupon_effective_discount"
            
            case amountPaid = "amount_paid"
            
            case discount = "discount"
            
            case priceEffective = "price_effective"
            
            case deliveryCharges = "delivery_charges"
            
            case cashbackApplied = "cashback_applied"
            
            case files = "files"
            
            case quantity = "quantity"
            
        }

        public init(amountPaid: Double, cashbackApplied: Double, codCharges: Double, couponEffectiveDiscount: Double, deliveryCharges: Double, discount: Double, employeeDiscount: Double?, extraMeta: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, meta: CartItemMeta?, paymentMethods: [MultiTenderPaymentMethod], priceEffective: Double, priceMarked: Double, productId: Int, quantity: Int?, size: String) {
            
            self.productId = productId
            
            self.extraMeta = extraMeta
            
            self.priceMarked = priceMarked
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.employeeDiscount = employeeDiscount
            
            self.meta = meta
            
            self.size = size
            
            self.paymentMethods = paymentMethods
            
            self.codCharges = codCharges
            
            self.couponEffectiveDiscount = couponEffectiveDiscount
            
            self.amountPaid = amountPaid
            
            self.discount = discount
            
            self.priceEffective = priceEffective
            
            self.deliveryCharges = deliveryCharges
            
            self.cashbackApplied = cashbackApplied
            
            self.files = files
            
            self.quantity = quantity
            
        }

        public func duplicate() -> OpenApiOrderItem {
            let dict = self.dictionary!
            let copy = OpenApiOrderItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                productId = try container.decode(Int.self, forKey: .productId)
                
            
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
            
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode(Double.self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(CartItemMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
                
            
            
            
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                do {
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
    
    /*
        Model: OpenApiPlatformCheckoutReq
        Used By: Cart
    */

    class OpenApiPlatformCheckoutReq: Codable {
        
        
        public var cartItems: [OpenApiOrderItem]
        
        public var affiliateOrderId: String?
        
        public var employeeDiscount: [String: Any]?
        
        public var couponValue: Double
        
        public var loyaltyDiscount: Double?
        
        public var files: [OpenApiFiles]?
        
        public var orderId: String?
        
        public var codCharges: Double
        
        public var currencyCode: String?
        
        public var coupon: String?
        
        public var cartValue: Double
        
        public var paymentMode: String?
        
        public var billingAddress: ShippingAddress
        
        public var couponCode: String
        
        public var shippingAddress: ShippingAddress?
        
        public var deliveryCharges: Double
        
        public var cashbackApplied: Double
        
        public var paymentMethods: [MultiTenderPaymentMethod]
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case employeeDiscount = "employee_discount"
            
            case couponValue = "coupon_value"
            
            case loyaltyDiscount = "loyalty_discount"
            
            case files = "files"
            
            case orderId = "order_id"
            
            case codCharges = "cod_charges"
            
            case currencyCode = "currency_code"
            
            case coupon = "coupon"
            
            case cartValue = "cart_value"
            
            case paymentMode = "payment_mode"
            
            case billingAddress = "billing_address"
            
            case couponCode = "coupon_code"
            
            case shippingAddress = "shipping_address"
            
            case deliveryCharges = "delivery_charges"
            
            case cashbackApplied = "cashback_applied"
            
            case paymentMethods = "payment_methods"
            
        }

        public init(affiliateOrderId: String?, billingAddress: ShippingAddress, cartItems: [OpenApiOrderItem], cartValue: Double, cashbackApplied: Double, codCharges: Double, coupon: String?, couponCode: String, couponValue: Double, currencyCode: String?, deliveryCharges: Double, employeeDiscount: [String: Any]?, files: [OpenApiFiles]?, loyaltyDiscount: Double?, orderId: String?, paymentMethods: [MultiTenderPaymentMethod], paymentMode: String?, shippingAddress: ShippingAddress?) {
            
            self.cartItems = cartItems
            
            self.affiliateOrderId = affiliateOrderId
            
            self.employeeDiscount = employeeDiscount
            
            self.couponValue = couponValue
            
            self.loyaltyDiscount = loyaltyDiscount
            
            self.files = files
            
            self.orderId = orderId
            
            self.codCharges = codCharges
            
            self.currencyCode = currencyCode
            
            self.coupon = coupon
            
            self.cartValue = cartValue
            
            self.paymentMode = paymentMode
            
            self.billingAddress = billingAddress
            
            self.couponCode = couponCode
            
            self.shippingAddress = shippingAddress
            
            self.deliveryCharges = deliveryCharges
            
            self.cashbackApplied = cashbackApplied
            
            self.paymentMethods = paymentMethods
            
        }

        public func duplicate() -> OpenApiPlatformCheckoutReq {
            let dict = self.dictionary!
            let copy = OpenApiPlatformCheckoutReq(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cartItems = try container.decode([OpenApiOrderItem].self, forKey: .cartItems)
                
            
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeDiscount = try container.decode([String: Any].self, forKey: .employeeDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                couponValue = try container.decode(Double.self, forKey: .couponValue)
                
            
            
            
                do {
                    loyaltyDiscount = try container.decode(Double.self, forKey: .loyaltyDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    files = try container.decode([OpenApiFiles].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                billingAddress = try container.decode(ShippingAddress.self, forKey: .billingAddress)
                
            
            
            
                couponCode = try container.decode(String.self, forKey: .couponCode)
                
            
            
            
                do {
                    shippingAddress = try container.decode(ShippingAddress.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
            
            
            
                paymentMethods = try container.decode([MultiTenderPaymentMethod].self, forKey: .paymentMethods)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(employeeDiscount, forKey: .employeeDiscount)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(loyaltyDiscount, forKey: .loyaltyDiscount)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
        }
        
    }
    
    /*
        Model: OpenApiCheckoutResponse
        Used By: Cart
    */

    class OpenApiCheckoutResponse: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        
        public var orderRefId: String?
        
        public var orderId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case orderRefId = "order_ref_id"
            
            case orderId = "order_id"
            
        }

        public init(message: String?, orderId: String, orderRefId: String?, success: Bool?) {
            
            self.success = success
            
            self.message = message
            
            self.orderRefId = orderRefId
            
            self.orderId = orderId
            
        }

        public func duplicate() -> OpenApiCheckoutResponse {
            let dict = self.dictionary!
            let copy = OpenApiCheckoutResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderRefId = try container.decode(String.self, forKey: .orderRefId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(orderRefId, forKey: .orderRefId)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
    
}
