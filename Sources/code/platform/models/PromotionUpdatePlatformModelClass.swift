

import Foundation
public extension PlatformClient {
    /*
         Model: PromotionUpdate
         Used By: Cart
     */

    class PromotionUpdate: Codable {
        public var ownership: Ownership1

        public var customJson: [String: Any]?

        public var code: String?

        public var currency: String?

        public var applyAllDiscount: Bool?

        public var visiblility: Visibility?

        public var postOrderAction: PromotionAction?

        public var displayMeta: DisplayMeta1

        public var applyPriority: Int?

        public var stackable: Bool?

        public var promotionType: String

        public var schedule: PromotionSchedule?

        public var applicationId: String

        public var buyRules: [String: ItemCriteria]

        public var applyExclusive: String?

        public var restrictions: Restrictions1?

        public var mode: String

        public var calculateOn: String?

        public var promoGroup: String

        public var discountRules: [DiscountRule]

        public var author: PromotionAuthor?

        public var dateMeta: PromotionDateMeta?

        public enum CodingKeys: String, CodingKey {
            case ownership

            case customJson = "_custom_json"

            case code

            case currency

            case applyAllDiscount = "apply_all_discount"

            case visiblility

            case postOrderAction = "post_order_action"

            case displayMeta = "display_meta"

            case applyPriority = "apply_priority"

            case stackable

            case promotionType = "promotion_type"

            case schedule = "_schedule"

            case applicationId = "application_id"

            case buyRules = "buy_rules"

            case applyExclusive = "apply_exclusive"

            case restrictions

            case mode

            case calculateOn = "calculate_on"

            case promoGroup = "promo_group"

            case discountRules = "discount_rules"

            case author

            case dateMeta = "date_meta"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.ownership = ownership

            self.customJson = customJson

            self.code = code

            self.currency = currency

            self.applyAllDiscount = applyAllDiscount

            self.visiblility = visiblility

            self.postOrderAction = postOrderAction

            self.displayMeta = displayMeta

            self.applyPriority = applyPriority

            self.stackable = stackable

            self.promotionType = promotionType

            self.schedule = schedule

            self.applicationId = applicationId

            self.buyRules = buyRules

            self.applyExclusive = applyExclusive

            self.restrictions = restrictions

            self.mode = mode

            self.calculateOn = calculateOn

            self.promoGroup = promoGroup

            self.discountRules = discountRules

            self.author = author

            self.dateMeta = dateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

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

            do {
                currency = try container.decode(String.self, forKey: .currency)

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

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

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

            do {
                stackable = try container.decode(Bool.self, forKey: .stackable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                schedule = try container.decode(PromotionSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

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

            mode = try container.decode(String.self, forKey: .mode)

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                author = try container.decode(PromotionAuthor.self, forKey: .author)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
        }
    }
}
