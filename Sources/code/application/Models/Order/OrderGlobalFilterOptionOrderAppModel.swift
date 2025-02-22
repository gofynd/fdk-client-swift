

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderGlobalFilterOption
        Used By: Order
    */
    class OrderGlobalFilterOption: Codable {
        
        public var displayText: String?
        
        public var value: String?
        
        public var isSelected: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayText = "display_text"
            
            case value = "value"
            
            case isSelected = "is_selected"
            
        }

        public init(displayText: String? = nil, isSelected: Bool? = nil, value: String? = nil) {
            
            self.displayText = displayText
            
            self.value = value
            
            self.isSelected = isSelected
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                displayText = try container.decode(String.self, forKey: .displayText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                value = try container.decode(String.self, forKey: .value)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
            
            
        }
        
    }
}
