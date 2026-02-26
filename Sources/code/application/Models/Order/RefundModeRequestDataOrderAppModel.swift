

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundModeRequestData
        Used By: Order
    */
    class RefundModeRequestData: Codable {
        
        public var lineNumbers: [RefundModeLineNumber]?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumbers = "line_numbers"
            
        }

        public init(lineNumbers: [RefundModeLineNumber]? = nil) {
            
            self.lineNumbers = lineNumbers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                lineNumbers = try container.decode([RefundModeLineNumber].self, forKey: .lineNumbers)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(lineNumbers, forKey: .lineNumbers)
            
            
        }
        
    }
}
