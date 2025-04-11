

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateCustomerDetails
        Used By: Payment
    */
    class ValidateCustomerDetails: Codable {
        
        public var data: ValidateCustomerInfo?
        
        public var success: Bool
        
        public var message: String
        
        public var error: ValidateCustomerInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
            case message = "message"
            
            case error = "error"
            
        }

        public init(data: ValidateCustomerInfo? = nil, error: ValidateCustomerInfo? = nil, message: String, success: Bool) {
            
            self.data = data
            
            self.success = success
            
            self.message = message
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                data = try container.decode(ValidateCustomerInfo.self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            do {
                error = try container.decode(ValidateCustomerInfo.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}
