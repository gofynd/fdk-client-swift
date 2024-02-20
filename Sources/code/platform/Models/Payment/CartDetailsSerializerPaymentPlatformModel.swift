

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CartDetailsSerializer
        Used By: Payment
    */

    class CartDetailsSerializer: Codable {
        
        
        public var items: [String: Any]
        
        public var articles: [[String: Any]]
        
        public var cartValue: Double
        
        public var totalQuantity: Int?
        
        public var sellerCompanyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case articles = "articles"
            
            case cartValue = "cart_value"
            
            case totalQuantity = "total_quantity"
            
            case sellerCompanyId = "seller_company_id"
            
        }

        public init(articles: [[String: Any]], cartValue: Double, items: [String: Any], sellerCompanyId: Int? = nil, totalQuantity: Int? = nil) {
            
            self.items = items
            
            self.articles = articles
            
            self.cartValue = cartValue
            
            self.totalQuantity = totalQuantity
            
            self.sellerCompanyId = sellerCompanyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([String: Any].self, forKey: .items)
                
            
            
            
                articles = try container.decode([[String: Any]].self, forKey: .articles)
                
            
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerCompanyId = try container.decode(Int.self, forKey: .sellerCompanyId)
                
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
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellerCompanyId, forKey: .sellerCompanyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CartDetailsSerializer
        Used By: Payment
    */

    class CartDetailsSerializer: Codable {
        
        
        public var items: [String: Any]
        
        public var articles: [[String: Any]]
        
        public var cartValue: Double
        
        public var totalQuantity: Int?
        
        public var sellerCompanyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case articles = "articles"
            
            case cartValue = "cart_value"
            
            case totalQuantity = "total_quantity"
            
            case sellerCompanyId = "seller_company_id"
            
        }

        public init(articles: [[String: Any]], cartValue: Double, items: [String: Any], sellerCompanyId: Int? = nil, totalQuantity: Int? = nil) {
            
            self.items = items
            
            self.articles = articles
            
            self.cartValue = cartValue
            
            self.totalQuantity = totalQuantity
            
            self.sellerCompanyId = sellerCompanyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([String: Any].self, forKey: .items)
                
            
            
            
                articles = try container.decode([[String: Any]].self, forKey: .articles)
                
            
            
            
                cartValue = try container.decode(Double.self, forKey: .cartValue)
                
            
            
            
                do {
                    totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerCompanyId = try container.decode(Int.self, forKey: .sellerCompanyId)
                
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
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellerCompanyId, forKey: .sellerCompanyId)
            
            
        }
        
    }
}


