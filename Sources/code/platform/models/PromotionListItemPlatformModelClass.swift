

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var currency: String?

        public var postOrderAction: PromotionAction?

        public var code: String?

        public var discountRules: [DiscountRule]

        public var stackable: Bool?

        public var author: PromotionAuthor?

        public var customJson: [String: Any]?

        public var promotionType: String

        public var applyPriority: Int?

        public var displayMeta: DisplayMeta1

        public var mode: String

        public var applicationId: String

        public var ownership: Ownership1

        public var applyAllDiscount: Bool?

        public var promoGroup: String

        public var applyExclusive: String?

        public var dateMeta: PromotionDateMeta?

        public var schedule: PromotionSchedule?

        public var buyRules: [String: ItemCriteria]

        public var restrictions: Restrictions1?

        public var visiblility: Visibility?

        public enum CodingKeys: String, CodingKey {
            case currency

            case postOrderAction = "post_order_action"

            case code

            case discountRules = "discount_rules"

            case stackable

            case author

            case customJson = "_custom_json"

            case promotionType = "promotion_type"

            case applyPriority = "apply_priority"

            case displayMeta = "display_meta"

            case mode

            case applicationId = "application_id"

            case ownership

            case applyAllDiscount = "apply_all_discount"

            case promoGroup = "promo_group"

            case applyExclusive = "apply_exclusive"

            case dateMeta = "date_meta"

            case schedule = "_schedule"

            case buyRules = "buy_rules"

            case restrictions

            case visiblility
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.currency = currency

            self.postOrderAction = postOrderAction

            self.code = code

            self.discountRules = discountRules

            self.stackable = stackable

            self.author = author

            self.customJson = customJson

            self.promotionType = promotionType

            self.applyPriority = applyPriority

            self.displayMeta = displayMeta

            self.mode = mode

            self.applicationId = applicationId

            self.ownership = ownership

            self.applyAllDiscount = applyAllDiscount

            self.promoGroup = promoGroup

            self.applyExclusive = applyExclusive

            self.dateMeta = dateMeta

            self.schedule = schedule

            self.buyRules = buyRules

            self.restrictions = restrictions

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

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

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

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            mode = try container.decode(String.self, forKey: .mode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

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
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)
        }
    }
}
