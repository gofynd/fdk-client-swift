

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionAdd
         Used By: Cart
     */

    class PromotionAdd: Codable {
        public var postOrderAction: PromotionAction?

        public var applyExclusive: String?

        public var applyPriority: Int?

        public var dateMeta: PromotionDateMeta?

        public var promotionType: String

        public var displayMeta: DisplayMeta1

        public var discountRules: [DiscountRule]

        public var customJson: [String: Any]?

        public var buyRules: [String: ItemCriteria]

        public var ownership: Ownership1

        public var code: String?

        public var mode: String

        public var stackable: Bool?

        public var schedule: PromotionSchedule?

        public var applicationId: String

        public var visiblility: Visibility?

        public var calculateOn: String?

        public var applyAllDiscount: Bool?

        public var restrictions: Restrictions1?

        public var author: PromotionAuthor?

        public var promoGroup: String

        public var currency: String?

        public enum CodingKeys: String, CodingKey {
            case postOrderAction = "post_order_action"

            case applyExclusive = "apply_exclusive"

            case applyPriority = "apply_priority"

            case dateMeta = "date_meta"

            case promotionType = "promotion_type"

            case displayMeta = "display_meta"

            case discountRules = "discount_rules"

            case customJson = "_custom_json"

            case buyRules = "buy_rules"

            case ownership

            case code

            case mode

            case stackable

            case schedule = "_schedule"

            case applicationId = "application_id"

            case visiblility

            case calculateOn = "calculate_on"

            case applyAllDiscount = "apply_all_discount"

            case restrictions

            case author

            case promoGroup = "promo_group"

            case currency
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.postOrderAction = postOrderAction

            self.applyExclusive = applyExclusive

            self.applyPriority = applyPriority

            self.dateMeta = dateMeta

            self.promotionType = promotionType

            self.displayMeta = displayMeta

            self.discountRules = discountRules

            self.customJson = customJson

            self.buyRules = buyRules

            self.ownership = ownership

            self.code = code

            self.mode = mode

            self.stackable = stackable

            self.schedule = schedule

            self.applicationId = applicationId

            self.visiblility = visiblility

            self.calculateOn = calculateOn

            self.applyAllDiscount = applyAllDiscount

            self.restrictions = restrictions

            self.author = author

            self.promoGroup = promoGroup

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

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
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(PromotionDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

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

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
