import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var stackable: Bool?

        public var postOrderAction: PromotionAction?

        public var dateMeta: PromotionDateMeta?

        public var mode: String

        public var author: PromotionAuthor?

        public var code: String?

        public var restrictions: Restrictions1?

        public var buyRules: [String: ItemCriteria]

        public var currency: String?

        public var applicationId: String

        public var applyExclusive: String?

        public var applyPriority: Int?

        public var applyAllDiscount: Bool?

        public var visiblility: Visibility?

        public var promoGroup: String

        public var customJson: [String: Any]?

        public var promotionType: String

        public var displayMeta: DisplayMeta1

        public var schedule: PromotionSchedule?

        public var ownership: Ownership1

        public var discountRules: [DiscountRule]

        public enum CodingKeys: String, CodingKey {
            case stackable

            case postOrderAction = "post_order_action"

            case dateMeta = "date_meta"

            case mode

            case author

            case code

            case restrictions

            case buyRules = "buy_rules"

            case currency

            case applicationId = "application_id"

            case applyExclusive = "apply_exclusive"

            case applyPriority = "apply_priority"

            case applyAllDiscount = "apply_all_discount"

            case visiblility

            case promoGroup = "promo_group"

            case customJson = "_custom_json"

            case promotionType = "promotion_type"

            case displayMeta = "display_meta"

            case schedule = "_schedule"

            case ownership

            case discountRules = "discount_rules"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.stackable = stackable

            self.postOrderAction = postOrderAction

            self.dateMeta = dateMeta

            self.mode = mode

            self.author = author

            self.code = code

            self.restrictions = restrictions

            self.buyRules = buyRules

            self.currency = currency

            self.applicationId = applicationId

            self.applyExclusive = applyExclusive

            self.applyPriority = applyPriority

            self.applyAllDiscount = applyAllDiscount

            self.visiblility = visiblility

            self.promoGroup = promoGroup

            self.customJson = customJson

            self.promotionType = promotionType

            self.displayMeta = displayMeta

            self.schedule = schedule

            self.ownership = ownership

            self.discountRules = discountRules
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
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
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

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

            mode = try container.decode(String.self, forKey: .mode)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

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
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

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
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
        }
    }
}
