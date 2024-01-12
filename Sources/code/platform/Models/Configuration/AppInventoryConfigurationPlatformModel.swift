

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppInventory
        Used By: Configuration
    */

    class AppInventory: Codable {
        
        
        public var inventory: InventoryConfig?
        
        public var payment: InventoryPaymentConfig?
        
        public var articleAssignment: InventoryArticleAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
            case payment = "payment"
            
            case articleAssignment = "article_assignment"
            
        }

        public init(articleAssignment: InventoryArticleAssignment? = nil, inventory: InventoryConfig? = nil, payment: InventoryPaymentConfig? = nil) {
            
            self.inventory = inventory
            
            self.payment = payment
            
            self.articleAssignment = articleAssignment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inventory = try container.decode(InventoryConfig.self, forKey: .inventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(InventoryPaymentConfig.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleAssignment = try container.decode(InventoryArticleAssignment.self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppInventory
        Used By: Configuration
    */

    class AppInventory: Codable {
        
        
        public var inventory: InventoryConfig?
        
        public var payment: InventoryPaymentConfig?
        
        public var articleAssignment: InventoryArticleAssignment?
        

        public enum CodingKeys: String, CodingKey {
            
            case inventory = "inventory"
            
            case payment = "payment"
            
            case articleAssignment = "article_assignment"
            
        }

        public init(articleAssignment: InventoryArticleAssignment? = nil, inventory: InventoryConfig? = nil, payment: InventoryPaymentConfig? = nil) {
            
            self.inventory = inventory
            
            self.payment = payment
            
            self.articleAssignment = articleAssignment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    inventory = try container.decode(InventoryConfig.self, forKey: .inventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payment = try container.decode(InventoryPaymentConfig.self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleAssignment = try container.decode(InventoryArticleAssignment.self, forKey: .articleAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(inventory, forKey: .inventory)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
        }
        
    }
}


