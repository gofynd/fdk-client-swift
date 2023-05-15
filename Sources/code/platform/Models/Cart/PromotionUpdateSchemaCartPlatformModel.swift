

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionUpdateSchema
         Used By: Cart
     */

    class PromotionUpdateSchema: Codable {
        public var currency: String?

        public var applicationId: String

        public var customJson: [String: Any]?

        public var calculateOn: String?

        public var mode: String

        public var code: String?

        public var ownership: OwnershipSchema1

        public var applyPriority: Int?

        public var discountRules: [DiscountRuleSchema]

        public var promoGroup: String

        public var applyAllDiscount: Bool?

        public var applyExclusive: String?

        public var displayMeta: DisplayMetaSchema1

        public var dateMeta: PromotionDateMetaSchema?

        public var postOrderAction: PromotionActionSchema?

        public var restrictions: RestrictionsSchema1?

        public var schedule: PromotionScheduleSchema?

        public var buyRules: [String: ItemCriteriaSchema]

        public var stackable: Bool?

        public var author: PromotionAuthorSchema?

        public var promotionType: String

        public var visiblility: VisibilitySchema?

        public enum CodingKeys: String, CodingKey {
            case currency

            case applicationId = "application_id"

            case customJson = "_custom_json"

            case calculateOn = "calculate_on"

            case mode

            case code

            case ownership

            case applyPriority = "apply_priority"

            case discountRules = "discount_rules"

            case promoGroup = "promo_group"

            case applyAllDiscount = "apply_all_discount"

            case applyExclusive = "apply_exclusive"

            case displayMeta = "display_meta"

            case dateMeta = "date_meta"

            case postOrderAction = "post_order_action"

            case restrictions

            case schedule = "_schedule"

            case buyRules = "buy_rules"

            case stackable

            case author

            case promotionType = "promotion_type"

            case visiblility
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthorSchema? = nil, buyRules: [String: ItemCriteriaSchema], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMetaSchema? = nil, discountRules: [DiscountRuleSchema], displayMeta: DisplayMetaSchema1, mode: String, ownership: OwnershipSchema1, postOrderAction: PromotionActionSchema? = nil, promotionType: String, promoGroup: String, restrictions: RestrictionsSchema1? = nil, stackable: Bool? = nil, visiblility: VisibilitySchema? = nil, customJson: [String: Any]? = nil, schedule: PromotionScheduleSchema? = nil) {
            self.currency = currency

            self.applicationId = applicationId

            self.customJson = customJson

            self.calculateOn = calculateOn

            self.mode = mode

            self.code = code

            self.ownership = ownership

            self.applyPriority = applyPriority

            self.discountRules = discountRules

            self.promoGroup = promoGroup

            self.applyAllDiscount = applyAllDiscount

            self.applyExclusive = applyExclusive

            self.displayMeta = displayMeta

            self.dateMeta = dateMeta

            self.postOrderAction = postOrderAction

            self.restrictions = restrictions

            self.schedule = schedule

            self.buyRules = buyRules

            self.stackable = stackable

            self.author = author

            self.promotionType = promotionType

            self.visiblility = visiblility
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            mode = try container.decode(String.self, forKey: .mode)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema1.self, forKey: .ownership)

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRuleSchema].self, forKey: .discountRules)

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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

            displayMeta = try container.decode(DisplayMetaSchema1.self, forKey: .displayMeta)

            do {
                dateMeta = try container.decode(PromotionDateMetaSchema.self, forKey: .dateMeta)

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
                restrictions = try container.decode(RestrictionsSchema1.self, forKey: .restrictions)

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

            buyRules = try container.decode([String: ItemCriteriaSchema].self, forKey: .buyRules)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(PromotionAuthorSchema.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                visiblility = try container.decode(VisibilitySchema.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
        }
    }
}
