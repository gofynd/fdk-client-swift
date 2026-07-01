

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: ErrorResponseSchema
        Used By: CompanyProfile
    */

    class ErrorResponseSchema: Codable {
        
        
        public var message: String?
        
        public var error: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case error = "error"
            
        }

        public init(error: [String: Any]? = nil, message: String? = nil) {
            
            self.message = message
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode([String: Any].self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}




