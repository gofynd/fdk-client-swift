

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AbandonedCart
         Used By: Cart
     */

    class AbandonedCart: Codable {
        public var gstin: String?

        public var bulkCouponDiscount: Double?

        public var shipments: [[String: Any]]?

        public var isArchive: Bool?

        public var deliveryCharges: [String: Any]?

        public var orderId: String?

        public var mergeQty: Bool?

        public var lastModified: String

        public var createdOn: String

        public var isActive: Bool?

        public var isDefault: Bool

        public var cashback: [String: Any]

        public var coupon: [String: Any]?

        public var userId: String

        public var expireAt: String

        public var checkoutMode: String?

        public var appId: String?

        public var buyNow: Bool?

        public var uid: Int

        public var fyndCredits: [String: Any]?

        public var id: String

        public var paymentMode: String?

        public var codCharges: [String: Any]?

        public var comment: String?

        public var fcIndexMap: [Int]?

        public var payments: [String: Any]?

        public var pickUpCustomerDetails: [String: Any]?

        public var discount: Double?

        public var paymentMethods: [[String: Any]]?

        public var cartValue: Double?

        public var articles: [[String: Any]]

        public var meta: [String: Any]?

        public var promotion: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case bulkCouponDiscount = "bulk_coupon_discount"

            case shipments

            case isArchive = "is_archive"

            case deliveryCharges = "delivery_charges"

            case orderId = "order_id"

            case mergeQty = "merge_qty"

            case lastModified = "last_modified"

            case createdOn = "created_on"

            case isActive = "is_active"

            case isDefault = "is_default"

            case cashback

            case coupon

            case userId = "user_id"

            case expireAt = "expire_at"

            case checkoutMode = "checkout_mode"

            case appId = "app_id"

            case buyNow = "buy_now"

            case uid

            case fyndCredits = "fynd_credits"

            case id = "_id"

            case paymentMode = "payment_mode"

            case codCharges = "cod_charges"

            case comment

            case fcIndexMap = "fc_index_map"

            case payments

            case pickUpCustomerDetails = "pick_up_customer_details"

            case discount

            case paymentMethods = "payment_methods"

            case cartValue = "cart_value"

            case articles

            case meta

            case promotion
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            self.gstin = gstin

            self.bulkCouponDiscount = bulkCouponDiscount

            self.shipments = shipments

            self.isArchive = isArchive

            self.deliveryCharges = deliveryCharges

            self.orderId = orderId

            self.mergeQty = mergeQty

            self.lastModified = lastModified

            self.createdOn = createdOn

            self.isActive = isActive

            self.isDefault = isDefault

            self.cashback = cashback

            self.coupon = coupon

            self.userId = userId

            self.expireAt = expireAt

            self.checkoutMode = checkoutMode

            self.appId = appId

            self.buyNow = buyNow

            self.uid = uid

            self.fyndCredits = fyndCredits

            self.id = id

            self.paymentMode = paymentMode

            self.codCharges = codCharges

            self.comment = comment

            self.fcIndexMap = fcIndexMap

            self.payments = payments

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.discount = discount

            self.paymentMethods = paymentMethods

            self.cartValue = cartValue

            self.articles = articles

            self.meta = meta

            self.promotion = promotion
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

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

            lastModified = try container.decode(String.self, forKey: .lastModified)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            cashback = try container.decode([String: Any].self, forKey: .cashback)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            expireAt = try container.decode(String.self, forKey: .expireAt)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

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
                buyNow = try container.decode(Bool.self, forKey: .buyNow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)

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

            do {
                codCharges = try container.decode([String: Any].self, forKey: .codCharges)

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
                fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)

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
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

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

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(gstin, forKey: .gstin)

            try? container.encode(bulkCouponDiscount, forKey: .bulkCouponDiscount)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(isArchive, forKey: .isArchive)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(mergeQty, forKey: .mergeQty)

            try? container.encodeIfPresent(lastModified, forKey: .lastModified)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encode(coupon, forKey: .coupon)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(expireAt, forKey: .expireAt)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(buyNow, forKey: .buyNow)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encode(comment, forKey: .comment)

            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)

            try? container.encode(payments, forKey: .payments)

            try? container.encode(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(promotion, forKey: .promotion)
        }
    }
}
