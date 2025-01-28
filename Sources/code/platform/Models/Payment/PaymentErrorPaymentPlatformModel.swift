

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentError
        Used By: Payment
    */

    class PaymentError: Codable {
        
        
        public var orderId: [String]?
        
        public var orderType: [String]?
        
        public var transactionAmountInPaise: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case orderType = "order_type"
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
        }

        public init(orderId: [String]? = nil, orderType: [String]? = nil, transactionAmountInPaise: [String]? = nil) {
            
            self.orderId = orderId
            
            self.orderType = orderType
            
            self.transactionAmountInPaise = transactionAmountInPaise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderId = try container.decode([String].self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode([String].self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionAmountInPaise = try container.decode([String].self, forKey: .transactionAmountInPaise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentError
        Used By: Payment
    */

    class PaymentError: Codable {
        
        
        public var orderId: [String]?
        
        public var orderType: [String]?
        
        public var transactionAmountInPaise: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case orderType = "order_type"
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
        }

        public init(orderId: [String]? = nil, orderType: [String]? = nil, transactionAmountInPaise: [String]? = nil) {
            
            self.orderId = orderId
            
            self.orderType = orderType
            
            self.transactionAmountInPaise = transactionAmountInPaise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderId = try container.decode([String].self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode([String].self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionAmountInPaise = try container.decode([String].self, forKey: .transactionAmountInPaise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
            
        }
        
    }
}


