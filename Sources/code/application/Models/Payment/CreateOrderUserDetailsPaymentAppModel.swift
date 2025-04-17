

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreateOrderUserDetails
        Used By: Payment
    */
    class CreateOrderUserDetails: Codable {
        
        public var statusCode: Int?
        
        public var success: Bool
        
        public var data: CreateOrderUserData?
        
        public var message: String
        
        public var orderId: String?
        
        public var callbackUrl: String?
        
        public var paymentConfirmUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
            case data = "data"
            
            case message = "message"
            
            case orderId = "order_id"
            
            case callbackUrl = "callback_url"
            
            case paymentConfirmUrl = "payment_confirm_url"
            
        }

        public init(callbackUrl: String? = nil, data: CreateOrderUserData? = nil, message: String, orderId: String? = nil, paymentConfirmUrl: String? = nil, statusCode: Int? = nil, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
            self.data = data
            
            self.message = message
            
            self.orderId = orderId
            
            self.callbackUrl = callbackUrl
            
            self.paymentConfirmUrl = paymentConfirmUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                statusCode = try container.decode(Int.self, forKey: .statusCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                data = try container.decode(CreateOrderUserData.self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
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
                paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
            
            
        }
        
    }
}
