

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentCustomConfigModeSchema
        Used By: Payment
    */

    class PaymentCustomConfigModeSchema: Codable {
        
        
        public var available: Bool
        
        public var preOrder: [String]?
        
        public var postOrder: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case available = "available"
            
            case preOrder = "pre_order"
            
            case postOrder = "post_order"
            
        }

        public init(available: Bool, postOrder: [String]? = nil, preOrder: [String]? = nil) {
            
            self.available = available
            
            self.preOrder = preOrder
            
            self.postOrder = postOrder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                available = try container.decode(Bool.self, forKey: .available)
                
            
            
            
                do {
                    preOrder = try container.decode([String].self, forKey: .preOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode([String].self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(available, forKey: .available)
            
            
            
            
            try? container.encodeIfPresent(preOrder, forKey: .preOrder)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentCustomConfigModeSchema
        Used By: Payment
    */

    class PaymentCustomConfigModeSchema: Codable {
        
        
        public var available: Bool
        
        public var preOrder: [String]?
        
        public var postOrder: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case available = "available"
            
            case preOrder = "pre_order"
            
            case postOrder = "post_order"
            
        }

        public init(available: Bool, postOrder: [String]? = nil, preOrder: [String]? = nil) {
            
            self.available = available
            
            self.preOrder = preOrder
            
            self.postOrder = postOrder
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                available = try container.decode(Bool.self, forKey: .available)
                
            
            
            
                do {
                    preOrder = try container.decode([String].self, forKey: .preOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode([String].self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(available, forKey: .available)
            
            
            
            
            try? container.encodeIfPresent(preOrder, forKey: .preOrder)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
        }
        
    }
}


