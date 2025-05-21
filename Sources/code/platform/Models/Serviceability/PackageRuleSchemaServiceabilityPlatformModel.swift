

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageRuleSchema
        Used By: Serviceability
    */

    class PackageRuleSchema: Codable {
        
        
        public var quantity: Quantity?
        
        public var ruleId: String?
        
        public var weight: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case ruleId = "rule_id"
            
            case weight = "weight"
            
        }

        public init(quantity: Quantity? = nil, ruleId: String? = nil, weight: Double? = nil) {
            
            self.quantity = quantity
            
            self.ruleId = ruleId
            
            self.weight = weight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantity = try container.decode(Quantity.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageRuleSchema
        Used By: Serviceability
    */

    class PackageRuleSchema: Codable {
        
        
        public var quantity: Quantity?
        
        public var ruleId: String?
        
        public var weight: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case quantity = "quantity"
            
            case ruleId = "rule_id"
            
            case weight = "weight"
            
        }

        public init(quantity: Quantity? = nil, ruleId: String? = nil, weight: Double? = nil) {
            
            self.quantity = quantity
            
            self.ruleId = ruleId
            
            self.weight = weight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    quantity = try container.decode(Quantity.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}


