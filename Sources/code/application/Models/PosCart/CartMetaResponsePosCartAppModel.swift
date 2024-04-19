

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: CartMetaResponse
        Used By: PosCart
    */
    class CartMetaResponse: Codable {
        
        public var message: String?
        
        public var isValid: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case isValid = "is_valid"
            
        }

        public init(isValid: Bool? = nil, message: String? = nil) {
            
            self.message = message
            
            self.isValid = isValid
            
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
                isValid = try container.decode(Bool.self, forKey: .isValid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
        }
        
    }
}
