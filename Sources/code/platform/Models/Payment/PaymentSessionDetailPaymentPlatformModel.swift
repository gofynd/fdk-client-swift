

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentSessionDetail
        Used By: Payment
    */

    class PaymentSessionDetail: Codable {
        
        
        public var paymentId: String
        
        public var mode: String
        
        public var amount: Int
        
        public var successUrl: String
        
        public var shippingAddress: AddressDetail?
        
        public var amountCaptured: Int
        
        public var amountRefunded: Int?
        
        public var aggregatorCustomerId: String?
        
        public var cancelUrl: String
        
        public var paymentMethods: [[String: Any]]
        
        public var created: String?
        
        public var gUserId: String
        
        public var currency: String
        
        public var merchantLocale: String?
        
        public var locale: String?
        
        public var aggregatorOrderId: String
        
        public var gid: String
        
        public var kind: String?
        
        public var billingAddress: AddressDetail?
        
        public var captured: Bool?
        
        public var meta: [String: Any]?
        
        public var status: String
        
        public var reason: ReasonDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentId = "payment_id"
            
            case mode = "mode"
            
            case amount = "amount"
            
            case successUrl = "success_url"
            
            case shippingAddress = "shipping_address"
            
            case amountCaptured = "amount_captured"
            
            case amountRefunded = "amount_refunded"
            
            case aggregatorCustomerId = "aggregator_customer_id"
            
            case cancelUrl = "cancel_url"
            
            case paymentMethods = "payment_methods"
            
            case created = "created"
            
            case gUserId = "g_user_id"
            
            case currency = "currency"
            
            case merchantLocale = "merchant_locale"
            
            case locale = "locale"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case gid = "gid"
            
            case kind = "kind"
            
            case billingAddress = "billing_address"
            
            case captured = "captured"
            
            case meta = "meta"
            
            case status = "status"
            
            case reason = "reason"
            
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, billingAddress: AddressDetail? = nil, cancelUrl: String, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, meta: [String: Any]? = nil, mode: String, paymentId: String, paymentMethods: [[String: Any]], reason: ReasonDetail? = nil, shippingAddress: AddressDetail? = nil, status: String, successUrl: String) {
            
            self.paymentId = paymentId
            
            self.mode = mode
            
            self.amount = amount
            
            self.successUrl = successUrl
            
            self.shippingAddress = shippingAddress
            
            self.amountCaptured = amountCaptured
            
            self.amountRefunded = amountRefunded
            
            self.aggregatorCustomerId = aggregatorCustomerId
            
            self.cancelUrl = cancelUrl
            
            self.paymentMethods = paymentMethods
            
            self.created = created
            
            self.gUserId = gUserId
            
            self.currency = currency
            
            self.merchantLocale = merchantLocale
            
            self.locale = locale
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.gid = gid
            
            self.kind = kind
            
            self.billingAddress = billingAddress
            
            self.captured = captured
            
            self.meta = meta
            
            self.status = status
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentId = try container.decode(String.self, forKey: .paymentId)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                successUrl = try container.decode(String.self, forKey: .successUrl)
                
            
            
            
                do {
                    shippingAddress = try container.decode(AddressDetail.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)
                
            
            
            
                do {
                    amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorCustomerId = try container.decode(String.self, forKey: .aggregatorCustomerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cancelUrl = try container.decode(String.self, forKey: .cancelUrl)
                
            
            
            
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    created = try container.decode(String.self, forKey: .created)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                gUserId = try container.decode(String.self, forKey: .gUserId)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    merchantLocale = try container.decode(String.self, forKey: .merchantLocale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    captured = try container.decode(Bool.self, forKey: .captured)
                
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
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    reason = try container.decode(ReasonDetail.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(successUrl, forKey: .successUrl)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)
            
            
            
            
            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)
            
            
            
            
            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)
            
            
            
            
            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(gUserId, forKey: .gUserId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(captured, forKey: .captured)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentSessionDetail
        Used By: Payment
    */

    class PaymentSessionDetail: Codable {
        
        
        public var paymentId: String
        
        public var mode: String
        
        public var amount: Int
        
        public var successUrl: String
        
        public var shippingAddress: AddressDetail?
        
        public var amountCaptured: Int
        
        public var amountRefunded: Int?
        
        public var aggregatorCustomerId: String?
        
        public var cancelUrl: String
        
        public var paymentMethods: [[String: Any]]
        
        public var created: String?
        
        public var gUserId: String
        
        public var currency: String
        
        public var merchantLocale: String?
        
        public var locale: String?
        
        public var aggregatorOrderId: String
        
        public var gid: String
        
        public var kind: String?
        
        public var billingAddress: AddressDetail?
        
        public var captured: Bool?
        
        public var meta: [String: Any]?
        
        public var status: String
        
        public var reason: ReasonDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentId = "payment_id"
            
            case mode = "mode"
            
            case amount = "amount"
            
            case successUrl = "success_url"
            
            case shippingAddress = "shipping_address"
            
            case amountCaptured = "amount_captured"
            
            case amountRefunded = "amount_refunded"
            
            case aggregatorCustomerId = "aggregator_customer_id"
            
            case cancelUrl = "cancel_url"
            
            case paymentMethods = "payment_methods"
            
            case created = "created"
            
            case gUserId = "g_user_id"
            
            case currency = "currency"
            
            case merchantLocale = "merchant_locale"
            
            case locale = "locale"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case gid = "gid"
            
            case kind = "kind"
            
            case billingAddress = "billing_address"
            
            case captured = "captured"
            
            case meta = "meta"
            
            case status = "status"
            
            case reason = "reason"
            
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, billingAddress: AddressDetail? = nil, cancelUrl: String, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, meta: [String: Any]? = nil, mode: String, paymentId: String, paymentMethods: [[String: Any]], reason: ReasonDetail? = nil, shippingAddress: AddressDetail? = nil, status: String, successUrl: String) {
            
            self.paymentId = paymentId
            
            self.mode = mode
            
            self.amount = amount
            
            self.successUrl = successUrl
            
            self.shippingAddress = shippingAddress
            
            self.amountCaptured = amountCaptured
            
            self.amountRefunded = amountRefunded
            
            self.aggregatorCustomerId = aggregatorCustomerId
            
            self.cancelUrl = cancelUrl
            
            self.paymentMethods = paymentMethods
            
            self.created = created
            
            self.gUserId = gUserId
            
            self.currency = currency
            
            self.merchantLocale = merchantLocale
            
            self.locale = locale
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.gid = gid
            
            self.kind = kind
            
            self.billingAddress = billingAddress
            
            self.captured = captured
            
            self.meta = meta
            
            self.status = status
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentId = try container.decode(String.self, forKey: .paymentId)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                successUrl = try container.decode(String.self, forKey: .successUrl)
                
            
            
            
                do {
                    shippingAddress = try container.decode(AddressDetail.self, forKey: .shippingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)
                
            
            
            
                do {
                    amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorCustomerId = try container.decode(String.self, forKey: .aggregatorCustomerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                cancelUrl = try container.decode(String.self, forKey: .cancelUrl)
                
            
            
            
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    created = try container.decode(String.self, forKey: .created)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                gUserId = try container.decode(String.self, forKey: .gUserId)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                do {
                    merchantLocale = try container.decode(String.self, forKey: .merchantLocale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    captured = try container.decode(Bool.self, forKey: .captured)
                
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
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    reason = try container.decode(ReasonDetail.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(successUrl, forKey: .successUrl)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)
            
            
            
            
            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)
            
            
            
            
            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)
            
            
            
            
            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(gUserId, forKey: .gUserId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(captured, forKey: .captured)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}


