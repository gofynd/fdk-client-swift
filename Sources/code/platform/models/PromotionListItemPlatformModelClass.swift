

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var restrictions: Restrictions1?

        public var currency: String?

        public var customJson: [String: Any]?

        public var code: String?

        public var promoGroup: String

        public var buyRules: [String: ItemCriteria]

        public var promotionType: String

        public var author: PromotionAuthor?

        public var stackable: Bool?

        public var displayMeta: DisplayMeta1

        public var applyPriority: Int?

        public var applicationId: String

        public var visiblility: Visibility?

        public var discountRules: [DiscountRule]

        public var mode: String

        public var schedule: PromotionSchedule?

        public var ownership: Ownership1

        public var calculateOn: String?

        public var applyAllDiscount: Bool?

        public var postOrderAction: PromotionAction?

        public var dateMeta: PromotionDateMeta?

        public var applyExclusive: String?

        public enum CodingKeys: String, CodingKey {
            case restrictions

            case currency

            case customJson = "_custom_json"

            case code

            case promoGroup = "promo_group"

            case buyRules = "buy_rules"

            case promotionType = "promotion_type"

            case author

            case stackable

            case displayMeta = "display_meta"

            case applyPriority = "apply_priority"

            case applicationId = "application_id"

            case visiblility

            case discountRules = "discount_rules"

            case mode

            case schedule = "_schedule"

            case ownership

            case calculateOn = "calculate_on"

            case applyAllDiscount = "apply_all_discount"

            case postOrderAction = "post_order_action"

            case dateMeta = "date_meta"

            case applyExclusive = "apply_exclusive"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.restrictions = restrictions

            self.currency = currency

            self.customJson = customJson

            self.code = code

            self.promoGroup = promoGroup

            self.buyRules = buyRules

            self.promotionType = promotionType

            self.author = author

            self.stackable = stackable

            self.displayMeta = displayMeta

            self.applyPriority = applyPriority

            self.applicationId = applicationId

            self.visiblility = visiblility

            self.discountRules = discountRules

            self.mode = mode

            self.schedule = schedule

            self.ownership = ownership

            self.calculateOn = calculateOn

            self.applyAllDiscount = applyAllDiscount

            self.postOrderAction = postOrderAction

            self.dateMeta = dateMeta

            self.applyExclusive = applyExclusive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restrictions = try container.decode(Restrictions1.self, forKey: .restrictions)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

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

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                applyPriority = try container.decode(Int.self, forKey: .applyPriority)

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

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            mode = try container.decode(String.self, forKey: .mode)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

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

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encode(applyExclusive, forKey: .applyExclusive)
        }
    }
}
