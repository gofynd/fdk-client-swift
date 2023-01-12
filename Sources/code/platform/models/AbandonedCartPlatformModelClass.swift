

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var buyNow: Bool?

        public var orderId: String?

        public var cashback: [String: Any]

        public var uid: Int

        public var createdOn: String

        public var bulkCouponDiscount: Double?

        public var userId: String

        public var checkoutMode: String?

        public var meta: [String: Any]?

        public var paymentMode: String?

        public var comment: String?

        public var discount: Double?

        public var promotion: [String: Any]?

        public var isArchive: Bool?

        public var isActive: Bool?

        public var codCharges: [String: Any]?

        public var fyndCredits: [String: Any]?

        public var cartValue: Double?

        public var deliveryCharges: [String: Any]?

        public var isDefault: Bool

        public var payments: [String: Any]?

        public var fcIndexMap: [Int]?

        public var pickUpCustomerDetails: [String: Any]?

        public var shipments: [[String: Any]]?

        public var lastModified: String

        public var gstin: String?

        public var appId: String?

        public var articles: [[String: Any]]

        public var paymentMethods: [[String: Any]]?

        public var expireAt: String

        public var id: String

        public var coupon: [String: Any]?

        public var mergeQty: Bool?

        public enum CodingKeys: String, CodingKey {
            case buyNow = "buy_now"

            case orderId = "order_id"

            case cashback

            case uid

            case createdOn = "created_on"

            case bulkCouponDiscount = "bulk_coupon_discount"

            case userId = "user_id"

            case checkoutMode = "checkout_mode"

            case meta

            case paymentMode = "payment_mode"

            case comment

            case discount

            case promotion

            case isArchive = "is_archive"

            case isActive = "is_active"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case cartValue = "cart_value"

            case deliveryCharges = "delivery_charges"

            case isDefault = "is_default"

            case payments

            case fcIndexMap = "fc_index_map"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case shipments

            case lastModified = "last_modified"

            case gstin

            case appId = "app_id"

            case articles

            case paymentMethods = "payment_methods"

            case expireAt = "expire_at"

            case id = "_id"

            case coupon

            case mergeQty = "merge_qty"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.buyNow = buyNow

            self.orderId = orderId

            self.cashback = cashback

            self.uid = uid

            self.createdOn = createdOn

            self.bulkCouponDiscount = bulkCouponDiscount

            self.userId = userId

            self.checkoutMode = checkoutMode

            self.meta = meta

            self.paymentMode = paymentMode

            self.comment = comment

            self.discount = discount

            self.promotion = promotion

            self.isArchive = isArchive

            self.isActive = isActive

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.cartValue = cartValue

            self.deliveryCharges = deliveryCharges

            self.isDefault = isDefault

            self.payments = payments

            self.fcIndexMap = fcIndexMap

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.shipments = shipments

            self.lastModified = lastModified

            self.gstin = gstin

            self.appId = appId

            self.articles = articles

            self.paymentMethods = paymentMethods

            self.expireAt = expireAt

            self.id = id

            self.coupon = coupon

            self.mergeQty = mergeQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            uid = try container.decode(Int.self, forKey: .uid)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotion = try container.decode([String: Any].self, forKey: .promotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isArchive = try container.decode(Bool.self, forKey: .isArchive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode([String: Any].self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastModified = try container.decode(String.self, forKey: .lastModified)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expireAt = try container.decode(String.self, forKey: .expireAt)

            id = try container.decode(String.self, forKey: .id)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mergeQty = try container.decode(Bool.self, forKey: .mergeQty)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encode(payments, forKey: .payments)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encode(mergeQty, forKey: .mergeQty)
        }
    }
}
