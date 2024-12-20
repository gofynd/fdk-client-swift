

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: CreateOneTimeChargeResponseSchemas
        Used By: Billing
    */

    class CreateOneTimeChargeResponseSchemas: Codable {
        
        
        public var charge: Charge?
        
        public var confirmUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case charge = "charge"
            
            case confirmUrl = "confirm_url"
            
        }

        public init(charge: Charge? = nil, confirmUrl: String? = nil) {
            
            self.charge = charge
            
            self.confirmUrl = confirmUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    charge = try container.decode(Charge.self, forKey: .charge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    confirmUrl = try container.decode(String.self, forKey: .confirmUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(charge, forKey: .charge)
            
            
            
            
            try? container.encodeIfPresent(confirmUrl, forKey: .confirmUrl)
            
            
        }
        
    }
}




