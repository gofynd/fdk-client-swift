

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentDetails
        Used By: Payment
    */

    class PaymentDetails: Codable {
        
        
        public var paymentMethods: [[String: Any]]
        
        public var gid: String
        
        public var amountRefunded: Int?
        
        public var currency: String
        
        public var mode: String
        
        public var merchantLocale: String?
        
        public var meta: [String: Any]?
        
        public var kind: String?
        
        public var successUrl: String?
        
        public var status: String
        
        public var captured: Bool?
        
        public var paymentId: String?
        
        public var gUserId: String
        
        public var locale: String?
        
        public var cancelUrl: String?
        
        public var created: String?
        
        public var amountCaptured: Int
        
        public var amount: Int
        
        public var aggregatorCustomerId: String?
        
        public var aggregatorOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMethods = "payment_methods"
            
            case gid = "gid"
            
            case amountRefunded = "amount_refunded"
            
            case currency = "currency"
            
            case mode = "mode"
            
            case merchantLocale = "merchant_locale"
            
            case meta = "meta"
            
            case kind = "kind"
            
            case successUrl = "success_url"
            
            case status = "status"
            
            case captured = "captured"
            
            case paymentId = "payment_id"
            
            case gUserId = "g_user_id"
            
            case locale = "locale"
            
            case cancelUrl = "cancel_url"
            
            case created = "created"
            
            case amountCaptured = "amount_captured"
            
            case amount = "amount"
            
            case aggregatorCustomerId = "aggregator_customer_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String? = nil, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, cancelUrl: String? = nil, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, meta: [String: Any]? = nil, mode: String, paymentId: String? = nil, paymentMethods: [[String: Any]], status: String, successUrl: String? = nil) {
            
            self.paymentMethods = paymentMethods
            
            self.gid = gid
            
            self.amountRefunded = amountRefunded
            
            self.currency = currency
            
            self.mode = mode
            
            self.merchantLocale = merchantLocale
            
            self.meta = meta
            
            self.kind = kind
            
            self.successUrl = successUrl
            
            self.status = status
            
            self.captured = captured
            
            self.paymentId = paymentId
            
            self.gUserId = gUserId
            
            self.locale = locale
            
            self.cancelUrl = cancelUrl
            
            self.created = created
            
            self.amountCaptured = amountCaptured
            
            self.amount = amount
            
            self.aggregatorCustomerId = aggregatorCustomerId
            
            self.aggregatorOrderId = aggregatorOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                do {
                    amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    merchantLocale = try container.decode(String.self, forKey: .merchantLocale)
                
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
                    kind = try container.decode(String.self, forKey: .kind)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successUrl = try container.decode(String.self, forKey: .successUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    captured = try container.decode(Bool.self, forKey: .captured)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                gUserId = try container.decode(String.self, forKey: .gUserId)
                
            
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelUrl = try container.decode(String.self, forKey: .cancelUrl)
                
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
                
            
            
                amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                do {
                    aggregatorCustomerId = try container.decode(String.self, forKey: .aggregatorCustomerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(successUrl, forKey: .successUrl)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(captured, forKey: .captured)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(gUserId, forKey: .gUserId)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentDetails
        Used By: Payment
    */

    class PaymentDetails: Codable {
        
        
        public var paymentMethods: [[String: Any]]
        
        public var gid: String
        
        public var amountRefunded: Int?
        
        public var currency: String
        
        public var mode: String
        
        public var merchantLocale: String?
        
        public var meta: [String: Any]?
        
        public var kind: String?
        
        public var successUrl: String?
        
        public var status: String
        
        public var captured: Bool?
        
        public var paymentId: String?
        
        public var gUserId: String
        
        public var locale: String?
        
        public var cancelUrl: String?
        
        public var created: String?
        
        public var amountCaptured: Int
        
        public var amount: Int
        
        public var aggregatorCustomerId: String?
        
        public var aggregatorOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMethods = "payment_methods"
            
            case gid = "gid"
            
            case amountRefunded = "amount_refunded"
            
            case currency = "currency"
            
            case mode = "mode"
            
            case merchantLocale = "merchant_locale"
            
            case meta = "meta"
            
            case kind = "kind"
            
            case successUrl = "success_url"
            
            case status = "status"
            
            case captured = "captured"
            
            case paymentId = "payment_id"
            
            case gUserId = "g_user_id"
            
            case locale = "locale"
            
            case cancelUrl = "cancel_url"
            
            case created = "created"
            
            case amountCaptured = "amount_captured"
            
            case amount = "amount"
            
            case aggregatorCustomerId = "aggregator_customer_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String? = nil, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, cancelUrl: String? = nil, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, meta: [String: Any]? = nil, mode: String, paymentId: String? = nil, paymentMethods: [[String: Any]], status: String, successUrl: String? = nil) {
            
            self.paymentMethods = paymentMethods
            
            self.gid = gid
            
            self.amountRefunded = amountRefunded
            
            self.currency = currency
            
            self.mode = mode
            
            self.merchantLocale = merchantLocale
            
            self.meta = meta
            
            self.kind = kind
            
            self.successUrl = successUrl
            
            self.status = status
            
            self.captured = captured
            
            self.paymentId = paymentId
            
            self.gUserId = gUserId
            
            self.locale = locale
            
            self.cancelUrl = cancelUrl
            
            self.created = created
            
            self.amountCaptured = amountCaptured
            
            self.amount = amount
            
            self.aggregatorCustomerId = aggregatorCustomerId
            
            self.aggregatorOrderId = aggregatorOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)
                
            
            
            
                gid = try container.decode(String.self, forKey: .gid)
                
            
            
            
                do {
                    amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                mode = try container.decode(String.self, forKey: .mode)
                
            
            
            
                do {
                    merchantLocale = try container.decode(String.self, forKey: .merchantLocale)
                
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
                    kind = try container.decode(String.self, forKey: .kind)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successUrl = try container.decode(String.self, forKey: .successUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    captured = try container.decode(Bool.self, forKey: .captured)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                gUserId = try container.decode(String.self, forKey: .gUserId)
                
            
            
            
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cancelUrl = try container.decode(String.self, forKey: .cancelUrl)
                
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
                
            
            
                amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                do {
                    aggregatorCustomerId = try container.decode(String.self, forKey: .aggregatorCustomerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(gid, forKey: .gid)
            
            
            
            
            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(kind, forKey: .kind)
            
            
            
            
            try? container.encodeIfPresent(successUrl, forKey: .successUrl)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(captured, forKey: .captured)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(gUserId, forKey: .gUserId)
            
            
            
            
            try? container.encodeIfPresent(locale, forKey: .locale)
            
            
            
            
            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)
            
            
            
            
            try? container.encodeIfPresent(created, forKey: .created)
            
            
            
            
            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
        }
        
    }
}


