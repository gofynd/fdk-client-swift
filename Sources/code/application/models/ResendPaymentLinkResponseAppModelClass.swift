

import Foundation
public extension ApplicationClient {
    /*
        Model: ResendPaymentLinkResponse
        Used By: Payment
    */
    class ResendPaymentLinkResponse: Codable {
        
        public var pollingTimeout: Int?
        
        public var message: String
        
        public var statusCode: Int
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case pollingTimeout = "polling_timeout"
            
            case message = "message"
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(message: String, pollingTimeout: Int? = nil, statusCode: Int, success: Bool) {
            
            self.pollingTimeout = pollingTimeout
            
            self.message = message
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                pollingTimeout = try container.decode(Int.self, forKey: .pollingTimeout)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            statusCode = try container.decode(Int.self, forKey: .statusCode)
            
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(pollingTimeout, forKey: .pollingTimeout)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
