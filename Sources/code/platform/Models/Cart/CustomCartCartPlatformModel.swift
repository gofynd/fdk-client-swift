

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CustomCart
        Used By: Cart
    */

    class CustomCart: Codable {
        
        
        public var id: String?
        
        public var cartName: String?
        
        public var cartType: String?
        
        public var isUniversal: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case cartName = "cart_name"
            
            case cartType = "cart_type"
            
            case isUniversal = "is_universal"
            
        }

        public init(cartName: String? = nil, cartType: String? = nil, id: String? = nil, isUniversal: Bool? = nil) {
            
            self.id = id
            
            self.cartName = cartName
            
            self.cartType = cartType
            
            self.isUniversal = isUniversal
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartName = try container.decode(String.self, forKey: .cartName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartType = try container.decode(String.self, forKey: .cartType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isUniversal = try container.decode(Bool.self, forKey: .isUniversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(cartName, forKey: .cartName)
            
            
            
            
            try? container.encodeIfPresent(cartType, forKey: .cartType)
            
            
            
            
            try? container.encodeIfPresent(isUniversal, forKey: .isUniversal)
            
            
        }
        
    }
}


