

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderDetails
        Used By: Order
    */

    class OrderDetails: Codable {
        
        
        public var fyndOrderId: String?
        
        public var createdAt: String?
        
        public var userId: String?
        
        public var taxDetails: TaxDetails?
        
        public var mongoCartId: Double?
        
        public var deliveryCharges: Double?
        
        public var transactionId: String?
        
        public var collectBy: String?
        
        public var headers: [String: Any]?
        
        public var couponValue: Double?
        
        public var orderValue: Double?
        
        public var createdTime: String?
        
        public var currency: String?
        
        public var totalOrderValue: Double?
        
        public var orderingChannel: String?
        
        public var meta: [String: Any]?
        
        public var codCharges: Double?
        
        public var cashbackValue: Double?
        
        public var refundBy: String?
        
        public var affiliateOrderDate: String?
        
        public var paymentMethods: [String: Any]?
        
        public var affiliateOrderId: String?
        
        public var paymentModeId: Double?
        
        public var promotionEffectiveDiscount: Double?
        
        public var modeOfPayment: String?
        
        public var discount: Double?
        
        public var cashbackApplied: Double?
        
        public var fyndCredits: Double?
        
        public var affiliateId: String?
        
        public var orderingChannelLogo: String?
        
        public var prices: Prices?
        
        public var charges: [PriceAdjustmentCharge]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
            case createdAt = "created_at"
            
            case userId = "user_id"
            
            case taxDetails = "tax_details"
            
            case mongoCartId = "mongo_cart_id"
            
            case deliveryCharges = "delivery_charges"
            
            case transactionId = "transaction_id"
            
            case collectBy = "collect_by"
            
            case headers = "headers"
            
            case couponValue = "coupon_value"
            
            case orderValue = "order_value"
            
            case createdTime = "created_time"
            
            case currency = "currency"
            
            case totalOrderValue = "total_order_value"
            
            case orderingChannel = "ordering_channel"
            
            case meta = "meta"
            
            case codCharges = "cod_charges"
            
            case cashbackValue = "cashback_value"
            
            case refundBy = "refund_by"
            
            case affiliateOrderDate = "affiliate_order_date"
            
            case paymentMethods = "payment_methods"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case paymentModeId = "payment_mode_id"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case modeOfPayment = "mode_of_payment"
            
            case discount = "discount"
            
            case cashbackApplied = "cashback_applied"
            
            case fyndCredits = "fynd_credits"
            
            case affiliateId = "affiliate_id"
            
            case orderingChannelLogo = "ordering_channel_logo"
            
            case prices = "prices"
            
            case charges = "charges"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderDate: String? = nil, affiliateOrderId: String? = nil, cashbackApplied: Double? = nil, cashbackValue: Double? = nil, charges: [PriceAdjustmentCharge]? = nil, codCharges: Double? = nil, collectBy: String? = nil, couponValue: Double? = nil, createdAt: String? = nil, createdTime: String? = nil, currency: String? = nil, deliveryCharges: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, fyndOrderId: String? = nil, headers: [String: Any]? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, mongoCartId: Double? = nil, orderingChannel: String? = nil, orderingChannelLogo: String? = nil, orderValue: Double? = nil, paymentMethods: [String: Any]? = nil, paymentModeId: Double? = nil, prices: Prices? = nil, promotionEffectiveDiscount: Double? = nil, refundBy: String? = nil, taxDetails: TaxDetails? = nil, totalOrderValue: Double? = nil, transactionId: String? = nil, userId: String? = nil) {
            
            self.fyndOrderId = fyndOrderId
            
            self.createdAt = createdAt
            
            self.userId = userId
            
            self.taxDetails = taxDetails
            
            self.mongoCartId = mongoCartId
            
            self.deliveryCharges = deliveryCharges
            
            self.transactionId = transactionId
            
            self.collectBy = collectBy
            
            self.headers = headers
            
            self.couponValue = couponValue
            
            self.orderValue = orderValue
            
            self.createdTime = createdTime
            
            self.currency = currency
            
            self.totalOrderValue = totalOrderValue
            
            self.orderingChannel = orderingChannel
            
            self.meta = meta
            
            self.codCharges = codCharges
            
            self.cashbackValue = cashbackValue
            
            self.refundBy = refundBy
            
            self.affiliateOrderDate = affiliateOrderDate
            
            self.paymentMethods = paymentMethods
            
            self.affiliateOrderId = affiliateOrderId
            
            self.paymentModeId = paymentModeId
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.modeOfPayment = modeOfPayment
            
            self.discount = discount
            
            self.cashbackApplied = cashbackApplied
            
            self.fyndCredits = fyndCredits
            
            self.affiliateId = affiliateId
            
            self.orderingChannelLogo = orderingChannelLogo
            
            self.prices = prices
            
            self.charges = charges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mongoCartId = try container.decode(Double.self, forKey: .mongoCartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectBy = try container.decode(String.self, forKey: .collectBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    headers = try container.decode([String: Any].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(Double.self, forKey: .orderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTime = try container.decode(String.self, forKey: .createdTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundBy = try container.decode(String.self, forKey: .refundBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModeId = try container.decode(Double.self, forKey: .paymentModeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
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
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(createdTime, forKey: .createdTime)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderDetails
        Used By: Order
    */

    class OrderDetails: Codable {
        
        
        public var fyndOrderId: String?
        
        public var createdAt: String?
        
        public var userId: String?
        
        public var taxDetails: TaxDetails?
        
        public var mongoCartId: Double?
        
        public var deliveryCharges: Double?
        
        public var transactionId: String?
        
        public var collectBy: String?
        
        public var headers: [String: Any]?
        
        public var couponValue: Double?
        
        public var orderValue: Double?
        
        public var createdTime: String?
        
        public var currency: String?
        
        public var totalOrderValue: Double?
        
        public var orderingChannel: String?
        
        public var meta: [String: Any]?
        
        public var codCharges: Double?
        
        public var cashbackValue: Double?
        
        public var refundBy: String?
        
        public var affiliateOrderDate: String?
        
        public var paymentMethods: [String: Any]?
        
        public var affiliateOrderId: String?
        
        public var paymentModeId: Double?
        
        public var promotionEffectiveDiscount: Double?
        
        public var modeOfPayment: String?
        
        public var discount: Double?
        
        public var cashbackApplied: Double?
        
        public var fyndCredits: Double?
        
        public var affiliateId: String?
        
        public var orderingChannelLogo: String?
        
        public var prices: Prices?
        
        public var charges: [PriceAdjustmentCharge]?
        

        public enum CodingKeys: String, CodingKey {
            
            case fyndOrderId = "fynd_order_id"
            
            case createdAt = "created_at"
            
            case userId = "user_id"
            
            case taxDetails = "tax_details"
            
            case mongoCartId = "mongo_cart_id"
            
            case deliveryCharges = "delivery_charges"
            
            case transactionId = "transaction_id"
            
            case collectBy = "collect_by"
            
            case headers = "headers"
            
            case couponValue = "coupon_value"
            
            case orderValue = "order_value"
            
            case createdTime = "created_time"
            
            case currency = "currency"
            
            case totalOrderValue = "total_order_value"
            
            case orderingChannel = "ordering_channel"
            
            case meta = "meta"
            
            case codCharges = "cod_charges"
            
            case cashbackValue = "cashback_value"
            
            case refundBy = "refund_by"
            
            case affiliateOrderDate = "affiliate_order_date"
            
            case paymentMethods = "payment_methods"
            
            case affiliateOrderId = "affiliate_order_id"
            
            case paymentModeId = "payment_mode_id"
            
            case promotionEffectiveDiscount = "promotion_effective_discount"
            
            case modeOfPayment = "mode_of_payment"
            
            case discount = "discount"
            
            case cashbackApplied = "cashback_applied"
            
            case fyndCredits = "fynd_credits"
            
            case affiliateId = "affiliate_id"
            
            case orderingChannelLogo = "ordering_channel_logo"
            
            case prices = "prices"
            
            case charges = "charges"
            
        }

        public init(affiliateId: String? = nil, affiliateOrderDate: String? = nil, affiliateOrderId: String? = nil, cashbackApplied: Double? = nil, cashbackValue: Double? = nil, charges: [PriceAdjustmentCharge]? = nil, codCharges: Double? = nil, collectBy: String? = nil, couponValue: Double? = nil, createdAt: String? = nil, createdTime: String? = nil, currency: String? = nil, deliveryCharges: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, fyndOrderId: String? = nil, headers: [String: Any]? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, mongoCartId: Double? = nil, orderingChannel: String? = nil, orderingChannelLogo: String? = nil, orderValue: Double? = nil, paymentMethods: [String: Any]? = nil, paymentModeId: Double? = nil, prices: Prices? = nil, promotionEffectiveDiscount: Double? = nil, refundBy: String? = nil, taxDetails: TaxDetails? = nil, totalOrderValue: Double? = nil, transactionId: String? = nil, userId: String? = nil) {
            
            self.fyndOrderId = fyndOrderId
            
            self.createdAt = createdAt
            
            self.userId = userId
            
            self.taxDetails = taxDetails
            
            self.mongoCartId = mongoCartId
            
            self.deliveryCharges = deliveryCharges
            
            self.transactionId = transactionId
            
            self.collectBy = collectBy
            
            self.headers = headers
            
            self.couponValue = couponValue
            
            self.orderValue = orderValue
            
            self.createdTime = createdTime
            
            self.currency = currency
            
            self.totalOrderValue = totalOrderValue
            
            self.orderingChannel = orderingChannel
            
            self.meta = meta
            
            self.codCharges = codCharges
            
            self.cashbackValue = cashbackValue
            
            self.refundBy = refundBy
            
            self.affiliateOrderDate = affiliateOrderDate
            
            self.paymentMethods = paymentMethods
            
            self.affiliateOrderId = affiliateOrderId
            
            self.paymentModeId = paymentModeId
            
            self.promotionEffectiveDiscount = promotionEffectiveDiscount
            
            self.modeOfPayment = modeOfPayment
            
            self.discount = discount
            
            self.cashbackApplied = cashbackApplied
            
            self.fyndCredits = fyndCredits
            
            self.affiliateId = affiliateId
            
            self.orderingChannelLogo = orderingChannelLogo
            
            self.prices = prices
            
            self.charges = charges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
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
                    taxDetails = try container.decode(TaxDetails.self, forKey: .taxDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mongoCartId = try container.decode(Double.self, forKey: .mongoCartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectBy = try container.decode(String.self, forKey: .collectBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    headers = try container.decode([String: Any].self, forKey: .headers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponValue = try container.decode(Double.self, forKey: .couponValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(Double.self, forKey: .orderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdTime = try container.decode(String.self, forKey: .createdTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannel = try container.decode(String.self, forKey: .orderingChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    codCharges = try container.decode(Double.self, forKey: .codCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundBy = try container.decode(String.self, forKey: .refundBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModeId = try container.decode(Double.self, forKey: .paymentModeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
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
                    cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateId = try container.decode(String.self, forKey: .affiliateId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)
            
            
            
            
            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(collectBy, forKey: .collectBy)
            
            
            
            
            try? container.encodeIfPresent(headers, forKey: .headers)
            
            
            
            
            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(createdTime, forKey: .createdTime)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)
            
            
            
            
            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)
            
            
            
            
            try? container.encodeIfPresent(refundBy, forKey: .refundBy)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)
            
            
            
            
            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
            
            
            
            
            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
            
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
        }
        
    }
}


