import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var postOrderAction: PromotionAction?

        public var promoGroup: String

        public var visiblility: Visibility?

        public var promotionType: String

        public var discountRules: [DiscountRule]

        public var mode: String

        public var applyExclusive: String?

        public var applyPriority: Int?

        public var applicationId: String

        public var applyAllDiscount: Bool?

        public var dateMeta: PromotionDateMeta?

        public var stackable: Bool?

        public var currency: String?

        public var author: PromotionAuthor?

        public var displayMeta: DisplayMeta1

        public var restrictions: Restrictions1?

        public var ownership: Ownership1

        public var buyRules: [String: ItemCriteria]

        public var customJson: [String: Any]?

        public var schedule: PromotionSchedule?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case postOrderAction = "post_order_action"

            case promoGroup = "promo_group"

            case visiblility

            case promotionType = "promotion_type"

            case discountRules = "discount_rules"

            case mode

            case applyExclusive = "apply_exclusive"

            case applyPriority = "apply_priority"

            case applicationId = "application_id"

            case applyAllDiscount = "apply_all_discount"

            case dateMeta = "date_meta"

            case stackable

            case currency

            case author

            case displayMeta = "display_meta"

            case restrictions

            case ownership

            case buyRules = "buy_rules"

            case customJson = "_custom_json"

            case schedule = "_schedule"

            case code
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.postOrderAction = postOrderAction

            self.promoGroup = promoGroup

            self.visiblility = visiblility

            self.promotionType = promotionType

            self.discountRules = discountRules

            self.mode = mode

            self.applyExclusive = applyExclusive

            self.applyPriority = applyPriority

            self.applicationId = applicationId

            self.applyAllDiscount = applyAllDiscount

            self.dateMeta = dateMeta

            self.stackable = stackable

            self.currency = currency

            self.author = author

            self.displayMeta = displayMeta

            self.restrictions = restrictions

            self.ownership = ownership

            self.buyRules = buyRules

            self.customJson = customJson

            self.schedule = schedule

            self.code = code
        }

        public func duplicate() -> PromotionListItem {
            let dict = self.dictionary!
            let copy = PromotionListItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            mode = try container.decode(String.self, forKey: .mode)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

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
                stackable = try container.decode(Bool.self, forKey: .stackable)

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
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
