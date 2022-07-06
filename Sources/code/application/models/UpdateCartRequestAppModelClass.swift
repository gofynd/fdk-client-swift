

import Foundation
public extension ApplicationClient {
    /*
         Model: UpdateCartRequest
         Used By: Cart
     */
    class UpdateCartRequest: Codable {
        public var items: [UpdateProductCart]?

        public var operation: String

        public enum CodingKeys: String, CodingKey {
            case items

            case operation
        }

        public init(items: [UpdateProductCart]? = nil, operation: String) {
            self.items = items

            self.operation = operation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([UpdateProductCart].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operation = try container.decode(String.self, forKey: .operation)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(operation, forKey: .operation)
        }
    }
}
