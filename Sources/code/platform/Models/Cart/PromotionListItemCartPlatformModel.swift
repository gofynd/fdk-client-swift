

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var applyPriority: Int?

        public var ownership: OwnershipSchema1

        public var author: PromotionAuthorSchema?

        public var applyAllDiscount: Bool?

        public var currency: String?

        public var code: String?

        public var applicationId: String

        public var postOrderAction: PromotionActionSchema?

        public var buyRules: [String: ItemCriteriaSchema]

        public var stackable: Bool?

        public var displayMeta: DisplayMetaSchema1

        public var dateMeta: PromotionDateMetaSchema?

        public var mode: String

        public var calculateOn: String?

        public var schedule: PromotionScheduleSchema?

        public var restrictions: RestrictionsSchema1?

        public var promotionType: String

        public var customJson: [String: Any]?

        public var discountRules: [DiscountRuleSchema]

        public var promoGroup: String

        public var visiblility: VisibilitySchema?

        public var applyExclusive: String?

        public enum CodingKeys: String, CodingKey {
            case applyPriority = "apply_priority"

            case ownership

            case author

            case applyAllDiscount = "apply_all_discount"

            case currency

            case code

            case applicationId = "application_id"

            case postOrderAction = "post_order_action"

            case buyRules = "buy_rules"

            case stackable

            case displayMeta = "display_meta"

            case dateMeta = "date_meta"

            case mode

            case calculateOn = "calculate_on"

            case schedule = "_schedule"

            case restrictions

            case promotionType = "promotion_type"

            case customJson = "_custom_json"

            case discountRules = "discount_rules"

            case promoGroup = "promo_group"

            case visiblility

            case applyExclusive = "apply_exclusive"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthorSchema? = nil, buyRules: [String: ItemCriteriaSchema], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMetaSchema? = nil, discountRules: [DiscountRuleSchema], displayMeta: DisplayMetaSchema1, mode: String, ownership: OwnershipSchema1, postOrderAction: PromotionActionSchema? = nil, promotionType: String, promoGroup: String, restrictions: RestrictionsSchema1? = nil, stackable: Bool? = nil, visiblility: VisibilitySchema? = nil, customJson: [String: Any]? = nil, schedule: PromotionScheduleSchema? = nil) {
            self.applyPriority = applyPriority

            self.ownership = ownership

            self.author = author

            self.applyAllDiscount = applyAllDiscount

            self.currency = currency

            self.code = code

            self.applicationId = applicationId

            self.postOrderAction = postOrderAction

            self.buyRules = buyRules

            self.stackable = stackable

            self.displayMeta = displayMeta

            self.dateMeta = dateMeta

            self.mode = mode

            self.calculateOn = calculateOn

            self.schedule = schedule

            self.restrictions = restrictions

            self.promotionType = promotionType

            self.customJson = customJson

            self.discountRules = discountRules

            self.promoGroup = promoGroup

            self.visiblility = visiblility

            self.applyExclusive = applyExclusive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema1.self, forKey: .ownership)

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
                currency = try container.decode(String.self, forKey: .currency)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                postOrderAction = try container.decode(PromotionActionSchema.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteriaSchema].self, forKey: .buyRules)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMetaSchema1.self, forKey: .displayMeta)

            do {
                dateMeta = try container.decode(PromotionDateMetaSchema.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(RestrictionsSchema1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRuleSchema].self, forKey: .discountRules)

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                visiblility = try container.decode(VisibilitySchema.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encode(applyExclusive, forKey: .applyExclusive)
        }
    }
}
