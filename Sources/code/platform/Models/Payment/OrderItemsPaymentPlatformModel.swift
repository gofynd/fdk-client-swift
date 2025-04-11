

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OrderItems
        Used By: Payment
    */

    class OrderItems: Codable {
        
        
        public var sku: String?
        
        public var price: Int?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case sku = "sku"
            
            case price = "price"
            
            case quantity = "quantity"
            
        }

        public init(price: Int? = nil, quantity: Int? = nil, sku: String? = nil) {
            
            self.sku = sku
            
            self.price = price
            
            self.quantity = quantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sku = try container.decode(String.self, forKey: .sku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Int.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OrderItems
        Used By: Payment
    */

    class OrderItems: Codable {
        
        
        public var sku: String?
        
        public var price: Int?
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case sku = "sku"
            
            case price = "price"
            
            case quantity = "quantity"
            
        }

        public init(price: Int? = nil, quantity: Int? = nil, sku: String? = nil) {
            
            self.sku = sku
            
            self.price = price
            
            self.quantity = quantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sku = try container.decode(String.self, forKey: .sku)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Int.self, forKey: .price)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sku, forKey: .sku)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}


