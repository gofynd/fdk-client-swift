

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderById
         Used By: Order
     */
    class OrderById: Codable {
        public var order: OrderSchema?

        public enum CodingKeys: String, CodingKey {
            case order
        }

        public init(order: OrderSchema? = nil) {
            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderSchema.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
