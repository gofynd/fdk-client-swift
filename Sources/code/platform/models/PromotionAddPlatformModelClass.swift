

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionAdd
         Used By: Cart
     */

    class PromotionAdd: Codable {
        public var stackable: Bool?

        public var dateMeta: PromotionDateMeta?

        public var applyAllDiscount: Bool?

        public var displayMeta: DisplayMeta1

        public var currency: String?

        public var ownership: Ownership1

        public var mode: String

        public var visiblility: Visibility?

        public var applyPriority: Int?

        public var applyExclusive: String?

        public var promotionType: String

        public var code: String?

        public var author: PromotionAuthor?

        public var applicationId: String

        public var schedule: PromotionSchedule?

        public var promoGroup: String

        public var buyRules: [String: ItemCriteria]

        public var restrictions: Restrictions1?

        public var discountRules: [DiscountRule]

        public var customJson: [String: Any]?

        public var postOrderAction: PromotionAction?

        public enum CodingKeys: String, CodingKey {
            case stackable

            case dateMeta = "date_meta"

            case applyAllDiscount = "apply_all_discount"

            case displayMeta = "display_meta"

            case currency

            case ownership

            case mode

            case visiblility

            case applyPriority = "apply_priority"

            case applyExclusive = "apply_exclusive"

            case promotionType = "promotion_type"

            case code

            case author

            case applicationId = "application_id"

            case schedule = "_schedule"

            case promoGroup = "promo_group"

            case buyRules = "buy_rules"

            case restrictions

            case discountRules = "discount_rules"

            case customJson = "_custom_json"

            case postOrderAction = "post_order_action"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.stackable = stackable

            self.dateMeta = dateMeta

            self.applyAllDiscount = applyAllDiscount

            self.displayMeta = displayMeta

            self.currency = currency

            self.ownership = ownership

            self.mode = mode

            self.visiblility = visiblility

            self.applyPriority = applyPriority

            self.applyExclusive = applyExclusive

            self.promotionType = promotionType

            self.code = code

            self.author = author

            self.applicationId = applicationId

            self.schedule = schedule

            self.promoGroup = promoGroup

            self.buyRules = buyRules

            self.restrictions = restrictions

            self.discountRules = discountRules

            self.customJson = customJson

            self.postOrderAction = postOrderAction
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

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

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

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
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)
        }
    }
}
