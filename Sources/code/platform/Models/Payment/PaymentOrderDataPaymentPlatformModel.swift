

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOrderData
        Used By: Payment
    */

    class PaymentOrderData: Codable {
        
        
        public var contact: String?
        
        public var aggregator: String?
        
        public var amount: Double?
        
        public var customerId: String?
        
        public var currency: String?
        
        public var email: String?
        
        public var callbackUrl: String?
        
        public var orderId: String?
        
        public var method: String?
        
        public var merchantOrderId: String?
        
        public var url: String?
        
        public var encdata: String?
        
        public var checksum: String?
        
        public var mcode: String?
        
        public var success: Bool?
        
        public var status: String?
        
        public var id: String?
        
        public var mobile: String?
        
        public var user: String?
        
        public var merchantTransactionId: String?
        
        public var paymentModeIdentifier: String?
        
        public var bank: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case aggregator = "aggregator"
            
            case amount = "amount"
            
            case customerId = "customer_id"
            
            case currency = "currency"
            
            case email = "email"
            
            case callbackUrl = "callback_url"
            
            case orderId = "order_id"
            
            case method = "method"
            
            case merchantOrderId = "merchant_order_id"
            
            case url = "url"
            
            case encdata = "encdata"
            
            case checksum = "checksum"
            
            case mcode = "mcode"
            
            case success = "success"
            
            case status = "status"
            
            case id = "id"
            
            case mobile = "mobile"
            
            case user = "user"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case paymentModeIdentifier = "payment_mode_identifier"
            
            case bank = "bank"
            
        }

        public init(aggregator: String? = nil, amount: Double? = nil, bank: String? = nil, callbackUrl: String? = nil, checksum: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, email: String? = nil, encdata: String? = nil, id: String? = nil, mcode: String? = nil, merchantOrderId: String? = nil, merchantTransactionId: String? = nil, method: String? = nil, mobile: String? = nil, orderId: String? = nil, paymentModeIdentifier: String? = nil, status: String? = nil, success: Bool? = nil, url: String? = nil, user: String? = nil) {
            
            self.contact = contact
            
            self.aggregator = aggregator
            
            self.amount = amount
            
            self.customerId = customerId
            
            self.currency = currency
            
            self.email = email
            
            self.callbackUrl = callbackUrl
            
            self.orderId = orderId
            
            self.method = method
            
            self.merchantOrderId = merchantOrderId
            
            self.url = url
            
            self.encdata = encdata
            
            self.checksum = checksum
            
            self.mcode = mcode
            
            self.success = success
            
            self.status = status
            
            self.id = id
            
            self.mobile = mobile
            
            self.user = user
            
            self.merchantTransactionId = merchantTransactionId
            
            self.paymentModeIdentifier = paymentModeIdentifier
            
            self.bank = bank
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
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
                    method = try container.decode(String.self, forKey: .method)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    encdata = try container.decode(String.self, forKey: .encdata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checksum = try container.decode(String.self, forKey: .checksum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mcode = try container.decode(String.self, forKey: .mcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(String.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bank = try container.decode(String.self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(encdata, forKey: .encdata)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
            
            
            try? container.encodeIfPresent(mcode, forKey: .mcode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
            
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOrderData
        Used By: Payment
    */

    class PaymentOrderData: Codable {
        
        
        public var contact: String?
        
        public var aggregator: String?
        
        public var amount: Double?
        
        public var customerId: String?
        
        public var currency: String?
        
        public var email: String?
        
        public var callbackUrl: String?
        
        public var orderId: String?
        
        public var method: String?
        
        public var merchantOrderId: String?
        
        public var url: String?
        
        public var encdata: String?
        
        public var checksum: String?
        
        public var mcode: String?
        
        public var success: Bool?
        
        public var status: String?
        
        public var id: String?
        
        public var mobile: String?
        
        public var user: String?
        
        public var merchantTransactionId: String?
        
        public var paymentModeIdentifier: String?
        
        public var bank: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case aggregator = "aggregator"
            
            case amount = "amount"
            
            case customerId = "customer_id"
            
            case currency = "currency"
            
            case email = "email"
            
            case callbackUrl = "callback_url"
            
            case orderId = "order_id"
            
            case method = "method"
            
            case merchantOrderId = "merchant_order_id"
            
            case url = "url"
            
            case encdata = "encdata"
            
            case checksum = "checksum"
            
            case mcode = "mcode"
            
            case success = "success"
            
            case status = "status"
            
            case id = "id"
            
            case mobile = "mobile"
            
            case user = "user"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case paymentModeIdentifier = "payment_mode_identifier"
            
            case bank = "bank"
            
        }

        public init(aggregator: String? = nil, amount: Double? = nil, bank: String? = nil, callbackUrl: String? = nil, checksum: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, email: String? = nil, encdata: String? = nil, id: String? = nil, mcode: String? = nil, merchantOrderId: String? = nil, merchantTransactionId: String? = nil, method: String? = nil, mobile: String? = nil, orderId: String? = nil, paymentModeIdentifier: String? = nil, status: String? = nil, success: Bool? = nil, url: String? = nil, user: String? = nil) {
            
            self.contact = contact
            
            self.aggregator = aggregator
            
            self.amount = amount
            
            self.customerId = customerId
            
            self.currency = currency
            
            self.email = email
            
            self.callbackUrl = callbackUrl
            
            self.orderId = orderId
            
            self.method = method
            
            self.merchantOrderId = merchantOrderId
            
            self.url = url
            
            self.encdata = encdata
            
            self.checksum = checksum
            
            self.mcode = mcode
            
            self.success = success
            
            self.status = status
            
            self.id = id
            
            self.mobile = mobile
            
            self.user = user
            
            self.merchantTransactionId = merchantTransactionId
            
            self.paymentModeIdentifier = paymentModeIdentifier
            
            self.bank = bank
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerId = try container.decode(String.self, forKey: .customerId)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
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
                    method = try container.decode(String.self, forKey: .method)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    encdata = try container.decode(String.self, forKey: .encdata)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checksum = try container.decode(String.self, forKey: .checksum)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mcode = try container.decode(String.self, forKey: .mcode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(String.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bank = try container.decode(String.self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(encdata, forKey: .encdata)
            
            
            
            
            try? container.encodeIfPresent(checksum, forKey: .checksum)
            
            
            
            
            try? container.encodeIfPresent(mcode, forKey: .mcode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            
            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
            
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
        }
        
    }
}


