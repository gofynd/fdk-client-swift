

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundStateConfigurationByPaymentType
        Used By: Order
    */

    class RefundStateConfigurationByPaymentType: Codable {
        
        
        public var states: [String]?
        
        public var allowRefundInitiate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case states = "states"
            
            case allowRefundInitiate = "allow_refund_initiate"
            
        }

        public init(allowRefundInitiate: Bool? = nil, states: [String]? = nil) {
            
            self.states = states
            
            self.allowRefundInitiate = allowRefundInitiate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    states = try container.decode([String].self, forKey: .states)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowRefundInitiate = try container.decode(Bool.self, forKey: .allowRefundInitiate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(states, forKey: .states)
            
            
            
            
            try? container.encodeIfPresent(allowRefundInitiate, forKey: .allowRefundInitiate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundStateConfigurationByPaymentType
        Used By: Order
    */

    class RefundStateConfigurationByPaymentType: Codable {
        
        
        public var states: [String]?
        
        public var allowRefundInitiate: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case states = "states"
            
            case allowRefundInitiate = "allow_refund_initiate"
            
        }

        public init(allowRefundInitiate: Bool? = nil, states: [String]? = nil) {
            
            self.states = states
            
            self.allowRefundInitiate = allowRefundInitiate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    states = try container.decode([String].self, forKey: .states)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowRefundInitiate = try container.decode(Bool.self, forKey: .allowRefundInitiate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(states, forKey: .states)
            
            
            
            
            try? container.encodeIfPresent(allowRefundInitiate, forKey: .allowRefundInitiate)
            
            
        }
        
    }
}


