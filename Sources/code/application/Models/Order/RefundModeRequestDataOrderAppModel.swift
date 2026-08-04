

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundModeRequestData
        Used By: Order
    */
    class RefundModeRequestData: Codable {
        
        public var lineNumbers: [RefundModeLineNumber]?
        
        public var nextState: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumbers = "line_numbers"
            
            case nextState = "next_state"
            
        }

        public init(lineNumbers: [RefundModeLineNumber]? = nil, nextState: String? = nil) {
            
            self.lineNumbers = lineNumbers
            
            self.nextState = nextState
            
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
            
            
            
            do {
                nextState = try container.decode(String.self, forKey: .nextState)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(lineNumbers, forKey: .lineNumbers)
            
            
            
            try? container.encodeIfPresent(nextState, forKey: .nextState)
            
            
        }
        
    }
}
