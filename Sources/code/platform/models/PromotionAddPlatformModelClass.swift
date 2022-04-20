import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionAdd
         Used By: Cart
     */

    class PromotionAdd: Codable {
        public var mode: String

        public var applicationId: String

        public var code: String?

        public var buyRules: [String: ItemCriteria]

        public var visiblility: Visibility?

        public var discountRules: [DiscountRule]

        public var stackable: Bool?

        public var dateMeta: PromotionDateMeta?

        public var applyAllDiscount: Bool?

        public var postOrderAction: PromotionAction?

        public var restrictions: Restrictions1?

        public var schedule: PromotionSchedule?

        public var promotionType: String

        public var currency: String?

        public var ownership: Ownership1

        public var author: PromotionAuthor?

        public var promoGroup: String

        public var displayMeta: DisplayMeta1

        public var applyExclusive: String?

        public var applyPriority: Int?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case mode

            case applicationId = "application_id"

            case code

            case buyRules = "buy_rules"

            case visiblility

            case discountRules = "discount_rules"

            case stackable

            case dateMeta = "date_meta"

            case applyAllDiscount = "apply_all_discount"

            case postOrderAction = "post_order_action"

            case restrictions

            case schedule = "_schedule"

            case promotionType = "promotion_type"

            case currency

            case ownership

            case author

            case promoGroup = "promo_group"

            case displayMeta = "display_meta"

            case applyExclusive = "apply_exclusive"

            case applyPriority = "apply_priority"

            case customJson = "_custom_json"
        }

        public init(applicationId: String, applyAllDiscount: Bool?, applyExclusive: String?, applyPriority: Int?, author: PromotionAuthor?, buyRules: [String: ItemCriteria], code: String?, currency: String?, dateMeta: PromotionDateMeta?, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction?, promotionType: String, promoGroup: String, restrictions: Restrictions1?, stackable: Bool?, visiblility: Visibility?, customJson: [String: Any]?, schedule: PromotionSchedule?) {
            self.mode = mode

            self.applicationId = applicationId

            self.code = code

            self.buyRules = buyRules

            self.visiblility = visiblility

            self.discountRules = discountRules

            self.stackable = stackable

            self.dateMeta = dateMeta

            self.applyAllDiscount = applyAllDiscount

            self.postOrderAction = postOrderAction

            self.restrictions = restrictions

            self.schedule = schedule

            self.promotionType = promotionType

            self.currency = currency

            self.ownership = ownership

            self.author = author

            self.promoGroup = promoGroup

            self.displayMeta = displayMeta

            self.applyExclusive = applyExclusive

            self.applyPriority = applyPriority

            self.customJson = customJson
        }

        public func duplicate() -> PromotionAdd {
            let dict = self.dictionary!
            let copy = PromotionAdd(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mode = try container.decode(String.self, forKey: .mode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                visiblility = try container.decode(Visibility.self, forKey: .visiblility)

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

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

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
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
