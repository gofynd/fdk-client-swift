

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductsReasonsFilters
         Used By: Order
     */
    class ProductsReasonsFilters: Codable {
        public var lineNumber: Int?

        public var identifier: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case lineNumber = "line_number"

            case identifier

            case quantity
        }

        public init(identifier: String? = nil, lineNumber: Int? = nil, quantity: Int? = nil) {
            self.lineNumber = lineNumber

            self.identifier = identifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
