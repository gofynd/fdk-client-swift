

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: RuleDefinition
        Used By: Cart
    */

    class RuleDefinition: Codable {
        
        
        public var currencyCode: String?
        
        public var autoApply: Bool?
        
        public var type: String?
        
        public var isExact: Bool?
        
        public var applicableOn: String?
        
        public var calculateOn: String?
        
        public var valueType: String?
        
        public var scope: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case currencyCode = "currency_code"
            
            case autoApply = "auto_apply"
            
            case type = "type"
            
            case isExact = "is_exact"
            
            case applicableOn = "applicable_on"
            
            case calculateOn = "calculate_on"
            
            case valueType = "value_type"
            
            case scope = "scope"
            
        }

        public init(applicableOn: String? = nil, autoApply: Bool? = nil, calculateOn: String? = nil, currencyCode: String? = nil, isExact: Bool? = nil, scope: [String]? = nil, type: String? = nil, valueType: String? = nil) {
            
            self.currencyCode = currencyCode
            
            self.autoApply = autoApply
            
            self.type = type
            
            self.isExact = isExact
            
            self.applicableOn = applicableOn
            
            self.calculateOn = calculateOn
            
            self.valueType = valueType
            
            self.scope = scope
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    currencyCode = try container.decode(String.self, forKey: .currencyCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoApply = try container.decode(Bool.self, forKey: .autoApply)
                
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
                    isExact = try container.decode(Bool.self, forKey: .isExact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicableOn = try container.decode(String.self, forKey: .applicableOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    valueType = try container.decode(String.self, forKey: .valueType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(currencyCode, forKey: .currencyCode)
            
            
            
            
            try? container.encodeIfPresent(autoApply, forKey: .autoApply)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(isExact, forKey: .isExact)
            
            
            
            
            try? container.encodeIfPresent(applicableOn, forKey: .applicableOn)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(valueType, forKey: .valueType)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
        }
        
    }
}


