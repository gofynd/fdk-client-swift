

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionsValueTypes
        Used By: Cart
    */

    class CouponOptionsValueTypes: Codable {
        
        
        public var absolute: String?
        
        public var percentage: String?
        
        public var quantity: String?
        
        public var flatPrice: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case absolute = "absolute"
            
            case percentage = "percentage"
            
            case quantity = "quantity"
            
            case flatPrice = "flat_price"
            
        }

        public init(absolute: String? = nil, flatPrice: String? = nil, percentage: String? = nil, quantity: String? = nil) {
            
            self.absolute = absolute
            
            self.percentage = percentage
            
            self.quantity = quantity
            
            self.flatPrice = flatPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    absolute = try container.decode(String.self, forKey: .absolute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    percentage = try container.decode(String.self, forKey: .percentage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(String.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    flatPrice = try container.decode(String.self, forKey: .flatPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(absolute, forKey: .absolute)
            
            
            
            
            try? container.encodeIfPresent(percentage, forKey: .percentage)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(flatPrice, forKey: .flatPrice)
            
            
        }
        
    }
}


