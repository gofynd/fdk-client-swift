

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartMetaMissingResult
        Used By: Cart
    */
    class CartMetaMissingResult: Codable {
        
        public var errors: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
        }

        public init(errors: [String]? = nil) {
            
            self.errors = errors
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                errors = try container.decode([String].self, forKey: .errors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
        }
        
    }
}
