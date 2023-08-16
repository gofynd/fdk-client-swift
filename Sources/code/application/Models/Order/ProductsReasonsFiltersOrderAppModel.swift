

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ProductsReasonsFilters
        Used By: Order
    */
    class ProductsReasonsFilters: Codable {
        
        public var lineNumber: Int?
        
        public var quantity: Int?
        
        public var identifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case lineNumber = "line_number"
            
            case quantity = "quantity"
            
            case identifier = "identifier"
            
        }

        public init(identifier: String? = nil, lineNumber: Int? = nil, quantity: Int? = nil) {
            
            self.lineNumber = lineNumber
            
            self.quantity = quantity
            
            self.identifier = identifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                identifier = try container.decode(String.self, forKey: .identifier)
            
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
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
}
