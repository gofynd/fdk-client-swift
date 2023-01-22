

import Foundation
public extension ApplicationClient {
    /*
        Model: BreakupValues
        Used By: Order
    */
    class BreakupValues: Codable {
        
        public var value: Double?
        
        public var display: String?
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case display = "display"
            
            case name = "name"
            
        }

        public init(display: String? = nil, name: String? = nil, value: Double? = nil) {
            
            self.value = value
            
            self.display = display
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                value = try container.decode(Double.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                display = try container.decode(String.self, forKey: .display)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
