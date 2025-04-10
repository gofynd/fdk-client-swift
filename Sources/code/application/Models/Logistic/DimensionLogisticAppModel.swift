

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Dimension
        Used By: Logistic
    */
    class Dimension: Codable {
        
        public var height: Int?
        
        public var isDefault: Bool?
        
        public var length: Int?
        
        public var unit: String?
        
        public var width: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case isDefault = "is_default"
            
            case length = "length"
            
            case unit = "unit"
            
            case width = "width"
            
        }

        public init(height: Int? = nil, isDefault: Bool? = nil, length: Int? = nil, unit: String? = nil, width: Int? = nil) {
            
            self.height = height
            
            self.isDefault = isDefault
            
            self.length = length
            
            self.unit = unit
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                height = try container.decode(Int.self, forKey: .height)
            
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
            
            
            
            do {
                length = try container.decode(Int.self, forKey: .length)
            
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
            
            
            
            do {
                width = try container.decode(Int.self, forKey: .width)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(height, forKey: .height)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(length, forKey: .length)
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            try? container.encodeIfPresent(width, forKey: .width)
            
            
        }
        
    }
}
