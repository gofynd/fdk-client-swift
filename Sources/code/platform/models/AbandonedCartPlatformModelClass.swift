

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var bulkCouponDiscount: Double?

        public var createdOn: String

        public var discount: Double?

        public var payments: [String: Any]?

        public var comment: String?

        public var shipments: [[String: Any]]?

        public var userId: String

        public var paymentMode: String?

        public var orderId: String?

        public var appId: String?

        public var codCharges: [String: Any]?

        public var pickUpCustomerDetails: [String: Any]?

        public var paymentMethods: [[String: Any]]?

        public var cartValue: Double?

        public var id: String

        public var isActive: Bool?

        public var isArchive: Bool?

        public var deliveryCharges: [String: Any]?

        public var lastModified: String

        public var checkoutMode: String?

        public var fyndCredits: [String: Any]?

        public var isDefault: Bool

        public var uid: Int

        public var promotion: [String: Any]?

        public var articles: [[String: Any]]

        public var meta: [String: Any]?

        public var coupon: [String: Any]?

        public var cashback: [String: Any]

        public var buyNow: Bool?

        public var expireAt: String

        public var gstin: String?

        public var mergeQty: Bool?

        public var fcIndexMap: [Int]?

        public enum CodingKeys: String, CodingKey {
            case bulkCouponDiscount = "bulk_coupon_discount"

            case createdOn = "created_on"

            case discount

            case payments

            case comment

            case shipments

            case userId = "user_id"

            case paymentMode = "payment_mode"

            case orderId = "order_id"

            case appId = "app_id"

            case codCharges = "cod_charges"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case paymentMethods = "payment_methods"

            case cartValue = "cart_value"

            case id = "_id"

            case isActive = "is_active"

            case isArchive = "is_archive"

            case deliveryCharges = "delivery_charges"

            case lastModified = "last_modified"

            case checkoutMode = "checkout_mode"

            case fyndCredits = "fynd_credits"

            case isDefault = "is_default"

            case uid

            case promotion

            case articles

            case meta

            case coupon

            case cashback

            case buyNow = "buy_now"

            case expireAt = "expire_at"

            case gstin

            case mergeQty = "merge_qty"

            case fcIndexMap = "fc_index_map"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.bulkCouponDiscount = bulkCouponDiscount

            self.createdOn = createdOn

            self.discount = discount

            self.payments = payments

            self.comment = comment

            self.shipments = shipments

            self.userId = userId

            self.paymentMode = paymentMode

            self.orderId = orderId

            self.appId = appId

            self.codCharges = codCharges

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.paymentMethods = paymentMethods

            self.cartValue = cartValue

            self.id = id

            self.isActive = isActive

            self.isArchive = isArchive

            self.deliveryCharges = deliveryCharges

            self.lastModified = lastModified

            self.checkoutMode = checkoutMode

            self.fyndCredits = fyndCredits

            self.isDefault = isDefault

            self.uid = uid

            self.promotion = promotion

            self.articles = articles

            self.meta = meta

            self.coupon = coupon

            self.cashback = cashback

            self.buyNow = buyNow

            self.expireAt = expireAt

            self.gstin = gstin

            self.mergeQty = mergeQty

            self.fcIndexMap = fcIndexMap
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

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
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            do {
                appId = try container.decode(String.self, forKey: .appId)

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
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastModified = try container.decode(String.self, forKey: .lastModified)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                promotion = try container.decode([String: Any].self, forKey: .promotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            do {
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            do {
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(payments, forKey: .payments)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)
        }
    }
}
