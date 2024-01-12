

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOrderResponse
        Used By: Payment
    */

    class PaymentOrderResponse: Codable {
        
        
        public var message: String
        
        public var success: Bool
        
        public var paymentConfirmUrl: String?
        
        public var callbackUrl: String?
        
        public var statusCode: Int
        
        public var orderId: String?
        
        public var data: PaymentOrderData?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case paymentConfirmUrl = "payment_confirm_url"
            
            case callbackUrl = "callback_url"
            
            case statusCode = "status_code"
            
            case orderId = "order_id"
            
            case data = "data"
            
        }

        public init(callbackUrl: String? = nil, data: PaymentOrderData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int, success: Bool) {
            
            self.message = message
            
            self.success = success
            
            self.paymentConfirmUrl = paymentConfirmUrl
            
            self.callbackUrl = callbackUrl
            
            self.statusCode = statusCode
            
            self.orderId = orderId
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
                
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
                
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(PaymentOrderData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)
            
            
            
            
            try? container.encode(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encode(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOrderResponse
        Used By: Payment
    */

    class PaymentOrderResponse: Codable {
        
        
        public var message: String
        
        public var success: Bool
        
        public var paymentConfirmUrl: String?
        
        public var callbackUrl: String?
        
        public var statusCode: Int
        
        public var orderId: String?
        
        public var data: PaymentOrderData?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case success = "success"
            
            case paymentConfirmUrl = "payment_confirm_url"
            
            case callbackUrl = "callback_url"
            
            case statusCode = "status_code"
            
            case orderId = "order_id"
            
            case data = "data"
            
        }

        public init(callbackUrl: String? = nil, data: PaymentOrderData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int, success: Bool) {
            
            self.message = message
            
            self.success = success
            
            self.paymentConfirmUrl = paymentConfirmUrl
            
            self.callbackUrl = callbackUrl
            
            self.statusCode = statusCode
            
            self.orderId = orderId
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
                
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
                
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(PaymentOrderData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encode(paymentConfirmUrl, forKey: .paymentConfirmUrl)
            
            
            
            
            try? container.encode(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encode(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}


