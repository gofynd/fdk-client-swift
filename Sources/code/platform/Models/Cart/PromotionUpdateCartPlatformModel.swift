

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionUpdate
         Used By: Cart
     */

    class PromotionUpdate: Codable {
        public var stackable: Bool?

        public var restrictions: Restrictions1?

        public var visiblility: Visibility?

        public var calculateOn: String?

        public var dateMeta: PromotionDateMeta?

        public var applyPriority: Int?

        public var applyAllDiscount: Bool?

        public var customJson: [String: Any]?

        public var schedule: PromotionSchedule?

        public var currency: String?

        public var buyRules: [String: ItemCriteria]

        public var mode: String

        public var ownership: Ownership1

        public var postOrderAction: PromotionAction?

        public var author: PromotionAuthor?

        public var promoGroup: String

        public var discountRules: [DiscountRule]

        public var applyExclusive: String?

        public var promotionType: String

        public var displayMeta: DisplayMeta1

        public var code: String?

        public var applicationId: String

        public enum CodingKeys: String, CodingKey {
            case stackable

            case restrictions

            case visiblility

            case calculateOn = "calculate_on"

            case dateMeta = "date_meta"

            case applyPriority = "apply_priority"

            case applyAllDiscount = "apply_all_discount"

            case customJson = "_custom_json"

            case schedule = "_schedule"

            case currency

            case buyRules = "buy_rules"

            case mode

            case ownership

            case postOrderAction = "post_order_action"

            case author

            case promoGroup = "promo_group"

            case discountRules = "discount_rules"

            case applyExclusive = "apply_exclusive"

            case promotionType = "promotion_type"

            case displayMeta = "display_meta"

            case code

            case applicationId = "application_id"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.stackable = stackable

            self.restrictions = restrictions

            self.visiblility = visiblility

            self.calculateOn = calculateOn

            self.dateMeta = dateMeta

            self.applyPriority = applyPriority

            self.applyAllDiscount = applyAllDiscount

            self.customJson = customJson

            self.schedule = schedule

            self.currency = currency

            self.buyRules = buyRules

            self.mode = mode

            self.ownership = ownership

            self.postOrderAction = postOrderAction

            self.author = author

            self.promoGroup = promoGroup

            self.discountRules = discountRules

            self.applyExclusive = applyExclusive

            self.promotionType = promotionType

            self.displayMeta = displayMeta

            self.code = code

            self.applicationId = applicationId
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

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

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
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            mode = try container.decode(String.self, forKey: .mode)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

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

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            do {
                applyExclusive = try container.decode(String.self, forKey: .applyExclusive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionType = try container.decode(String.self, forKey: .promotionType)

            displayMeta = try container.decode(DisplayMeta1.self, forKey: .displayMeta)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            applicationId = try container.decode(String.self, forKey: .applicationId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
        }
    }
}