

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CartData
        Used By: Payment
    */
    class CartData: Codable {
        
        public var id: String?
        
        public var uid: Int?
        
        public var gstin: String?
        
        public var comment: String?
        
        public var userId: String?
        
        public var articles: [Article]?
        
        public var cashback: Int?
        
        public var discount: Int?
        
        public var shipment: [String: Any]?
        
        public var expireAt: String?
        
        public var cartValue: Int?
        
        public var createdOn: String?
        
        public var isArchive: Bool?
        
        public var isDefault: Bool?
        
        public var codCharges: Int?
        
        public var couponCode: String?
        
        public var couponValue: Int?
        
        public var fcIndexMap: [Int]?
        
        public var fyndCredits: Int?
        
        public var paymentMode: String?
        
        public var checkoutMode: String?
        
        public var lastModified: String?
        
        public var totalQuantity: Int?
        
        public var cashbackApplied: Int?
        
        public var deliveryCharges: Int?
        
        public var appliedCouponId: String?
        
        public var originalCartValue: Int?
        
        public var bulkCouponDiscount: Int?
        
        public var fyndCreditsAutoApplied: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case uid = "uid"
            
            case gstin = "gstin"
            
            case comment = "comment"
            
            case userId = "user_id"
            
            case articles = "articles"
            
            case cashback = "cashback"
            
            case discount = "discount"
            
            case shipment = "shipment"
            
            case expireAt = "expire_at"
            
            case cartValue = "cart_value"
            
            case createdOn = "created_on"
            
            case isArchive = "is_archive"
            
            case isDefault = "is_default"
            
            case codCharges = "cod_charges"
            
            case couponCode = "coupon_code"
            
            case couponValue = "coupon_value"
            
            case fcIndexMap = "fc_index_map"
            
            case fyndCredits = "fynd_credits"
            
            case paymentMode = "payment_mode"
            
            case checkoutMode = "checkout_mode"
            
            case lastModified = "last_modified"
            
            case totalQuantity = "total_quantity"
            
            case cashbackApplied = "cashback_applied"
            
            case deliveryCharges = "delivery_charges"
            
            case appliedCouponId = "applied_coupon_id"
            
            case originalCartValue = "original_cart_value"
            
            case bulkCouponDiscount = "bulk_coupon_discount"
            
            case fyndCreditsAutoApplied = "fynd_credits_auto_applied"
            
        }

        public init(appliedCouponId: String? = nil, articles: [Article]? = nil, bulkCouponDiscount: Int? = nil, cartValue: Int? = nil, cashback: Int? = nil, cashbackApplied: Int? = nil, checkoutMode: String? = nil, codCharges: Int? = nil, comment: String? = nil, couponCode: String? = nil, couponValue: Int? = nil, createdOn: String? = nil, deliveryCharges: Int? = nil, discount: Int? = nil, expireAt: String? = nil, fcIndexMap: [Int]? = nil, fyndCredits: Int? = nil, fyndCreditsAutoApplied: Bool? = nil, gstin: String? = nil, isArchive: Bool? = nil, isDefault: Bool? = nil, lastModified: String? = nil, originalCartValue: Int? = nil, paymentMode: String? = nil, shipment: [String: Any]? = nil, totalQuantity: Int? = nil, uid: Int? = nil, userId: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.uid = uid
            
            self.gstin = gstin
            
            self.comment = comment
            
            self.userId = userId
            
            self.articles = articles
            
            self.cashback = cashback
            
            self.discount = discount
            
            self.shipment = shipment
            
            self.expireAt = expireAt
            
            self.cartValue = cartValue
            
            self.createdOn = createdOn
            
            self.isArchive = isArchive
            
            self.isDefault = isDefault
            
            self.codCharges = codCharges
            
            self.couponCode = couponCode
            
            self.couponValue = couponValue
            
            self.fcIndexMap = fcIndexMap
            
            self.fyndCredits = fyndCredits
            
            self.paymentMode = paymentMode
            
            self.checkoutMode = checkoutMode
            
            self.lastModified = lastModified
            
            self.totalQuantity = totalQuantity
            
            self.cashbackApplied = cashbackApplied
            
            self.deliveryCharges = deliveryCharges
            
            self.appliedCouponId = appliedCouponId
            
            self.originalCartValue = originalCartValue
            
            self.bulkCouponDiscount = bulkCouponDiscount
            
            self.fyndCreditsAutoApplied = fyndCreditsAutoApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
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
                comment = try container.decode(String.self, forKey: .comment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userId = try container.decode(String.self, forKey: .userId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articles = try container.decode([Article].self, forKey: .articles)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cashback = try container.decode(Int.self, forKey: .cashback)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(Int.self, forKey: .discount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipment = try container.decode([String: Any].self, forKey: .shipment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                expireAt = try container.decode(String.self, forKey: .expireAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartValue = try container.decode(Int.self, forKey: .cartValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
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
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponCode = try container.decode(String.self, forKey: .couponCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                couponValue = try container.decode(Int.self, forKey: .couponValue)
            
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
                fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
            
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
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lastModified = try container.decode(String.self, forKey: .lastModified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryCharges = try container.decode(Int.self, forKey: .deliveryCharges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                appliedCouponId = try container.decode(String.self, forKey: .appliedCouponId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                originalCartValue = try container.decode(Int.self, forKey: .originalCartValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bulkCouponDiscount = try container.decode(Int.self, forKey: .bulkCouponDiscount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fyndCreditsAutoApplied = try container.decode(Bool.self, forKey: .fyndCreditsAutoApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            try? container.encodeIfPresent(cashback, forKey: .cashback)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(isArchive, forKey: .isArchive)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            try? container.encodeIfPresent(fcIndexMap, forKey: .fcIndexMap)
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            try? container.encodeIfPresent(lastModified, forKey: .lastModified)
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            try? container.encodeIfPresent(appliedCouponId, forKey: .appliedCouponId)
            
            
            
            try? container.encodeIfPresent(originalCartValue, forKey: .originalCartValue)
            
            
            
            try? container.encodeIfPresent(bulkCouponDiscount, forKey: .bulkCouponDiscount)
            
            
            
            try? container.encodeIfPresent(fyndCreditsAutoApplied, forKey: .fyndCreditsAutoApplied)
            
            
        }
        
    }
}
