

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundOptionsPriority
        Used By: Payment
    */

    class RefundOptionsPriority: Codable {
        
        
        public var paymentModes: [String]?
        
        public var items: [RefundItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentModes = "payment_modes"
            
            case items = "items"
            
        }

        public init(items: [RefundItem]? = nil, paymentModes: [String]? = nil) {
            
            self.paymentModes = paymentModes
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentModes = try container.decode([String].self, forKey: .paymentModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([RefundItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundOptionsPriority
        Used By: Payment
    */

    class RefundOptionsPriority: Codable {
        
        
        public var paymentModes: [String]?
        
        public var items: [RefundItem]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentModes = "payment_modes"
            
            case items = "items"
            
        }

        public init(items: [RefundItem]? = nil, paymentModes: [String]? = nil) {
            
            self.paymentModes = paymentModes
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentModes = try container.decode([String].self, forKey: .paymentModes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([RefundItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


