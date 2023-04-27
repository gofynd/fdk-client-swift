

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var expireAt: String

        public var gstin: String?

        public var paymentMode: String?

        public var comment: String?

        public var checkoutMode: String?

        public var createdOn: String

        public var appId: String?

        public var meta: [String: Any]?

        public var fyndCredits: [String: Any]?

        public var articles: [[String: Any]]

        public var deliveryCharges: [String: Any]?

        public var codCharges: [String: Any]?

        public var buyNow: Bool?

        public var mergeQty: Bool?

        public var cartValue: Double?

        public var discount: Double?

        public var isArchive: Bool?

        public var coupon: [String: Any]?

        public var payments: [String: Any]?

        public var bulkCouponDiscount: Double?

        public var shipments: [[String: Any]]?

        public var cashback: [String: Any]

        public var lastModified: String

        public var uid: Int

        public var isDefault: Bool

        public var fcIndexMap: [Int]?

        public var userId: String

        public var orderId: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var paymentMethods: [[String: Any]]?

        public var promotion: [String: Any]?

        public var id: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case expireAt = "expire_at"

            case gstin

            case paymentMode = "payment_mode"

            case comment

            case checkoutMode = "checkout_mode"

            case createdOn = "created_on"

            case appId = "app_id"

            case meta

            case fyndCredits = "fynd_credits"

            case articles

            case deliveryCharges = "delivery_charges"

            case codCharges = "cod_charges"

            case buyNow = "buy_now"

            case mergeQty = "merge_qty"

            case cartValue = "cart_value"

            case discount

            case isArchive = "is_archive"

            case coupon

            case payments

            case bulkCouponDiscount = "bulk_coupon_discount"

            case shipments

            case cashback

            case lastModified = "last_modified"

            case uid

            case isDefault = "is_default"

            case fcIndexMap = "fc_index_map"

            case userId = "user_id"

            case orderId = "order_id"

            case pickUpCustomerDetails = "pick_up_customer_details"

            case paymentMethods = "payment_methods"

            case promotion

            case id = "_id"

            case isActive = "is_active"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.expireAt = expireAt

            self.gstin = gstin

            self.paymentMode = paymentMode

            self.comment = comment

            self.checkoutMode = checkoutMode

            self.createdOn = createdOn

            self.appId = appId

            self.meta = meta

            self.fyndCredits = fyndCredits

            self.articles = articles

            self.deliveryCharges = deliveryCharges

            self.codCharges = codCharges

            self.buyNow = buyNow

            self.mergeQty = mergeQty

            self.cartValue = cartValue

            self.discount = discount

            self.isArchive = isArchive

            self.coupon = coupon

            self.payments = payments

            self.bulkCouponDiscount = bulkCouponDiscount

            self.shipments = shipments

            self.cashback = cashback

            self.lastModified = lastModified

            self.uid = uid

            self.isDefault = isDefault

            self.fcIndexMap = fcIndexMap

            self.userId = userId

            self.orderId = orderId

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.paymentMethods = paymentMethods

            self.promotion = promotion

            self.id = id

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                appId = try container.decode(String.self, forKey: .appId)

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
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

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
                cartValue = try container.decode(Double.self, forKey: .cartValue)

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
                isArchive = try container.decode(Bool.self, forKey: .isArchive)

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

            do {
                payments = try container.decode([String: Any].self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)

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

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            lastModified = try container.decode(String.self, forKey: .lastModified)

            uid = try container.decode(Int.self, forKey: .uid)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            do {
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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
                promotion = try container.decode([String: Any].self, forKey: .promotion)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encode(payments, forKey: .payments)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
