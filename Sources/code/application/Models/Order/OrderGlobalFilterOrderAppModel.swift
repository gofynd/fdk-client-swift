

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderGlobalFilter
        Used By: Order
    */
    class OrderGlobalFilter: Codable {
        
        public var displayTest: String?
        
        public var value: String?
        
        public var options: [OrderGlobalFilterOption]?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayTest = "display_test"
            
            case value = "value"
            
            case options = "options"
            
        }

        public init(displayTest: String? = nil, options: [OrderGlobalFilterOption]? = nil, value: String? = nil) {
            
            self.displayTest = displayTest
            
            self.value = value
            
            self.options = options
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                displayTest = try container.decode(String.self, forKey: .displayTest)
            
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
                options = try container.decode([OrderGlobalFilterOption].self, forKey: .options)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayTest, forKey: .displayTest)
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(options, forKey: .options)
            
            
        }
        
    }
}
