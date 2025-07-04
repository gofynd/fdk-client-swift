

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: CanvasItem
        Used By: Theme
    */
    class CanvasItem: Codable {
        
        public var value: String?
        
        public var label: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case label = "label"
            
        }

        public init(label: String? = nil, value: String? = nil) {
            
            self.value = value
            
            self.label = label
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                value = try container.decode(String.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                label = try container.decode(String.self, forKey: .label)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
        }
        
    }
}
