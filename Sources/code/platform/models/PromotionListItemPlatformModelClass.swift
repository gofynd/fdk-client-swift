

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var stackable: Bool?

        public var code: String?

        public var promoGroup: String

        public var currency: String?

        public var ownership: Ownership1

        public var mode: String

        public var applyExclusive: String?

        public var buyRules: [String: ItemCriteria]

        public var discountRules: [DiscountRule]

        public var postOrderAction: PromotionAction?

        public var promotionType: String

        public var applyPriority: Int?

        public var customJson: [String: Any]?

        public var dateMeta: PromotionDateMeta?

        public var applyAllDiscount: Bool?

        public var applicationId: String

        public var author: PromotionAuthor?

        public var displayMeta: DisplayMeta1

        public var visiblility: Visibility?

        public var schedule: PromotionSchedule?

        public var restrictions: Restrictions1?

        public enum CodingKeys: String, CodingKey {
            case stackable

            case code

            case promoGroup = "promo_group"

            case currency

            case ownership

            case mode

            case applyExclusive = "apply_exclusive"

            case buyRules = "buy_rules"

            case discountRules = "discount_rules"

            case postOrderAction = "post_order_action"

            case promotionType = "promotion_type"

            case applyPriority = "apply_priority"

            case customJson = "_custom_json"

            case dateMeta = "date_meta"

            case applyAllDiscount = "apply_all_discount"

            case applicationId = "application_id"

            case author

            case displayMeta = "display_meta"

            case visiblility

            case schedule = "_schedule"

            case restrictions
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.stackable = stackable

            self.code = code

            self.promoGroup = promoGroup

            self.currency = currency

            self.ownership = ownership

            self.mode = mode

            self.applyExclusive = applyExclusive

            self.buyRules = buyRules

            self.discountRules = discountRules

            self.postOrderAction = postOrderAction

            self.promotionType = promotionType

            self.applyPriority = applyPriority

            self.customJson = customJson

            self.dateMeta = dateMeta

            self.applyAllDiscount = applyAllDiscount

            self.applicationId = applicationId

            self.author = author

            self.displayMeta = displayMeta

            self.visiblility = visiblility

            self.schedule = schedule

            self.restrictions = restrictions
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
                code = try container.decode(String.self, forKey: .code)

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

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

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

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)
        }
    }
}
