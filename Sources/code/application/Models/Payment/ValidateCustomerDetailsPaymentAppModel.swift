

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateCustomerDetails
        Used By: Payment
    */
    class ValidateCustomerDetails: Codable {
        
        public var data: [String: Any]?
        
        public var success: Bool
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(data: [String: Any]? = nil, message: String, success: Bool) {
            
            self.data = data
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                data = try container.decode([String: Any].self, forKey: .data)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
