

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CartDetailsSerializerData
        Used By: Payment
    */

    class CartDetailsSerializerData: Codable {
        
        
        public var items: [String: Any]
        
        public var articles: [[String: Any]]
        
        public var cartValue: Double
        
        public var cartCharges: [CartChargesSerializerData]?
        
        public var totalQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case articles = "articles"
            
            case cartValue = "cart_value"
            
            case cartCharges = "cart_charges"
            
            case totalQuantity = "total_quantity"
            
        }

        public init(articles: [[String: Any]], cartCharges: [CartChargesSerializerData]? = nil, cartValue: Double, items: [String: Any], totalQuantity: Int? = nil) {
            
            self.items = items
            
            self.articles = articles
            
            self.cartValue = cartValue
            
            self.cartCharges = cartCharges
            
            self.totalQuantity = totalQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([String: Any].self, forKey: .items)
                
            
            
            
                articles = try container.decode([[String: Any]].self, forKey: .articles)
                
            
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                do {
                    cartCharges = try container.decode([CartChargesSerializerData].self, forKey: .cartCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(cartCharges, forKey: .cartCharges)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CartDetailsSerializerData
        Used By: Payment
    */

    class CartDetailsSerializerData: Codable {
        
        
        public var items: [String: Any]
        
        public var articles: [[String: Any]]
        
        public var cartValue: Double
        
        public var cartCharges: [CartChargesSerializerData]?
        
        public var totalQuantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case articles = "articles"
            
            case cartValue = "cart_value"
            
            case cartCharges = "cart_charges"
            
            case totalQuantity = "total_quantity"
            
        }

        public init(articles: [[String: Any]], cartCharges: [CartChargesSerializerData]? = nil, cartValue: Double, items: [String: Any], totalQuantity: Int? = nil) {
            
            self.items = items
            
            self.articles = articles
            
            self.cartValue = cartValue
            
            self.cartCharges = cartCharges
            
            self.totalQuantity = totalQuantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([String: Any].self, forKey: .items)
                
            
            
            
                articles = try container.decode([[String: Any]].self, forKey: .articles)
                
            
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                do {
                    cartCharges = try container.decode([CartChargesSerializerData].self, forKey: .cartCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(articles, forKey: .articles)
            
            
            
            
            try? container.encodeIfPresent(cartValue, forKey: .cartValue)
            
            
            
            
            try? container.encodeIfPresent(cartCharges, forKey: .cartCharges)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
        }
        
    }
}


