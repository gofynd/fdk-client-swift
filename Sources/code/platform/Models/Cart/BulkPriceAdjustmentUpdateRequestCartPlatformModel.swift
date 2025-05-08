

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: BulkPriceAdjustmentUpdateRequest
        Used By: Cart
    */

    class BulkPriceAdjustmentUpdateRequest: Codable {
        
        
        public var cartId: String?
        
        public var isAuthenticated: Bool?
        
        public var items: [BulkPriceAdjustmentUpdate]?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartId = "cart_id"
            
            case isAuthenticated = "is_authenticated"
            
            case items = "items"
            
        }

        public init(cartId: String? = nil, isAuthenticated: Bool? = nil, items: [BulkPriceAdjustmentUpdate]? = nil) {
            
            self.cartId = cartId
            
            self.isAuthenticated = isAuthenticated
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([BulkPriceAdjustmentUpdate].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


