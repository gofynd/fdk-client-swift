import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ActionPageParams
         Used By: Rewards
     */
    class ActionPageParams: Codable {
        public var slug: [String]?

        public enum CodingKeys: String, CodingKey {
            case slug
        }

        public init(slug: [String]?) {
            self.slug = slug
        }

        public func duplicate() -> ActionPageParams {
            let dict = self.dictionary!
            let copy = ActionPageParams(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode([String].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }

    /*
         Model: CatalogueOrderRequest
         Used By: Rewards
     */
    class CatalogueOrderRequest: Codable {
        public var articles: [RewardsArticle]?

        public enum CodingKeys: String, CodingKey {
            case articles
        }

        public init(articles: [RewardsArticle]?) {
            self.articles = articles
        }

        public func duplicate() -> CatalogueOrderRequest {
            let dict = self.dictionary!
            let copy = CatalogueOrderRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articles = try container.decode([RewardsArticle].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }

    /*
         Model: CatalogueOrderResponse
         Used By: Rewards
     */
    class CatalogueOrderResponse: Codable {
        public var articles: [RewardsArticle]?

        public enum CodingKeys: String, CodingKey {
            case articles
        }

        public init(articles: [RewardsArticle]?) {
            self.articles = articles
        }

        public func duplicate() -> CatalogueOrderResponse {
            let dict = self.dictionary!
            let copy = CatalogueOrderResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articles = try container.decode([RewardsArticle].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }

    /*
         Model: DiscountProperties
         Used By: Rewards
     */
    class DiscountProperties: Codable {
        public var absolute: Double?

        public var currency: String?

        public var displayAbsolute: String?

        public var displayPercent: String?

        public var percent: Double?

        public enum CodingKeys: String, CodingKey {
            case absolute

            case currency

            case displayAbsolute = "display_absolute"

            case displayPercent = "display_percent"

            case percent
        }

        public init(absolute: Double?, currency: String?, displayAbsolute: String?, displayPercent: String?, percent: Double?) {
            self.absolute = absolute

            self.currency = currency

            self.displayAbsolute = displayAbsolute

            self.displayPercent = displayPercent

            self.percent = percent
        }

        public func duplicate() -> DiscountProperties {
            let dict = self.dictionary!
            let copy = DiscountProperties(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                absolute = try container.decode(Double.self, forKey: .absolute)

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
                displayAbsolute = try container.decode(String.self, forKey: .displayAbsolute)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayPercent = try container.decode(String.self, forKey: .displayPercent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                percent = try container.decode(Double.self, forKey: .percent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(absolute, forKey: .absolute)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(displayAbsolute, forKey: .displayAbsolute)

            try? container.encodeIfPresent(displayPercent, forKey: .displayPercent)

            try? container.encodeIfPresent(percent, forKey: .percent)
        }
    }

    /*
         Model: Error
         Used By: Rewards
     */
    class Error: Codable {
        public var code: Int?

        public var exception: String?

        public var info: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case exception

            case info

            case message
        }

        public init(code: Int?, exception: String?, info: String?, message: String?) {
            self.code = code

            self.exception = exception

            self.info = info

            self.message = message
        }

        public func duplicate() -> Error {
            let dict = self.dictionary!
            let copy = Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                exception = try container.decode(String.self, forKey: .exception)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(exception, forKey: .exception)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }

    /*
         Model: Offer
         Used By: Rewards
     */
    class Offer: Codable {
        public var schedule: Schedule?

        public var active: Bool?

        public var applicationId: String?

        public var bannerImage: Asset?

        public var createdAt: String?

        public var name: String?

        public var rule: [String: Any]?

        public var share: ShareMessages?

        public var subText: String?

        public var text: String?

        public var type: String?

        public var updatedAt: String?

        public var updatedBy: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case schedule = "_schedule"

            case active

            case applicationId = "application_id"

            case bannerImage = "banner_image"

            case createdAt = "created_at"

            case name

            case rule

            case share

            case subText = "sub_text"

            case text

            case type

            case updatedAt = "updated_at"

            case updatedBy = "updated_by"

            case url
        }

        public init(active: Bool?, applicationId: String?, bannerImage: Asset?, createdAt: String?, name: String?, rule: [String: Any]?, share: ShareMessages?, subText: String?, text: String?, type: String?, updatedAt: String?, updatedBy: String?, url: String?, schedule: Schedule?) {
            self.schedule = schedule

            self.active = active

            self.applicationId = applicationId

            self.bannerImage = bannerImage

            self.createdAt = createdAt

            self.name = name

            self.rule = rule

            self.share = share

            self.subText = subText

            self.text = text

            self.type = type

            self.updatedAt = updatedAt

            self.updatedBy = updatedBy

            self.url = url
        }

        public func duplicate() -> Offer {
            let dict = self.dictionary!
            let copy = Offer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                schedule = try container.decode(Schedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bannerImage = try container.decode(Asset.self, forKey: .bannerImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rule = try container.decode([String: Any].self, forKey: .rule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                share = try container.decode(ShareMessages.self, forKey: .share)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subText = try container.decode(String.self, forKey: .subText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedBy = try container.decode(String.self, forKey: .updatedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(bannerImage, forKey: .bannerImage)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(share, forKey: .share)

            try? container.encodeIfPresent(subText, forKey: .subText)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(updatedBy, forKey: .updatedBy)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }

    /*
         Model: OrderDiscountRequest
         Used By: Rewards
     */
    class OrderDiscountRequest: Codable {
        public var currency: String?

        public var orderAmount: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case orderAmount = "order_amount"
        }

        public init(currency: String?, orderAmount: Double) {
            self.currency = currency

            self.orderAmount = orderAmount
        }

        public func duplicate() -> OrderDiscountRequest {
            let dict = self.dictionary!
            let copy = OrderDiscountRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderAmount = try container.decode(Double.self, forKey: .orderAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
        }
    }

    /*
         Model: OrderDiscountResponse
         Used By: Rewards
     */
    class OrderDiscountResponse: Codable {
        public var appliedRuleBucket: OrderDiscountRuleBucket?

        public var baseDiscount: DiscountProperties?

        public var discount: DiscountProperties?

        public var orderAmount: Double?

        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case appliedRuleBucket = "applied_rule_bucket"

            case baseDiscount = "base_discount"

            case discount

            case orderAmount = "order_amount"

            case points
        }

        public init(appliedRuleBucket: OrderDiscountRuleBucket?, baseDiscount: DiscountProperties?, discount: DiscountProperties?, orderAmount: Double?, points: Double?) {
            self.appliedRuleBucket = appliedRuleBucket

            self.baseDiscount = baseDiscount

            self.discount = discount

            self.orderAmount = orderAmount

            self.points = points
        }

        public func duplicate() -> OrderDiscountResponse {
            let dict = self.dictionary!
            let copy = OrderDiscountResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedRuleBucket = try container.decode(OrderDiscountRuleBucket.self, forKey: .appliedRuleBucket)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                baseDiscount = try container.decode(DiscountProperties.self, forKey: .baseDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(DiscountProperties.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderAmount = try container.decode(Double.self, forKey: .orderAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedRuleBucket, forKey: .appliedRuleBucket)

            try? container.encodeIfPresent(baseDiscount, forKey: .baseDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }

    /*
         Model: OrderDiscountRuleBucket
         Used By: Rewards
     */
    class OrderDiscountRuleBucket: Codable {
        public var high: Double?

        public var low: Double?

        public var max: Double?

        public var value: Double?

        public var valueType: String?

        public enum CodingKeys: String, CodingKey {
            case high

            case low

            case max

            case value

            case valueType = "value_type"
        }

        public init(high: Double?, low: Double?, max: Double?, value: Double?, valueType: String?) {
            self.high = high

            self.low = low

            self.max = max

            self.value = value

            self.valueType = valueType
        }

        public func duplicate() -> OrderDiscountRuleBucket {
            let dict = self.dictionary!
            let copy = OrderDiscountRuleBucket(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                high = try container.decode(Double.self, forKey: .high)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                low = try container.decode(Double.self, forKey: .low)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(Double.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueType = try container.decode(String.self, forKey: .valueType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(high, forKey: .high)

            try? container.encodeIfPresent(low, forKey: .low)

            try? container.encodeIfPresent(max, forKey: .max)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(valueType, forKey: .valueType)
        }
    }

    /*
         Model: PointsHistory
         Used By: Rewards
     */
    class PointsHistory: Codable {
        public var id: String?

        public var applicationId: String?

        public var claimed: Bool?

        public var createdAt: String?

        public var expiresOn: String?

        public var meta: [String: Any]?

        public var points: Double?

        public var remainingPoints: Double?

        public var text1: String?

        public var text2: String?

        public var text3: String?

        public var txnName: String?

        public var updatedAt: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case applicationId = "application_id"

            case claimed

            case createdAt = "created_at"

            case expiresOn = "expires_on"

            case meta

            case points

            case remainingPoints = "remaining_points"

            case text1 = "text_1"

            case text2 = "text_2"

            case text3 = "text_3"

            case txnName = "txn_name"

            case updatedAt = "updated_at"

            case userId = "user_id"
        }

        public init(applicationId: String?, claimed: Bool?, createdAt: String?, expiresOn: String?, meta: [String: Any]?, points: Double?, remainingPoints: Double?, text1: String?, text2: String?, text3: String?, txnName: String?, updatedAt: String?, userId: String?, id: String?) {
            self.id = id

            self.applicationId = applicationId

            self.claimed = claimed

            self.createdAt = createdAt

            self.expiresOn = expiresOn

            self.meta = meta

            self.points = points

            self.remainingPoints = remainingPoints

            self.text1 = text1

            self.text2 = text2

            self.text3 = text3

            self.txnName = txnName

            self.updatedAt = updatedAt

            self.userId = userId
        }

        public func duplicate() -> PointsHistory {
            let dict = self.dictionary!
            let copy = PointsHistory(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                claimed = try container.decode(Bool.self, forKey: .claimed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiresOn = try container.decode(String.self, forKey: .expiresOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                remainingPoints = try container.decode(Double.self, forKey: .remainingPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text1 = try container.decode(String.self, forKey: .text1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text2 = try container.decode(String.self, forKey: .text2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text3 = try container.decode(String.self, forKey: .text3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                txnName = try container.decode(String.self, forKey: .txnName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(claimed, forKey: .claimed)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(expiresOn, forKey: .expiresOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(remainingPoints, forKey: .remainingPoints)

            try? container.encodeIfPresent(text1, forKey: .text1)

            try? container.encodeIfPresent(text2, forKey: .text2)

            try? container.encodeIfPresent(text3, forKey: .text3)

            try? container.encodeIfPresent(txnName, forKey: .txnName)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }

    /*
         Model: PointsHistoryResponse
         Used By: Rewards
     */
    class PointsHistoryResponse: Codable {
        public var items: [PointsHistory]?

        public var page: Page?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [PointsHistory]?, page: Page?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> PointsHistoryResponse {
            let dict = self.dictionary!
            let copy = PointsHistoryResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([PointsHistory].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: PointsResponse
         Used By: Rewards
     */
    class PointsResponse: Codable {
        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case points
        }

        public init(points: Double?) {
            self.points = points
        }

        public func duplicate() -> PointsResponse {
            let dict = self.dictionary!
            let copy = PointsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }

    /*
         Model: RedeemReferralCodeRequest
         Used By: Rewards
     */
    class RedeemReferralCodeRequest: Codable {
        public var deviceId: String

        public var referralCode: String

        public enum CodingKeys: String, CodingKey {
            case deviceId = "device_id"

            case referralCode = "referral_code"
        }

        public init(deviceId: String, referralCode: String) {
            self.deviceId = deviceId

            self.referralCode = referralCode
        }

        public func duplicate() -> RedeemReferralCodeRequest {
            let dict = self.dictionary!
            let copy = RedeemReferralCodeRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deviceId = try container.decode(String.self, forKey: .deviceId)

            referralCode = try container.decode(String.self, forKey: .referralCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
        }
    }

    /*
         Model: RedeemReferralCodeResponse
         Used By: Rewards
     */
    class RedeemReferralCodeResponse: Codable {
        public var message: String?

        public var points: Double?

        public var redeemed: Bool?

        public var referrerId: String?

        public var referrerInfo: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case points

            case redeemed

            case referrerId = "referrer_id"

            case referrerInfo = "referrer_info"
        }

        public init(message: String?, points: Double?, redeemed: Bool?, referrerId: String?, referrerInfo: String?) {
            self.message = message

            self.points = points

            self.redeemed = redeemed

            self.referrerId = referrerId

            self.referrerInfo = referrerInfo
        }

        public func duplicate() -> RedeemReferralCodeResponse {
            let dict = self.dictionary!
            let copy = RedeemReferralCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redeemed = try container.decode(Bool.self, forKey: .redeemed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referrerId = try container.decode(String.self, forKey: .referrerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referrerInfo = try container.decode(String.self, forKey: .referrerInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(redeemed, forKey: .redeemed)

            try? container.encodeIfPresent(referrerId, forKey: .referrerId)

            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)
        }
    }

    /*
         Model: ReferralDetailsResponse
         Used By: Rewards
     */
    class ReferralDetailsResponse: Codable {
        public var referral: Offer?

        public var referrerInfo: String?

        public var share: ShareMessages?

        public var user: ReferralDetailsUser?

        public enum CodingKeys: String, CodingKey {
            case referral

            case referrerInfo = "referrer_info"

            case share

            case user
        }

        public init(referral: Offer?, referrerInfo: String?, share: ShareMessages?, user: ReferralDetailsUser?) {
            self.referral = referral

            self.referrerInfo = referrerInfo

            self.share = share

            self.user = user
        }

        public func duplicate() -> ReferralDetailsResponse {
            let dict = self.dictionary!
            let copy = ReferralDetailsResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                referral = try container.decode(Offer.self, forKey: .referral)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referrerInfo = try container.decode(String.self, forKey: .referrerInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                share = try container.decode(ShareMessages.self, forKey: .share)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(ReferralDetailsUser.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(referral, forKey: .referral)

            try? container.encodeIfPresent(referrerInfo, forKey: .referrerInfo)

            try? container.encodeIfPresent(share, forKey: .share)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }

    /*
         Model: ReferralDetailsUser
         Used By: Rewards
     */
    class ReferralDetailsUser: Codable {
        public var blocked: Bool?

        public var points: Double?

        public var redeemed: Bool?

        public var referralCode: String?

        public enum CodingKeys: String, CodingKey {
            case blocked

            case points

            case redeemed

            case referralCode = "referral_code"
        }

        public init(blocked: Bool?, points: Double?, redeemed: Bool?, referralCode: String?) {
            self.blocked = blocked

            self.points = points

            self.redeemed = redeemed

            self.referralCode = referralCode
        }

        public func duplicate() -> ReferralDetailsUser {
            let dict = self.dictionary!
            let copy = ReferralDetailsUser(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                blocked = try container.decode(Bool.self, forKey: .blocked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redeemed = try container.decode(Bool.self, forKey: .redeemed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                referralCode = try container.decode(String.self, forKey: .referralCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(blocked, forKey: .blocked)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(redeemed, forKey: .redeemed)

            try? container.encodeIfPresent(referralCode, forKey: .referralCode)
        }
    }

    /*
         Model: RewardsArticle
         Used By: Rewards
     */
    class RewardsArticle: Codable {
        public var id: String?

        public var points: Double?

        public var price: Double?

        public enum CodingKeys: String, CodingKey {
            case id

            case points

            case price
        }

        public init(id: String?, points: Double?, price: Double?) {
            self.id = id

            self.points = points

            self.price = price
        }

        public func duplicate() -> RewardsArticle {
            let dict = self.dictionary!
            let copy = RewardsArticle(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }

    /*
         Model: Schedule
         Used By: Rewards
     */
    class Schedule: Codable {
        public var cron: String?

        public var duration: Int?

        public var end: String?

        public var start: String?

        public enum CodingKeys: String, CodingKey {
            case cron

            case duration

            case end

            case start
        }

        public init(cron: String?, duration: Int?, end: String?, start: String?) {
            self.cron = cron

            self.duration = duration

            self.end = end

            self.start = start
        }

        public func duplicate() -> Schedule {
            let dict = self.dictionary!
            let copy = Schedule(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cron = try container.decode(String.self, forKey: .cron)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                end = try container.decode(String.self, forKey: .end)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                start = try container.decode(String.self, forKey: .start)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cron, forKey: .cron)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(end, forKey: .end)

            try? container.encodeIfPresent(start, forKey: .start)
        }
    }

    /*
         Model: ShareMessages
         Used By: Rewards
     */
    class ShareMessages: Codable {
        public var email: String?

        public var facebook: String?

        public var fallback: String?

        public var message: String?

        public var messenger: String?

        public var sms: String?

        public var text: String?

        public var twitter: String?

        public var whatsapp: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case facebook

            case fallback

            case message

            case messenger

            case sms

            case text

            case twitter

            case whatsapp
        }

        public init(email: String?, facebook: String?, fallback: String?, message: String?, messenger: String?, sms: String?, text: String?, twitter: String?, whatsapp: String?) {
            self.email = email

            self.facebook = facebook

            self.fallback = fallback

            self.message = message

            self.messenger = messenger

            self.sms = sms

            self.text = text

            self.twitter = twitter

            self.whatsapp = whatsapp
        }

        public func duplicate() -> ShareMessages {
            let dict = self.dictionary!
            let copy = ShareMessages(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                facebook = try container.decode(String.self, forKey: .facebook)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fallback = try container.decode(String.self, forKey: .fallback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                messenger = try container.decode(String.self, forKey: .messenger)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(String.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                twitter = try container.decode(String.self, forKey: .twitter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                whatsapp = try container.decode(String.self, forKey: .whatsapp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(facebook, forKey: .facebook)

            try? container.encodeIfPresent(fallback, forKey: .fallback)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(messenger, forKey: .messenger)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(twitter, forKey: .twitter)

            try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
        }
    }
}
