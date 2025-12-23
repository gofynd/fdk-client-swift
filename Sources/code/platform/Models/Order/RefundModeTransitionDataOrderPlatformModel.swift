

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundModeTransitionData
        Used By: Order
    */

    class RefundModeTransitionData: Codable {
        
        
        public var refundMode: String?
        
        public var displayName: String?
        
        public var paymentIdentifiers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundMode = "refund_mode"
            
            case displayName = "display_name"
            
            case paymentIdentifiers = "payment_identifiers"
            
        }

        public init(displayName: String? = nil, paymentIdentifiers: [String]? = nil, refundMode: String? = nil) {
            
            self.refundMode = refundMode
            
            self.displayName = displayName
            
            self.paymentIdentifiers = paymentIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundMode = try container.decode(String.self, forKey: .refundMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifiers = try container.decode([String].self, forKey: .paymentIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundMode, forKey: .refundMode)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifiers, forKey: .paymentIdentifiers)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundModeTransitionData
        Used By: Order
    */

    class RefundModeTransitionData: Codable {
        
        
        public var refundMode: String?
        
        public var displayName: String?
        
        public var paymentIdentifiers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundMode = "refund_mode"
            
            case displayName = "display_name"
            
            case paymentIdentifiers = "payment_identifiers"
            
        }

        public init(displayName: String? = nil, paymentIdentifiers: [String]? = nil, refundMode: String? = nil) {
            
            self.refundMode = refundMode
            
            self.displayName = displayName
            
            self.paymentIdentifiers = paymentIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    refundMode = try container.decode(String.self, forKey: .refundMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifiers = try container.decode([String].self, forKey: .paymentIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(refundMode, forKey: .refundMode)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifiers, forKey: .paymentIdentifiers)
            
            
        }
        
    }
}


