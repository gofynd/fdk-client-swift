

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CartChargesSerializerData
        Used By: Payment
    */

    class CartChargesSerializerData: Codable {
        
        
        public var chargeType: String?
        
        public var name: String?
        
        public var code: String?
        
        public var amount: ChargeAmountSerializerData?
        

        public enum CodingKeys: String, CodingKey {
            
            case chargeType = "charge_type"
            
            case name = "name"
            
            case code = "code"
            
            case amount = "amount"
            
        }

        public init(amount: ChargeAmountSerializerData? = nil, chargeType: String? = nil, code: String? = nil, name: String? = nil) {
            
            self.chargeType = chargeType
            
            self.name = name
            
            self.code = code
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    chargeType = try container.decode(String.self, forKey: .chargeType)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(ChargeAmountSerializerData.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(chargeType, forKey: .chargeType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CartChargesSerializerData
        Used By: Payment
    */

    class CartChargesSerializerData: Codable {
        
        
        public var chargeType: String?
        
        public var name: String?
        
        public var code: String?
        
        public var amount: ChargeAmountSerializerData?
        

        public enum CodingKeys: String, CodingKey {
            
            case chargeType = "charge_type"
            
            case name = "name"
            
            case code = "code"
            
            case amount = "amount"
            
        }

        public init(amount: ChargeAmountSerializerData? = nil, chargeType: String? = nil, code: String? = nil, name: String? = nil) {
            
            self.chargeType = chargeType
            
            self.name = name
            
            self.code = code
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    chargeType = try container.decode(String.self, forKey: .chargeType)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(ChargeAmountSerializerData.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(chargeType, forKey: .chargeType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}


