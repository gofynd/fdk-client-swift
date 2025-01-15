

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreatePaymentLinkDetails
        Used By: Payment
    */
    class CreatePaymentLinkDetails: Codable {
        
        public var statusCode: Int
        
        public var success: Bool
        
        public var pollingTimeout: Int?
        
        public var paymentLinkUrl: String?
        
        public var message: String
        
        public var paymentLinkId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
            case pollingTimeout = "polling_timeout"
            
            case paymentLinkUrl = "payment_link_url"
            
            case message = "message"
            
            case paymentLinkId = "payment_link_id"
            
        }

        public init(message: String, paymentLinkId: String? = nil, paymentLinkUrl: String? = nil, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
            self.pollingTimeout = pollingTimeout
            
            self.paymentLinkUrl = paymentLinkUrl
            
            self.message = message
            
            self.paymentLinkId = paymentLinkId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            statusCode = try container.decode(Int.self, forKey: .statusCode)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentLinkUrl = try container.decode(String.self, forKey: .paymentLinkUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            do {
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
            
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
            
            
            
            try? container.encodeIfPresent(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            try? container.encodeIfPresent(paymentLinkUrl, forKey: .paymentLinkUrl)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
            
            
        }
        
    }
}
