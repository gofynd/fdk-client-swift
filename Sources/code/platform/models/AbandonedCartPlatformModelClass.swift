

import Foundation
public extension PlatformClient {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var coupon: [String: Any]?

        public var promotion: [String: Any]?

        public var isArchive: Bool?

        public var buyNow: Bool?

        public var expireAt: String

        public var fyndCredits: [String: Any]?

        public var comment: String?

        public var createdOn: String

        public var discount: Double?

        public var orderId: String?

        public var payments: [String: Any]?

        public var userId: String

        public var cashback: [String: Any]

        public var shipments: [[String: Any]]?

        public var id: String

        public var uid: Int

        public var articles: [[String: Any]]

        public var bulkCouponDiscount: Double?

        public var meta: [String: Any]?

        public var lastModified: String

        public var isActive: Bool?

        public var paymentMethods: [[String: Any]]?

        public var paymentMode: String?

        public var fcIndexMap: [Int]?

        public var checkoutMode: String?

        public var cartValue: Double?

        public var appId: String?

        public var mergeQty: Bool?

        public var isDefault: Bool

        public var deliveryCharges: [String: Any]?

        public var pickUpCustomerDetails: [String: Any]?

        public var gstin: String?

        public var codCharges: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case coupon

            case promotion

            case isArchive = "is_archive"

            case buyNow = "buy_now"

            case expireAt = "expire_at"

            case fyndCredits = "fynd_credits"

            case comment

            case createdOn = "created_on"

            case discount

            case orderId = "order_id"

            case payments

            case userId = "user_id"

            case cashback

            case shipments

            case id = "_id"

            case uid

            case articles

            case bulkCouponDiscount = "bulk_coupon_discount"

            case meta

            case lastModified = "last_modified"

            case isActive = "is_active"

            case paymentMethods = "payment_methods"

            case paymentMode = "payment_mode"

            case fcIndexMap = "fc_index_map"

            case checkoutMode = "checkout_mode"

            case cartValue = "cart_value"

            case appId = "app_id"

            case mergeQty = "merge_qty"

            case isDefault = "is_default"

            case deliveryCharges = "delivery_charges"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case gstin

            case codCharges = "cod_charges"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.coupon = coupon

            self.promotion = promotion

            self.isArchive = isArchive

            self.buyNow = buyNow

            self.expireAt = expireAt

            self.fyndCredits = fyndCredits

            self.comment = comment

            self.createdOn = createdOn

            self.discount = discount

            self.orderId = orderId

            self.payments = payments

            self.userId = userId

            self.cashback = cashback

            self.shipments = shipments

            self.id = id

            self.uid = uid

            self.articles = articles

            self.bulkCouponDiscount = bulkCouponDiscount

            self.meta = meta

            self.lastModified = lastModified

            self.isActive = isActive

            self.paymentMethods = paymentMethods

            self.paymentMode = paymentMode

            self.fcIndexMap = fcIndexMap

            self.checkoutMode = checkoutMode

            self.cartValue = cartValue

            self.appId = appId

            self.mergeQty = mergeQty

            self.isDefault = isDefault

            self.deliveryCharges = deliveryCharges

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.gstin = gstin

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                discount = try container.decode(Double.self, forKey: .discount)

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
                payments = try container.decode([String: Any].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            do {
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            uid = try container.decode(Int.self, forKey: .uid)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

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

            lastModified = try container.decode(String.self, forKey: .lastModified)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                appId = try container.decode(String.self, forKey: .appId)

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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

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
                gstin = try container.decode(String.self, forKey: .gstin)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(payments, forKey: .payments)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
