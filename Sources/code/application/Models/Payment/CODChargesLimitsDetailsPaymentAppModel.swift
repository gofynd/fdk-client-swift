

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CODChargesLimitsDetails
        Used By: Payment
    */
    class CODChargesLimitsDetails: Codable {
        
        public var maxCartValue: Double?
        
        public var minCartValue: Double?
        
        public var codCharge: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case maxCartValue = "max_cart_value"
            
            case minCartValue = "min_cart_value"
            
            case codCharge = "cod_charge"
            
        }

        public init(codCharge: Double? = nil, maxCartValue: Double? = nil, minCartValue: Double? = nil) {
            
            self.maxCartValue = maxCartValue
            
            self.minCartValue = minCartValue
            
            self.codCharge = codCharge
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                maxCartValue = try container.decode(Double.self, forKey: .maxCartValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                minCartValue = try container.decode(Double.self, forKey: .minCartValue)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                codCharge = try container.decode(Double.self, forKey: .codCharge)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(maxCartValue, forKey: .maxCartValue)
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            try? container.encodeIfPresent(codCharge, forKey: .codCharge)
            
            
        }
        
    }
}
