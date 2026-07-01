

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundModeLineNumber
        Used By: Order
    */
    class RefundModeLineNumber: Codable {
        
        public var lineNumber: Double?
        
        public var quantity: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case quantity = "quantity"
            
        }

        public init(lineNumber: Double? = nil, quantity: Double? = nil) {
            
            self.lineNumber = lineNumber
            
            self.quantity = quantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                lineNumber = try container.decode(Double.self, forKey: .lineNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Double.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}
