

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: PriceAdjustmentCharge
        Used By: Order
    */
    class PriceAdjustmentCharge: Codable {
        
        public var code: String?
        
        public var name: String?
        
        public var type: String?
        
        public var amount: ChargeAmount
        
        public var distributionLogic: ChargeDistributionLogic
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case name = "name"
            
            case type = "type"
            
            case amount = "amount"
            
            case distributionLogic = "distribution_logic"
            
        }

        public init(amount: ChargeAmount, code: String? = nil, distributionLogic: ChargeDistributionLogic, name: String? = nil, type: String? = nil) {
            
            self.code = code
            
            self.name = name
            
            self.type = type
            
            self.amount = amount
            
            self.distributionLogic = distributionLogic
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
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
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            amount = try container.decode(ChargeAmount.self, forKey: .amount)
            
            
            
            
            distributionLogic = try container.decode(ChargeDistributionLogic.self, forKey: .distributionLogic)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(distributionLogic, forKey: .distributionLogic)
            
            
        }
        
    }
}
