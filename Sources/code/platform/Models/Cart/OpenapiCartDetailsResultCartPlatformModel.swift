

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OpenapiCartDetailsResult
        Used By: Cart
    */

    class OpenapiCartDetailsResult: Codable {
        
        
        public var isValid: Bool?
        
        public var message: String?
        
        public var breakupValues: CartBreakup?
        
        public var items: [CartProductInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isValid = "is_valid"
            
            case message = "message"
            
            case breakupValues = "breakup_values"
            
            case items = "items"
            
        }

        public init(breakupValues: CartBreakup? = nil, isValid: Bool? = nil, items: [CartProductInfo]? = nil, message: String? = nil) {
            
            self.isValid = isValid
            
            self.message = message
            
            self.breakupValues = breakupValues
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
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
                    breakupValues = try container.decode(CartBreakup.self, forKey: .breakupValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CartProductInfo].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


