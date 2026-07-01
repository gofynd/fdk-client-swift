

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentDimension
        Used By: Logistic
    */
    class ShipmentDimension: Codable {
        
        public var height: Double
        
        public var length: Double
        
        public var width: Double
        
        public var isDefault: Bool?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
            case isDefault = "is_default"
            
            case unit = "unit"
            
        }

        public init(height: Double, isDefault: Bool? = nil, length: Double, unit: String? = nil, width: Double) {
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
            self.isDefault = isDefault
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            height = try container.decode(Double.self, forKey: .height)
            
            
            
            
            length = try container.decode(Double.self, forKey: .length)
            
            
            
            
            width = try container.decode(Double.self, forKey: .width)
            
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                unit = try container.decode(String.self, forKey: .unit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}
