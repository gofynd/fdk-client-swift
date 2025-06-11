

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: SelectAddressResponseError
        Used By: Cart
    */
    class SelectAddressResponseError: Codable {
        
        public var message: String?
        
        public var cartId: Double?
        
        public var id: String?
        
        public var isValid: Bool?
        
        public var address: AllAddressForSelectAddress?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case cartId = "cart_id"
            
            case id = "id"
            
            case isValid = "is_valid"
            
            case address = "address"
            
        }

        public init(address: AllAddressForSelectAddress? = nil, cartId: Double? = nil, id: String? = nil, isValid: Bool? = nil, message: String? = nil) {
            
            self.message = message
            
            self.cartId = cartId
            
            self.id = id
            
            self.isValid = isValid
            
            self.address = address
            
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
                cartId = try container.decode(Double.self, forKey: .cartId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
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
            
            
            
            do {
                address = try container.decode(AllAddressForSelectAddress.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
}
