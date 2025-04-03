

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OperationErrorResponse
        Used By: Cart
    */

    class OperationErrorResponse: Codable {
        
        
        public var success: Bool?
        
        public var message: String?
        
        public var error: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case error = "error"
            
        }

        public init(error: String? = nil, message: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.message = message
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


