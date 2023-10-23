

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
        
        public var gUserId: String
        
        public var currency: String
        
        public var merchantLocale: String?
        
        public var locale: String?
        
        public var aggregatorOrderId: String
        
        public var gid: String
        
        public var cancelUrl: String
        
        public var amountRefunded: Int?
        
        public var captured: Bool?
        
        public var created: String?
        
        public var status: String
        
        public var kind: String?
        
        public var aggregatorCustomerId: String?
        
        public var paymentMethods: [[String: Any]]
        
        public var billingAddress: AddressDetail?
        
        public var amountCaptured: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentId = "payment_id"
            
            case mode = "mode"
            
            case amount = "amount"
            
            case successUrl = "success_url"
            
            case shippingAddress = "shipping_address"
            
            case gUserId = "g_user_id"
            
            case currency = "currency"
            
            case merchantLocale = "merchant_locale"
            
            case locale = "locale"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case gid = "gid"
            
            case cancelUrl = "cancel_url"
            
            case amountRefunded = "amount_refunded"
            
            case captured = "captured"
            
            case created = "created"
            
            case status = "status"
            
            case kind = "kind"
            
            case aggregatorCustomerId = "aggregator_customer_id"
            
            case paymentMethods = "payment_methods"
            
            case billingAddress = "billing_address"
            
            case amountCaptured = "amount_captured"
            
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, billingAddress: AddressDetail? = nil, cancelUrl: String, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, mode: String, paymentId: String, paymentMethods: [[String: Any]], shippingAddress: AddressDetail? = nil, status: String, successUrl: String) {
            
            self.paymentId = paymentId
            
            self.mode = mode
            
            self.amount = amount
            
            self.successUrl = successUrl
            
            self.shippingAddress = shippingAddress
            
            self.gUserId = gUserId
            
            self.currency = currency
            
            self.merchantLocale = merchantLocale
            
            self.locale = locale
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.gid = gid
            
            self.cancelUrl = cancelUrl
            
            self.amountRefunded = amountRefunded
            
            self.captured = captured
            
            self.created = created
            
            self.status = status
            
            self.kind = kind
            
            self.aggregatorCustomerId = aggregatorCustomerId
            
            self.paymentMethods = paymentMethods
            
            self.billingAddress = billingAddress
            
            self.amountCaptured = amountCaptured
            
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
                
            
            
            
                cancelUrl = try container.decode(String.self, forKey: .cancelUrl)
                
            
            
            
                do {
                    amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)
                
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
                    created = try container.decode(String.self, forKey: .created)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                
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
                
            
            
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(successUrl, forKey: .successUrl)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(gUserId, forKey: .gUserId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)
            
            
            
            
            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)
            
            
            
            
            try? container.encodeIfPresent(captured, forKey: .captured)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)
            
            
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
        
        public var gUserId: String
        
        public var currency: String
        
        public var merchantLocale: String?
        
        public var locale: String?
        
        public var aggregatorOrderId: String
        
        public var gid: String
        
        public var cancelUrl: String
        
        public var amountRefunded: Int?
        
        public var captured: Bool?
        
        public var created: String?
        
        public var status: String
        
        public var kind: String?
        
        public var aggregatorCustomerId: String?
        
        public var paymentMethods: [[String: Any]]
        
        public var billingAddress: AddressDetail?
        
        public var amountCaptured: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentId = "payment_id"
            
            case mode = "mode"
            
            case amount = "amount"
            
            case successUrl = "success_url"
            
            case shippingAddress = "shipping_address"
            
            case gUserId = "g_user_id"
            
            case currency = "currency"
            
            case merchantLocale = "merchant_locale"
            
            case locale = "locale"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case gid = "gid"
            
            case cancelUrl = "cancel_url"
            
            case amountRefunded = "amount_refunded"
            
            case captured = "captured"
            
            case created = "created"
            
            case status = "status"
            
            case kind = "kind"
            
            case aggregatorCustomerId = "aggregator_customer_id"
            
            case paymentMethods = "payment_methods"
            
            case billingAddress = "billing_address"
            
            case amountCaptured = "amount_captured"
            
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, billingAddress: AddressDetail? = nil, cancelUrl: String, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, mode: String, paymentId: String, paymentMethods: [[String: Any]], shippingAddress: AddressDetail? = nil, status: String, successUrl: String) {
            
            self.paymentId = paymentId
            
            self.mode = mode
            
            self.amount = amount
            
            self.successUrl = successUrl
            
            self.shippingAddress = shippingAddress
            
            self.gUserId = gUserId
            
            self.currency = currency
            
            self.merchantLocale = merchantLocale
            
            self.locale = locale
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.gid = gid
            
            self.cancelUrl = cancelUrl
            
            self.amountRefunded = amountRefunded
            
            self.captured = captured
            
            self.created = created
            
            self.status = status
            
            self.kind = kind
            
            self.aggregatorCustomerId = aggregatorCustomerId
            
            self.paymentMethods = paymentMethods
            
            self.billingAddress = billingAddress
            
            self.amountCaptured = amountCaptured
            
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
                
            
            
            
                cancelUrl = try container.decode(String.self, forKey: .cancelUrl)
                
            
            
            
                do {
                    amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)
                
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
                    created = try container.decode(String.self, forKey: .created)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    kind = try container.decode(String.self, forKey: .kind)
                
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
                
            
            
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(successUrl, forKey: .successUrl)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(gUserId, forKey: .gUserId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)
            
            
            
            
            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)
            
            
            
            
            try? container.encodeIfPresent(captured, forKey: .captured)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)
            
            
        }
        
    }
}


