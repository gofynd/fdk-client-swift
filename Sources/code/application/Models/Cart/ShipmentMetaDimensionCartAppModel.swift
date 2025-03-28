

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ShipmentMetaDimension
        Used By: Cart
    */
    class ShipmentMetaDimension: Codable {
        
        public var height: Double?
        
        public var length: Double?
        
        public var width: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case height = "height"
            
            case length = "length"
            
            case width = "width"
            
        }

        public init(height: Double? = nil, length: Double? = nil, width: Double? = nil) {
            
            self.height = height
            
            self.length = length
            
            self.width = width
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                height = try container.decode(Double.self, forKey: .height)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                length = try container.decode(Double.self, forKey: .length)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                width = try container.decode(Double.self, forKey: .width)
            
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
            
            
        }
        
    }
}
