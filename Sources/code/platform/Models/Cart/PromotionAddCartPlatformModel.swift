

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionAdd
         Used By: Cart
     */

    class PromotionAdd: Codable {
        public var discountRules: [DiscountRule]

        public var dateMeta: PromotionDateMeta?

        public var schedule: PromotionSchedule?

        public var promotionType: String

        public var promoGroup: String

        public var applyPriority: Int?

        public var applyAllDiscount: Bool?

        public var buyRules: [String: ItemCriteria]

        public var customJson: [String: Any]?

        public var applicationId: String

        public var stackable: Bool?

        public var applyExclusive: String?

        public var code: String?

        public var displayMeta: DisplayMeta1

        public var ownership: Ownership1

        public var mode: String

        public var calculateOn: String?

        public var visiblility: Visibility?

        public var currency: String?

        public var postOrderAction: PromotionAction?

        public var author: PromotionAuthor?

        public var restrictions: Restrictions1?

        public enum CodingKeys: String, CodingKey {
            case discountRules = "discount_rules"

            case dateMeta = "date_meta"

            case schedule = "_schedule"

            case promotionType = "promotion_type"

            case promoGroup = "promo_group"

            case applyPriority = "apply_priority"

            case applyAllDiscount = "apply_all_discount"

            case buyRules = "buy_rules"

            case customJson = "_custom_json"

            case applicationId = "application_id"

            case stackable

            case applyExclusive = "apply_exclusive"

            case code

            case displayMeta = "display_meta"

            case ownership

            case mode

            case calculateOn = "calculate_on"

            case visiblility

            case currency

            case postOrderAction = "post_order_action"

            case author

            case restrictions
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.discountRules = discountRules

            self.dateMeta = dateMeta

            self.schedule = schedule

            self.promotionType = promotionType

            self.promoGroup = promoGroup

            self.applyPriority = applyPriority

            self.applyAllDiscount = applyAllDiscount

            self.buyRules = buyRules

            self.customJson = customJson

            self.applicationId = applicationId

            self.stackable = stackable

            self.applyExclusive = applyExclusive

            self.code = code

            self.displayMeta = displayMeta

            self.ownership = ownership

            self.mode = mode

            self.calculateOn = calculateOn

            self.visiblility = visiblility

            self.currency = currency

            self.postOrderAction = postOrderAction

            self.author = author

            self.restrictions = restrictions
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

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

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

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

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

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
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
        }
    }
}
