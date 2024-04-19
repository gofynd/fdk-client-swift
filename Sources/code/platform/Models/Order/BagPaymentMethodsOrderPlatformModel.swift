

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagPaymentMethods
        Used By: Order
    */

    class BagPaymentMethods: Codable {
        
        
        public var mode: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, mode: String? = nil) {
            
            self.mode = mode
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(mode, forKey: .mode)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagPaymentMethods
        Used By: Order
    */

    class BagPaymentMethods: Codable {
        
        
        public var mode: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case mode = "mode"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, mode: String? = nil) {
            
            self.mode = mode
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(mode, forKey: .mode)
            
            
            
            
            try? container.encode(amount, forKey: .amount)
            
            
        }
        
    }
}


