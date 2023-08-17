

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentInitializationResponse
        Used By: Payment
    */

    class PaymentInitializationResponse: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var deviceId: String?
        
        public var upiPollUrl: String?
        
        public var customerId: String?
        
        public var pollingUrl: String
        
        public var vpa: String?
        
        public var aggregator: String
        
        public var currency: String?
        
        public var merchantOrderId: String
        
        public var amount: Int?
        
        public var timeout: Int?
        
        public var virtualId: String?
        
        public var bqrImage: String?
        
        public var aggregatorOrderId: String?
        
        public var success: Bool
        
        public var status: String?
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case deviceId = "device_id"
            
            case upiPollUrl = "upi_poll_url"
            
            case customerId = "customer_id"
            
            case pollingUrl = "polling_url"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case currency = "currency"
            
            case merchantOrderId = "merchant_order_id"
            
            case amount = "amount"
            
            case timeout = "timeout"
            
            case virtualId = "virtual_id"
            
            case bqrImage = "bqr_image"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case success = "success"
            
            case status = "status"
            
            case method = "method"
            
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.deviceId = deviceId
            
            self.upiPollUrl = upiPollUrl
            
            self.customerId = customerId
            
            self.pollingUrl = pollingUrl
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.currency = currency
            
            self.merchantOrderId = merchantOrderId
            
            self.amount = amount
            
            self.timeout = timeout
            
            self.virtualId = virtualId
            
            self.bqrImage = bqrImage
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.success = success
            
            self.status = status
            
            self.method = method
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
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
                
            
            
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
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
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encode(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encode(upiPollUrl, forKey: .upiPollUrl)
            
            
            
            
            try? container.encode(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encode(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encode(virtualId, forKey: .virtualId)
            
            
            
            
            try? container.encode(bqrImage, forKey: .bqrImage)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentInitializationResponse
        Used By: Payment
    */

    class PaymentInitializationResponse: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var deviceId: String?
        
        public var upiPollUrl: String?
        
        public var customerId: String?
        
        public var pollingUrl: String
        
        public var vpa: String?
        
        public var aggregator: String
        
        public var currency: String?
        
        public var merchantOrderId: String
        
        public var amount: Int?
        
        public var timeout: Int?
        
        public var virtualId: String?
        
        public var bqrImage: String?
        
        public var aggregatorOrderId: String?
        
        public var success: Bool
        
        public var status: String?
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case deviceId = "device_id"
            
            case upiPollUrl = "upi_poll_url"
            
            case customerId = "customer_id"
            
            case pollingUrl = "polling_url"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case currency = "currency"
            
            case merchantOrderId = "merchant_order_id"
            
            case amount = "amount"
            
            case timeout = "timeout"
            
            case virtualId = "virtual_id"
            
            case bqrImage = "bqr_image"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case success = "success"
            
            case status = "status"
            
            case method = "method"
            
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.deviceId = deviceId
            
            self.upiPollUrl = upiPollUrl
            
            self.customerId = customerId
            
            self.pollingUrl = pollingUrl
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.currency = currency
            
            self.merchantOrderId = merchantOrderId
            
            self.amount = amount
            
            self.timeout = timeout
            
            self.virtualId = virtualId
            
            self.bqrImage = bqrImage
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.success = success
            
            self.status = status
            
            self.method = method
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
                
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
                
            
            
                pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    virtualId = try container.decode(String.self, forKey: .virtualId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bqrImage = try container.decode(String.self, forKey: .bqrImage)
                
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
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encode(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encode(upiPollUrl, forKey: .upiPollUrl)
            
            
            
            
            try? container.encode(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
            
            
            
            
            try? container.encode(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encode(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
            
            
            try? container.encode(timeout, forKey: .timeout)
            
            
            
            
            try? container.encode(virtualId, forKey: .virtualId)
            
            
            
            
            try? container.encode(bqrImage, forKey: .bqrImage)
            
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
        }
        
    }
}


