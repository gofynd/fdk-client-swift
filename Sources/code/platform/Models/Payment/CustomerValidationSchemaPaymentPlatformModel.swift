

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CustomerValidationSchema
        Used By: Payment
    */

    class CustomerValidationSchema: Codable {
        
        
        public var aggregator: String
        
        public var transactionAmount: Double
        
        public var cartId: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case transactionAmount = "transaction_amount"
            
            case cartId = "cart_id"
            
            case userId = "user_id"
            
        }

        public init(aggregator: String, cartId: String? = nil, transactionAmount: Double, userId: String? = nil) {
            
            self.aggregator = aggregator
            
            self.transactionAmount = transactionAmount
            
            self.cartId = cartId
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                transactionAmount = try container.decode(Double.self, forKey: .transactionAmount)
                
            
            
            
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(transactionAmount, forKey: .transactionAmount)
            
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CustomerValidationSchema
        Used By: Payment
    */

    class CustomerValidationSchema: Codable {
        
        
        public var aggregator: String
        
        public var transactionAmount: Double
        
        public var cartId: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case aggregator = "aggregator"
            
            case transactionAmount = "transaction_amount"
            
            case cartId = "cart_id"
            
            case userId = "user_id"
            
        }

        public init(aggregator: String, cartId: String? = nil, transactionAmount: Double, userId: String? = nil) {
            
            self.aggregator = aggregator
            
            self.transactionAmount = transactionAmount
            
            self.cartId = cartId
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                transactionAmount = try container.decode(Double.self, forKey: .transactionAmount)
                
            
            
            
                do {
                    cartId = try container.decode(String.self, forKey: .cartId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(transactionAmount, forKey: .transactionAmount)
            
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}


