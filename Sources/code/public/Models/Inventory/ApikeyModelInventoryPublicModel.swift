

import Foundation
public extension PublicClient.Inventory {
    /*
        Model: ApikeyModel
        Used By: Inventory
    */

    class ApikeyModel: Codable {
        
        
        public var sessionId: String?
        
        public var errorMessage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sessionId = "session_id"
            
            case errorMessage = "error_message"
            
        }

        public init(errorMessage: String? = nil, sessionId: String? = nil) {
            
            self.sessionId = sessionId
            
            self.errorMessage = errorMessage
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sessionId = try container.decode(String.self, forKey: .sessionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    errorMessage = try container.decode(String.self, forKey: .errorMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sessionId, forKey: .sessionId)
            
            
            
            
            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
            
            
        }
        
    }
}
