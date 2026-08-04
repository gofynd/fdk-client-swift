

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderLineItemChargeSchema
        Used By: Order
    */

    class CreateOrderLineItemChargeSchema: Codable {
        
        
        public var name: String
        
        public var amount: Double
        
        public var refundable: Bool?
        
        public var taxRuleId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case amount = "amount"
            
            case refundable = "refundable"
            
            case taxRuleId = "tax_rule_id"
            
        }

        public init(amount: Double, name: String, refundable: Bool? = nil, taxRuleId: String? = nil) {
            
            self.name = name
            
            self.amount = amount
            
            self.refundable = refundable
            
            self.taxRuleId = taxRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    refundable = try container.decode(Bool.self, forKey: .refundable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxRuleId = try container.decode(String.self, forKey: .taxRuleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(refundable, forKey: .refundable)
            
            
            
            
            try? container.encodeIfPresent(taxRuleId, forKey: .taxRuleId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderLineItemChargeSchema
        Used By: Order
    */

    class CreateOrderLineItemChargeSchema: Codable {
        
        
        public var name: String
        
        public var amount: Double
        
        public var refundable: Bool?
        
        public var taxRuleId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case amount = "amount"
            
            case refundable = "refundable"
            
            case taxRuleId = "tax_rule_id"
            
        }

        public init(amount: Double, name: String, refundable: Bool? = nil, taxRuleId: String? = nil) {
            
            self.name = name
            
            self.amount = amount
            
            self.refundable = refundable
            
            self.taxRuleId = taxRuleId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                amount = try container.decode(Double.self, forKey: .amount)
                
            
            
            
                do {
                    refundable = try container.decode(Bool.self, forKey: .refundable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxRuleId = try container.decode(String.self, forKey: .taxRuleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(refundable, forKey: .refundable)
            
            
            
            
            try? container.encodeIfPresent(taxRuleId, forKey: .taxRuleId)
            
            
        }
        
    }
}


