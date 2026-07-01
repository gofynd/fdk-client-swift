

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Charge
        Used By: Order
    */

    class Charge: Codable {
        
        
        public var amount: AmountSchema
        
        public var type: String
        
        public var name: String
        
        public var code: String?
        
        public var tax: Tax?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case type = "type"
            
            case name = "name"
            
            case code = "code"
            
            case tax = "tax"
            
        }

        public init(amount: AmountSchema, code: String? = nil, name: String, tax: Tax? = nil, type: String) {
            
            self.amount = amount
            
            self.type = type
            
            self.name = name
            
            self.code = code
            
            self.tax = tax
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(AmountSchema.self, forKey: .amount)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode(Tax.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Charge
        Used By: Order
    */

    class Charge: Codable {
        
        
        public var amount: AmountSchema
        
        public var type: String
        
        public var name: String
        
        public var code: String?
        
        public var tax: Tax?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case type = "type"
            
            case name = "name"
            
            case code = "code"
            
            case tax = "tax"
            
        }

        public init(amount: AmountSchema, code: String? = nil, name: String, tax: Tax? = nil, type: String) {
            
            self.amount = amount
            
            self.type = type
            
            self.name = name
            
            self.code = code
            
            self.tax = tax
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                amount = try container.decode(AmountSchema.self, forKey: .amount)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tax = try container.decode(Tax.self, forKey: .tax)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(tax, forKey: .tax)
            
            
        }
        
    }
}


