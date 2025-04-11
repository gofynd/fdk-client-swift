

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
        
        public var companyId: Int?
        
        public var isActive: Bool?
        
        public var type: String?
        
        public var name: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case quantity = "quantity"
            
            case weight = "weight"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case type = "type"
            
            case name = "name"
            
            case id = "id"
            
        }

        public init(companyId: Int? = nil, id: String? = nil, isActive: Bool? = nil, name: String? = nil, quantity: PackageMaterialRuleQuantity? = nil, ruleId: String? = nil, type: String? = nil, weight: Int? = nil) {
            
            self.ruleId = ruleId
            
            self.quantity = quantity
            
            self.weight = weight
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.type = type
            
            self.name = name
            
            self.id = id
            
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
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
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
        
        public var companyId: Int?
        
        public var isActive: Bool?
        
        public var type: String?
        
        public var name: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case quantity = "quantity"
            
            case weight = "weight"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case type = "type"
            
            case name = "name"
            
            case id = "id"
            
        }

        public init(companyId: Int? = nil, id: String? = nil, isActive: Bool? = nil, name: String? = nil, quantity: PackageMaterialRuleQuantity? = nil, ruleId: String? = nil, type: String? = nil, weight: Int? = nil) {
            
            self.ruleId = ruleId
            
            self.quantity = quantity
            
            self.weight = weight
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.type = type
            
            self.name = name
            
            self.id = id
            
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
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


