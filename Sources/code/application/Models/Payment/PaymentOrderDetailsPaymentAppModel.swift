

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentOrderDetails
        Used By: Payment
    */
    class PaymentOrderDetails: Codable {
        
        public var paymentConfirmUrl: String?
        
        public var callbackUrl: String?
        
        public var orderId: String?
        
        public var success: Bool?
        
        public var statusCode: Int?
        
        public var data: PaymentOrderData?
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentConfirmUrl = "payment_confirm_url"
            
            case callbackUrl = "callback_url"
            
            case orderId = "order_id"
            
            case success = "success"
            
            case statusCode = "status_code"
            
            case data = "data"
            
            case message = "message"
            
        }

        public init(callbackUrl: String? = nil, data: PaymentOrderData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int? = nil, success: Bool? = nil) {
            
            self.paymentConfirmUrl = paymentConfirmUrl
            
            self.callbackUrl = callbackUrl
            
            self.orderId = orderId
            
            self.success = success
            
            self.statusCode = statusCode
            
            self.data = data
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
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
                statusCode = try container.decode(Int.self, forKey: .statusCode)
            
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
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
