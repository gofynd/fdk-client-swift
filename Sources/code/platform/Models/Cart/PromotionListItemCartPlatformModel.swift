

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var displayMeta: DisplayMetaSchema1

        public var customJson: [String: Any]?

        public var stackable: Bool?

        public var promotionType: String

        public var dateMeta: PromotionDateMetaSchema?

        public var applyAllDiscount: Bool?

        public var mode: String

        public var discountRules: [DiscountRuleSchema]

        public var schedule: PromotionScheduleSchema?

        public var ownership: OwnershipSchema1

        public var visiblility: VisibilitySchema?

        public var calculateOn: String?

        public var promoGroup: String

        public var currency: String?

        public var postOrderAction: PromotionActionSchema?

        public var applyPriority: Int?

        public var restrictions: RestrictionsSchema1?

        public var applicationId: String

        public var buyRules: [String: ItemCriteriaSchema]

        public var author: PromotionAuthorSchema?

        public var applyExclusive: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case displayMeta = "display_meta"

            case customJson = "_custom_json"

            case stackable

            case promotionType = "promotion_type"

            case dateMeta = "date_meta"

            case applyAllDiscount = "apply_all_discount"

            case mode

            case discountRules = "discount_rules"

            case schedule = "_schedule"

            case ownership

            case visiblility

            case calculateOn = "calculate_on"

            case promoGroup = "promo_group"

            case currency

            case postOrderAction = "post_order_action"

            case applyPriority = "apply_priority"

            case restrictions

            case applicationId = "application_id"

            case buyRules = "buy_rules"

            case author

            case applyExclusive = "apply_exclusive"

            case code
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthorSchema? = nil, buyRules: [String: ItemCriteriaSchema], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMetaSchema? = nil, discountRules: [DiscountRuleSchema], displayMeta: DisplayMetaSchema1, mode: String, ownership: OwnershipSchema1, postOrderAction: PromotionActionSchema? = nil, promotionType: String, promoGroup: String, restrictions: RestrictionsSchema1? = nil, stackable: Bool? = nil, visiblility: VisibilitySchema? = nil, customJson: [String: Any]? = nil, schedule: PromotionScheduleSchema? = nil) {
            self.displayMeta = displayMeta

            self.customJson = customJson

            self.stackable = stackable

            self.promotionType = promotionType

            self.dateMeta = dateMeta

            self.applyAllDiscount = applyAllDiscount

            self.mode = mode

            self.discountRules = discountRules

            self.schedule = schedule

            self.ownership = ownership

            self.visiblility = visiblility

            self.calculateOn = calculateOn

            self.promoGroup = promoGroup

            self.currency = currency

            self.postOrderAction = postOrderAction

            self.applyPriority = applyPriority

            self.restrictions = restrictions

            self.applicationId = applicationId

            self.buyRules = buyRules

            self.author = author

            self.applyExclusive = applyExclusive

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayMeta = try container.decode(DisplayMetaSchema1.self, forKey: .displayMeta)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                dateMeta = try container.decode(PromotionDateMetaSchema.self, forKey: .dateMeta)

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

            mode = try container.decode(String.self, forKey: .mode)

            discountRules = try container.decode([DiscountRuleSchema].self, forKey: .discountRules)

            do {
                schedule = try container.decode(PromotionScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema1.self, forKey: .ownership)

            do {
                visiblility = try container.decode(VisibilitySchema.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                currency = try container.decode(String.self, forKey: .currency)

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
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            buyRules = try container.decode([String: ItemCriteriaSchema].self, forKey: .buyRules)

            do {
                author = try container.decode(PromotionAuthorSchema.self, forKey: .author)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
