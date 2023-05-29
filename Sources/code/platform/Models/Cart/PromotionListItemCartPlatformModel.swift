

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionListItem
         Used By: Cart
     */

    class PromotionListItem: Codable {
        public var author: PromotionAuthor?

        public var dateMeta: PromotionDateMeta?

        public var calculateOn: String?

        public var stackable: Bool?

        public var code: String?

        public var restrictions: Restrictions1?

        public var postOrderAction: PromotionAction?

        public var displayMeta: DisplayMeta1

        public var visiblility: Visibility?

        public var schedule: PromotionSchedule?

        public var buyRules: [String: ItemCriteria]

        public var discountRules: [DiscountRule]

        public var promoGroup: String

        public var mode: String

        public var applicationId: String

        public var ownership: Ownership1

        public var applyPriority: Int?

        public var customJson: [String: Any]?

        public var promotionType: String

        public var currency: String?

        public var applyExclusive: String?

        public var applyAllDiscount: Bool?

        public enum CodingKeys: String, CodingKey {
            case author

            case dateMeta = "date_meta"

            case calculateOn = "calculate_on"

            case stackable

            case code

            case restrictions

            case postOrderAction = "post_order_action"

            case displayMeta = "display_meta"

            case visiblility

            case schedule = "_schedule"

            case buyRules = "buy_rules"

            case discountRules = "discount_rules"

            case promoGroup = "promo_group"

            case mode

            case applicationId = "application_id"

            case ownership

            case applyPriority = "apply_priority"

            case customJson = "_custom_json"

            case promotionType = "promotion_type"

            case currency

            case applyExclusive = "apply_exclusive"

            case applyAllDiscount = "apply_all_discount"
        }

        public init(applicationId: String, applyAllDiscount: Bool? = nil, applyExclusive: String? = nil, applyPriority: Int? = nil, author: PromotionAuthor? = nil, buyRules: [String: ItemCriteria], calculateOn: String? = nil, code: String? = nil, currency: String? = nil, dateMeta: PromotionDateMeta? = nil, discountRules: [DiscountRule], displayMeta: DisplayMeta1, mode: String, ownership: Ownership1, postOrderAction: PromotionAction? = nil, promotionType: String, promoGroup: String, restrictions: Restrictions1? = nil, stackable: Bool? = nil, visiblility: Visibility? = nil, customJson: [String: Any]? = nil, schedule: PromotionSchedule? = nil) {
            self.author = author

            self.dateMeta = dateMeta

            self.calculateOn = calculateOn

            self.stackable = stackable

            self.code = code

            self.restrictions = restrictions

            self.postOrderAction = postOrderAction

            self.displayMeta = displayMeta

            self.visiblility = visiblility

            self.schedule = schedule

            self.buyRules = buyRules

            self.discountRules = discountRules

            self.promoGroup = promoGroup

            self.mode = mode

            self.applicationId = applicationId

            self.ownership = ownership

            self.applyPriority = applyPriority

            self.customJson = customJson

            self.promotionType = promotionType

            self.currency = currency

            self.applyExclusive = applyExclusive

            self.applyAllDiscount = applyAllDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

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

            do {
                postOrderAction = try container.decode(PromotionAction.self, forKey: .postOrderAction)

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

            buyRules = try container.decode([String: ItemCriteria].self, forKey: .buyRules)

            discountRules = try container.decode([DiscountRule].self, forKey: .discountRules)

            promoGroup = try container.decode(String.self, forKey: .promoGroup)

            mode = try container.decode(String.self, forKey: .mode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            ownership = try container.decode(Ownership1.self, forKey: .ownership)

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

            promotionType = try container.decode(String.self, forKey: .promotionType)

            do {
                currency = try container.decode(String.self, forKey: .currency)

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
                applyAllDiscount = try container.decode(Bool.self, forKey: .applyAllDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(stackable, forKey: .stackable)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(postOrderAction, forKey: .postOrderAction)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(visiblility, forKey: .visiblility)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promoGroup, forKey: .promoGroup)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(applyPriority, forKey: .applyPriority)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(applyExclusive, forKey: .applyExclusive)

            try? container.encodeIfPresent(applyAllDiscount, forKey: .applyAllDiscount)
        }
    }
}
