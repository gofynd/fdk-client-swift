

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PackageMaterialRule
        Used By: Serviceability
    */

    class PackageMaterialRule: Codable {
        
        
        public var ruleId: String?
        
        public var quantity: PackageMaterialRuleQuantity?
        
        public var weight: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case quantity = "quantity"
            
            case weight = "weight"
            
        }

        public init(quantity: PackageMaterialRuleQuantity? = nil, ruleId: String? = nil, weight: Int? = nil) {
            
            self.ruleId = ruleId
            
            self.quantity = quantity
            
            self.weight = weight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(PackageMaterialRuleQuantity.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Int.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PackageMaterialRule
        Used By: Serviceability
    */

    class PackageMaterialRule: Codable {
        
        
        public var ruleId: String?
        
        public var quantity: PackageMaterialRuleQuantity?
        
        public var weight: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case quantity = "quantity"
            
            case weight = "weight"
            
        }

        public init(quantity: PackageMaterialRuleQuantity? = nil, ruleId: String? = nil, weight: Int? = nil) {
            
            self.ruleId = ruleId
            
            self.quantity = quantity
            
            self.weight = weight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(PackageMaterialRuleQuantity.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Int.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}


