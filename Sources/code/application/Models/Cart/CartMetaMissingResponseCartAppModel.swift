

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartMetaMissingResponse
        Used By: Cart
    */
    class CartMetaMissingResponse: Codable {
        
        public var errors: CartMetaFieldsValidation?
        
        public var message: String?
        
        public var success: Bool?
        
        public var meta: CartMetaFieldsValidation?
        

        public enum CodingKeys: String, CodingKey {
            
            case errors = "errors"
            
            case message = "message"
            
            case success = "success"
            
            case meta = "meta"
            
        }

        public init(errors: CartMetaFieldsValidation? = nil, message: String? = nil, meta: CartMetaFieldsValidation? = nil, success: Bool? = nil) {
            
            self.errors = errors
            
            self.message = message
            
            self.success = success
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                errors = try container.decode(CartMetaFieldsValidation.self, forKey: .errors)
            
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
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode(CartMetaFieldsValidation.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(errors, forKey: .errors)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
