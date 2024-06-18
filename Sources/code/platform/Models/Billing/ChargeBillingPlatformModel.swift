

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Charge
        Used By: Billing
    */

    class Charge: Codable {
        
        
        public var finalCharge: OneTimeChargeEntity?
        

        public enum CodingKeys: String, CodingKey {
            
            case finalCharge = "final_charge"
            
        }

        public init(finalCharge: OneTimeChargeEntity? = nil) {
            
            self.finalCharge = finalCharge
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    finalCharge = try container.decode(OneTimeChargeEntity.self, forKey: .finalCharge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(finalCharge, forKey: .finalCharge)
            
            
        }
        
    }
}




