

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionUpdateSchema
         Used By: Cart
     */

    class PromotionUpdateSchema: Codable {
        public var dateMeta: PromotionDateMetaSchema?

        public var stackable: Bool?

        public var applicationId: String

        public var schedule: PromotionScheduleSchema?

        public var discountRules: [DiscountRuleSchema]

        public var restrictions: RestrictionsSchema1?

        public var customJson: [String: Any]?

        public var author: PromotionAuthorSchema?

        public var applyAllDiscount: Bool?

        public var buyRules: [String: ItemCriteriaSchema]

        public var displayMeta: DisplayMetaSchema1

        public var mode: String

        public var promotionType: String

        public var currency: String?

        public var applyPriority: Int?

        public var visiblility: VisibilitySchema?

        public var applyExclusive: String?

        public var code: String?

        public var ownership: OwnershipSchema1

        public var promoGroup: String

        public var calculateOn: String?

        public var postOrderAction: PromotionActionSchema?

        public enum CodingKeys: String, CodingKey {
            case dateMeta = "date_meta"

            case stackable

            case applicationId = "application_id"

            case schedule = "_schedule"

            case discountRules = "discount_rules"

            case restrictions

            case customJson = "_custom_json"

            case author

            case applyAllDiscount = "apply_all_discount"

            case buyRules = "buy_rules"

            case displayMeta = "display_meta"

            case mode

            case promotionType = "promotion_type"

            case currency

            case applyPriority = "apply_priority"

            case visiblility

            case applyExclusive = "apply_exclusive"

            case code

            case ownership

            case promoGroup = "promo_group"

            case calculateOn = "calculate_on"

            case postOrderAction = "post_order_action"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthorSchema? = nil, buyRules: [String: ItemCriteriaSchema], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMetaSchema? = nil, discountRules: [DiscountRuleSchema], displayMeta: DisplayMetaSchema1, mode: String, ownership: OwnershipSchema1, postOrderAction: PromotionActionSchema? = nil, promotionType: String, promoGroup: String, restrictions: RestrictionsSchema1? = nil, stackable: Bool? = nil, visiblility: VisibilitySchema? = nil, customJson: [String: Any]? = nil, schedule: PromotionScheduleSchema? = nil) {
            self.dateMeta = dateMeta

            self.stackable = stackable

            self.applicationId = applicationId

            self.schedule = schedule

            self.discountRules = discountRules

            self.restrictions = restrictions

            self.customJson = customJson

            self.author = author

            self.applyAllDiscount = applyAllDiscount

            self.buyRules = buyRules

            self.displayMeta = displayMeta

            self.mode = mode

            self.promotionType = promotionType

            self.currency = currency

            self.applyPriority = applyPriority

            self.visiblility = visiblility

            self.applyExclusive = applyExclusive

            self.code = code

            self.ownership = ownership

            self.promoGroup = promoGroup

            self.calculateOn = calculateOn

            self.postOrderAction = postOrderAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateMeta = try container.decode(PromotionDateMetaSchema.self, forKey: .dateMeta)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                schedule = try container.decode(PromotionScheduleSchema.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRuleSchema].self, forKey: .discountRules)

            do {
                restrictions = try container.decode(RestrictionsSchema1.self, forKey: .restrictions)

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

            buyRules = try container.decode([String: ItemCriteriaSchema].self, forKey: .buyRules)

            displayMeta = try container.decode(DisplayMetaSchema1.self, forKey: .displayMeta)

            mode = try container.decode(String.self, forKey: .mode)

            promotionType = try container.decode(String.self, forKey: .promotionType)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(OwnershipSchema1.self, forKey: .ownership)

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
        }
    }
}
