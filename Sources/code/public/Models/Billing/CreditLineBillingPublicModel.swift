

import Foundation
public extension PublicClient.Billing {
    /*
        Model: CreditLine
        Used By: Billing
    */

    class CreditLine: Codable {
        
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
        }

        public init(isActive: Bool? = nil) {
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}
