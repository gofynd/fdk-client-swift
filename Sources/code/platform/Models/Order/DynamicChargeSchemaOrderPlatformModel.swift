

import Foundation


public extension PlatformClient.Order {
    /*
        Model: DynamicChargeSchema
        Used By: Order
    */

    class DynamicChargeSchema: Codable {
        
        
        public var name: String
        
        public var type: String
        
        public var code: String?
        
        public var amount: ChargeAmountSchema
        
        public var taxes: DynamicChargeTaxSchema?
        
        public var meta: [String: Any]?
        
        public var distributionLogic: DistributionLogicSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case type = "type"
            
            case code = "code"
            
            case amount = "amount"
            
            case taxes = "taxes"
            
            case meta = "meta"
            
            case distributionLogic = "distribution_logic"
            
        }

        public init(amount: ChargeAmountSchema, code: String? = nil, distributionLogic: DistributionLogicSchema? = nil, meta: [String: Any]? = nil, name: String, taxes: DynamicChargeTaxSchema? = nil, type: String) {
            
            self.name = name
            
            self.type = type
            
            self.code = code
            
            self.amount = amount
            
            self.taxes = taxes
            
            self.meta = meta
            
            self.distributionLogic = distributionLogic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amount = try container.decode(ChargeAmountSchema.self, forKey: .amount)
                
            
            
            
                do {
                    taxes = try container.decode(DynamicChargeTaxSchema.self, forKey: .taxes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    distributionLogic = try container.decode(DistributionLogicSchema.self, forKey: .distributionLogic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(distributionLogic, forKey: .distributionLogic)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: DynamicChargeSchema
        Used By: Order
    */

    class DynamicChargeSchema: Codable {
        
        
        public var name: String
        
        public var type: String
        
        public var code: String?
        
        public var amount: ChargeAmountSchema
        
        public var taxes: DynamicChargeTaxSchema?
        
        public var meta: [String: Any]?
        
        public var distributionLogic: DistributionLogicSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case type = "type"
            
            case code = "code"
            
            case amount = "amount"
            
            case taxes = "taxes"
            
            case meta = "meta"
            
            case distributionLogic = "distribution_logic"
            
        }

        public init(amount: ChargeAmountSchema, code: String? = nil, distributionLogic: DistributionLogicSchema? = nil, meta: [String: Any]? = nil, name: String, taxes: DynamicChargeTaxSchema? = nil, type: String) {
            
            self.name = name
            
            self.type = type
            
            self.code = code
            
            self.amount = amount
            
            self.taxes = taxes
            
            self.meta = meta
            
            self.distributionLogic = distributionLogic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                amount = try container.decode(ChargeAmountSchema.self, forKey: .amount)
                
            
            
            
                do {
                    taxes = try container.decode(DynamicChargeTaxSchema.self, forKey: .taxes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    distributionLogic = try container.decode(DistributionLogicSchema.self, forKey: .distributionLogic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(distributionLogic, forKey: .distributionLogic)
            
            
        }
        
    }
}


