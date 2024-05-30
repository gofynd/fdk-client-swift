

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: AbandonedCart
        Used By: Cart
    */

    class AbandonedCart: Codable {
        
        
        public var expireAt: String
        
        public var promotion: [String: Any]?
        
        public var isDefault: Bool
        
        public var comment: String?
        
        public var articles: [[String: Any]]
        
        public var coupon: [String: Any]?
        
        public var bulkCouponDiscount: Double?
        
        public var id: String
        
        public var fyndCredits: [String: Any]?
        
        public var fcIndexMap: [Int]?
        
        public var orderId: String?
        
        public var discount: Double?
        
        public var codCharges: [String: Any]?
        
        public var payments: [String: Any]?
        
        public var paymentMode: String?
        
        public var shipments: [[String: Any]]?
        
        public var pickUpCustomerDetails: [String: Any]?
        
        public var uid: Int
        
        public var checkoutMode: String?
        
        public var cartValue: Double?
        
        public var isArchive: Bool?
        
        public var createdOn: String
        
        public var lastModified: String
        
        public var meta: [String: Any]?
        
        public var buyNow: Bool?
        
        public var isActive: Bool?
        
        public var cashback: [String: Any]
        
        public var paymentMethods: [[String: Any]]?
        
        public var gstin: String?
        
        public var deliveryCharges: [String: Any]?
        
        public var mergeQty: Bool?
        
        public var userId: String
        
        public var appId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case expireAt = "expire_at"
            
            case promotion = "promotion"
            
            case isDefault = "is_default"
            
            case comment = "comment"
            
            case articles = "articles"
            
            case coupon = "coupon"
            
            case bulkCouponDiscount = "bulk_coupon_discount"
            
            case id = "_id"
            
            case fyndCredits = "fynd_credits"
            
            case fcIndexMap = "fc_index_map"
            
            case orderId = "order_id"
            
            case discount = "discount"
            
            case codCharges = "cod_charges"
            
            case payments = "payments"
            
            case paymentMode = "payment_mode"
            
            case shipments = "shipments"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case uid = "uid"
            
            case checkoutMode = "checkout_mode"
            
            case cartValue = "cart_value"
            
            case isArchive = "is_archive"
            
            case createdOn = "created_on"
            
            case lastModified = "last_modified"
            
            case meta = "meta"
            
            case buyNow = "buy_now"
            
            case isActive = "is_active"
            
            case cashback = "cashback"
            
            case paymentMethods = "payment_methods"
            
            case gstin = "gstin"
            
            case deliveryCharges = "delivery_charges"
            
            case mergeQty = "merge_qty"
            
            case userId = "user_id"
            
            case appId = "app_id"
            
        }

        public init(appId: String? = nil, articles: [[String: Any]], bulkCouponDiscount: Double? = nil, buyNow: Bool? = nil, cartValue: Double? = nil, cashback: [String: Any], checkoutMode: String? = nil, codCharges: [String: Any]? = nil, comment: String? = nil, coupon: [String: Any]? = nil, createdOn: String, deliveryCharges: [String: Any]? = nil, discount: Double? = nil, expireAt: String, fcIndexMap: [Int]? = nil, fyndCredits: [String: Any]? = nil, gstin: String? = nil, isActive: Bool? = nil, isArchive: Bool? = nil, isDefault: Bool, lastModified: String, mergeQty: Bool? = nil, meta: [String: Any]? = nil, orderId: String? = nil, payments: [String: Any]? = nil, paymentMethods: [[String: Any]]? = nil, paymentMode: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, promotion: [String: Any]? = nil, shipments: [[String: Any]]? = nil, uid: Int, userId: String, id: String) {
            
            self.expireAt = expireAt
            
            self.promotion = promotion
            
            self.isDefault = isDefault
            
            self.comment = comment
            
            self.articles = articles
            
            self.coupon = coupon
            
            self.bulkCouponDiscount = bulkCouponDiscount
            
            self.id = id
            
            self.fyndCredits = fyndCredits
            
            self.fcIndexMap = fcIndexMap
            
            self.orderId = orderId
            
            self.discount = discount
            
            self.codCharges = codCharges
            
            self.payments = payments
            
            self.paymentMode = paymentMode
            
            self.shipments = shipments
            
            self.pickUpCustomerDetails = pickUpCustomerDetails
            
            self.uid = uid
            
            self.checkoutMode = checkoutMode
            
            self.cartValue = cartValue
            
            self.isArchive = isArchive
            
            self.createdOn = createdOn
            
            self.lastModified = lastModified
            
            self.meta = meta
            
            self.buyNow = buyNow
            
            self.isActive = isActive
            
            self.cashback = cashback
            
            self.paymentMethods = paymentMethods
            
            self.gstin = gstin
            
            self.deliveryCharges = deliveryCharges
            
            self.mergeQty = mergeQty
            
            self.userId = userId
            
            self.appId = appId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                expireAt = try container.decode(String.self, forKey: .expireAt)
                
            
            
            
                do {
                    promotion = try container.decode([String: Any].self, forKey: .promotion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                articles = try container.decode([[String: Any]].self, forKey: .articles)
                
            
            
            
                do {
                    coupon = try container.decode([String: Any].self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkCouponDiscount = try container.decode(Double.self, forKey: .bulkCouponDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    fyndCredits = try container.decode([String: Any].self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fcIndexMap = try container.decode([Int].self, forKey: .fcIndexMap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discount = try container.decode(Double.self, forKey: .discount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode([String: Any].self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([String: Any].self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipments = try container.decode([[String: Any]].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartValue = try container.decode(Double.self, forKey: .cartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchive = try container.decode(Bool.self, forKey: .isArchive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                lastModified = try container.decode(String.self, forKey: .lastModified)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyNow = try container.decode(Bool.self, forKey: .buyNow)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cashback = try container.decode([String: Any].self, forKey: .cashback)
                
            
            
            
                do {
                    paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode([String: Any].self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mergeQty = try container.decode(Bool.self, forKey: .mergeQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
            
            
            try? container.encodeIfPresent(promotion, forKey: .promotion)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(bulkCouponDiscount, forKey: .bulkCouponDiscount)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(isArchive, forKey: .isArchive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(buyNow, forKey: .buyNow)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(mergeQty, forKey: .mergeQty)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
        }
        
    }
}


