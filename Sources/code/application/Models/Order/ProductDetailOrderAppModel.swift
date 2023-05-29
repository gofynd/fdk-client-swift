

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ProductDetail
         Used By: Order
     */
    class ProductDetail: Codable {
        public var identifier: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case quantity
        }

        public init(identifier: String? = nil, quantity: Int? = nil) {
            self.identifier = identifier

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
