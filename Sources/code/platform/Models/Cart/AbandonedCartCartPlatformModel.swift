

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var userId: String

        public var discount: Double?

        public var coupon: [String: Any]?

        public var codCharges: [String: Any]?

        public var buyNow: Bool?

        public var uid: Int

        public var cartValue: Double?

        public var cashback: [String: Any]

        public var pickUpCustomerDetails: [String: Any]?

        public var isDefault: Bool

        public var orderId: String?

        public var appId: String?

        public var shipments: [[String: Any]]?

        public var articles: [[String: Any]]

        public var promotion: [String: Any]?

        public var payments: [String: Any]?

        public var gstin: String?

        public var isArchive: Bool?

        public var meta: [String: Any]?

        public var bulkCouponDiscount: Double?

        public var mergeQty: Bool?

        public var checkoutMode: String?

        public var fcIndexMap: [Int]?

        public var deliveryCharges: [String: Any]?

        public var id: String

        public var paymentMode: String?

        public var expireAt: String

        public var comment: String?

        public var lastModified: String

        public var paymentMethods: [[String: Any]]?

        public var fyndCredits: [String: Any]?

        public var createdOn: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case discount

            case coupon

            case codCharges = "cod_charges"

            case buyNow = "buy_now"

            case uid

            case cartValue = "cart_value"

            case cashback

            case pickUpCustomerDetails = "pick_up_customer_details"

            case isDefault = "is_default"

            case orderId = "order_id"

            case appId = "app_id"

            case shipments

            case articles

            case promotion

            case payments

            case gstin

            case isArchive = "is_archive"

            case meta

            case bulkCouponDiscount = "bulk_coupon_discount"

            case mergeQty = "merge_qty"

            case checkoutMode = "checkout_mode"

            case fcIndexMap = "fc_index_map"

            case deliveryCharges = "delivery_charges"

            case id = "_id"

            case paymentMode = "payment_mode"

            case expireAt = "expire_at"

            case comment

            case lastModified = "last_modified"

            case paymentMethods = "payment_methods"

            case fyndCredits = "fynd_credits"

            case createdOn = "created_on"

            case isActive = "is_active"
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.userId = userId

            self.discount = discount

            self.coupon = coupon

            self.codCharges = codCharges

            self.buyNow = buyNow

            self.uid = uid

            self.cartValue = cartValue

            self.cashback = cashback

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.isDefault = isDefault

            self.orderId = orderId

            self.appId = appId

            self.shipments = shipments

            self.articles = articles

            self.promotion = promotion

            self.payments = payments

            self.gstin = gstin

            self.isArchive = isArchive

            self.meta = meta

            self.bulkCouponDiscount = bulkCouponDiscount

            self.mergeQty = mergeQty

            self.checkoutMode = checkoutMode

            self.fcIndexMap = fcIndexMap

            self.deliveryCharges = deliveryCharges

            self.id = id

            self.paymentMode = paymentMode

            self.expireAt = expireAt

            self.comment = comment

            self.lastModified = lastModified

            self.paymentMethods = paymentMethods

            self.fyndCredits = fyndCredits

            self.createdOn = createdOn

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                discount = try container.decode(Double.self, forKey: .discount)

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

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                cartValue = try container.decode(Double.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

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
                shipments = try container.decode([[String: Any]].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                promotion = try container.decode([String: Any].self, forKey: .promotion)

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
                gstin = try container.decode(String.self, forKey: .gstin)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                mergeQty = try container.decode(Bool.self, forKey: .mergeQty)

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
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastModified = try container.decode(String.self, forKey: .lastModified)

            do {
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(promotion, forKey: .promotion)

            try? container.encode(payments, forKey: .payments)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
