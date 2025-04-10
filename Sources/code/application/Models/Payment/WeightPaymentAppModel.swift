

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: Weight
        Used By: Payment
    */
    class Weight: Codable {
        
        public var unit: String?
        
        public var shipping: Int?
        
        public var isDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case unit = "unit"
            
            case shipping = "shipping"
            
            case isDefault = "is_default"
            
        }

        public init(isDefault: Bool? = nil, shipping: Int? = nil, unit: String? = nil) {
            
            self.unit = unit
            
            self.shipping = shipping
            
            self.isDefault = isDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                unit = try container.decode(String.self, forKey: .unit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipping = try container.decode(Int.self, forKey: .shipping)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            try? container.encodeIfPresent(shipping, forKey: .shipping)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
        }
        
    }
}
