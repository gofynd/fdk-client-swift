

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentConfirmationDetails
        Used By: Payment
    */
    class PaymentConfirmationDetails: Codable {
        
        public var orderId: String?
        
        public var message: String
        
        public var success: Bool
        
        public var errors: String?
        
        public var returnUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case message = "message"
            
            case success = "success"
            
            case errors = "errors"
            
            case returnUrl = "return_url"
            
        }

        public init(errors: String? = nil, message: String, orderId: String? = nil, returnUrl: String? = nil, success: Bool) {
            
            self.orderId = orderId
            
            self.message = message
            
            self.success = success
            
            self.errors = errors
            
            self.returnUrl = returnUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                errors = try container.decode(String.self, forKey: .errors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnUrl = try container.decode(String.self, forKey: .returnUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
            
            
        }
        
    }
}
