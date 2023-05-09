

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var schedule: PromotionScheduleSchema?

        public var displayMeta: DisplayMetaSchema1

        public var stackable: Bool?

        public var promoGroup: String

        public var calculateOn: String?

        public var visiblility: VisibilitySchema?

        public var ownership: OwnershipSchema1

        public var currency: String?

        public var applyPriority: Int?

        public var postOrderAction: PromotionActionSchema?

        public var dateMeta: PromotionDateMetaSchema?

        public var applicationId: String

        public var restrictions: RestrictionsSchema1?

        public var mode: String

        public var buyRules: [String: ItemCriteriaSchema]

        public var discountRules: [DiscountRuleSchema]

        public var applyExclusive: String?

        public var promotionType: String

        public var author: PromotionAuthorSchema?

        public var applyAllDiscount: Bool?

        public var code: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case displayMeta = "display_meta"

            case stackable

            case promoGroup = "promo_group"

            case calculateOn = "calculate_on"

            case visiblility

            case ownership

            case currency

            case applyPriority = "apply_priority"

            case postOrderAction = "post_order_action"

            case dateMeta = "date_meta"

            case applicationId = "application_id"

            case restrictions

            case mode

            case buyRules = "buy_rules"

            case discountRules = "discount_rules"

            case applyExclusive = "apply_exclusive"

            case promotionType = "promotion_type"

            case author

            case applyAllDiscount = "apply_all_discount"

            case code

            case customJson = "_custom_json"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthorSchema? = nil, buyRules: [String: ItemCriteriaSchema], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMetaSchema? = nil, discountRules: [DiscountRuleSchema], displayMeta: DisplayMetaSchema1, mode: String, ownership: OwnershipSchema1, postOrderAction: PromotionActionSchema? = nil, promotionType: String, promoGroup: String, restrictions: RestrictionsSchema1? = nil, stackable: Bool? = nil, visiblility: VisibilitySchema? = nil, customJson: [String: Any]? = nil, schedule: PromotionScheduleSchema? = nil) {
            self.schedule = schedule

            self.displayMeta = displayMeta

            self.stackable = stackable

            self.promoGroup = promoGroup

            self.calculateOn = calculateOn

            self.visiblility = visiblility

            self.ownership = ownership

            self.currency = currency

            self.applyPriority = applyPriority

            self.postOrderAction = postOrderAction

            self.dateMeta = dateMeta

            self.applicationId = applicationId

            self.restrictions = restrictions

            self.mode = mode

            self.buyRules = buyRules

            self.discountRules = discountRules

            self.applyExclusive = applyExclusive

            self.promotionType = promotionType

            self.author = author

            self.applyAllDiscount = applyAllDiscount

            self.code = code

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(PromotionScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMetaSchema1.self, forKey: .displayMeta)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visiblility = try container.decode(VisibilitySchema.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema1.self, forKey: .ownership)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                postOrderAction = try container.decode(PromotionActionSchema.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(PromotionDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                restrictions = try container.decode(RestrictionsSchema1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            buyRules = try container.decode([String: ItemCriteriaSchema].self, forKey: .buyRules)

            discountRules = try container.decode([DiscountRuleSchema].self, forKey: .discountRules)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                author = try container.decode(PromotionAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
