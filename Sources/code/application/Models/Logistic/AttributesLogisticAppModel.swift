

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Attributes
        Used By: Logistic
    */
    class Attributes: Codable {
        
        public var batteryOperated: String?
        
        public var isFlammable: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case batteryOperated = "battery_operated"
            
            case isFlammable = "is_flammable"
            
        }

        public init(batteryOperated: String? = nil, isFlammable: String? = nil) {
            
            self.batteryOperated = batteryOperated
            
            self.isFlammable = isFlammable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                batteryOperated = try container.decode(String.self, forKey: .batteryOperated)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isFlammable = try container.decode(String.self, forKey: .isFlammable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(batteryOperated, forKey: .batteryOperated)
            
            
            
            try? container.encodeIfPresent(isFlammable, forKey: .isFlammable)
            
            
        }
        
    }
}
