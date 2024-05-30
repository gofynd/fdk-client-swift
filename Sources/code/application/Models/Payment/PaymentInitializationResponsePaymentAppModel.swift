

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentInitializationResponse
        Used By: Payment
    */
    class PaymentInitializationResponse: Codable {
        
        public var status: String?
        
        public var razorpayPaymentId: String?
        
        public var aggregatorOrderId: String?
        
        public var method: String
        
        public var success: Bool
        
        public var upiPollUrl: String?
        
        public var virtualId: String?
        
        public var deviceId: String?
        
        public var pollingUrl: String
        
        public var aggregator: String
        
        public var merchantOrderId: String
        
        public var customerId: String?
        
        public var vpa: String?
        
        public var currency: String?
        
        public var timeout: Int?
        
        public var amount: Int?
        
        public var bqrImage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case aggregatorOrderId = "aggregator_order_id"
            
            case method = "method"
            
            case success = "success"
            
            case upiPollUrl = "upi_poll_url"
            
            case virtualId = "virtual_id"
            
            case deviceId = "device_id"
            
            case pollingUrl = "polling_url"
            
            case aggregator = "aggregator"
            
            case merchantOrderId = "merchant_order_id"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case currency = "currency"
            
            case timeout = "timeout"
            
            case amount = "amount"
            
            case bqrImage = "bqr_image"
            
        }

        public init(aggregator: String, aggregatorOrderId: String? = nil, amount: Int? = nil, bqrImage: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, merchantOrderId: String, method: String, pollingUrl: String, razorpayPaymentId: String? = nil, status: String? = nil, success: Bool, timeout: Int? = nil, upiPollUrl: String? = nil, virtualId: String? = nil, vpa: String? = nil) {
            
            self.status = status
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.aggregatorOrderId = aggregatorOrderId
            
            self.method = method
            
            self.success = success
            
            self.upiPollUrl = upiPollUrl
            
            self.virtualId = virtualId
            
            self.deviceId = deviceId
            
            self.pollingUrl = pollingUrl
            
            self.aggregator = aggregator
            
            self.merchantOrderId = merchantOrderId
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.currency = currency
            
            self.timeout = timeout
            
            self.amount = amount
            
            self.bqrImage = bqrImage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
            
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
            
            
            
            method = try container.decode(String.self, forKey: .method)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                upiPollUrl = try container.decode(String.self, forKey: .upiPollUrl)
            
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
                deviceId = try container.decode(String.self, forKey: .deviceId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            pollingUrl = try container.decode(String.self, forKey: .pollingUrl)
            
            
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            
            
            
            do {
                customerId = try container.decode(String.self, forKey: .customerId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                vpa = try container.decode(String.self, forKey: .vpa)
            
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
                timeout = try container.decode(Int.self, forKey: .timeout)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amount = try container.decode(Int.self, forKey: .amount)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(upiPollUrl, forKey: .upiPollUrl)
            
            
            
            try? container.encodeIfPresent(virtualId, forKey: .virtualId)
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            try? container.encodeIfPresent(pollingUrl, forKey: .pollingUrl)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(bqrImage, forKey: .bqrImage)
            
            
        }
        
    }
}
