

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: NetQuantity
        Used By: Catalog
    */
    class NetQuantity: Codable {
        
        public var unit: [String: Any]?
        
        public var value: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case unit = "unit"
            
            case value = "value"
            
        }

        public init(unit: [String: Any]? = nil, value: Double? = nil) {
            
            self.unit = unit
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                unit = try container.decode([String: Any].self, forKey: .unit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                value = try container.decode(Double.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}
