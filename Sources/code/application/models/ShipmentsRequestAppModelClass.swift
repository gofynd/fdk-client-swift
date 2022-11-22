

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentsRequest
         Used By: Order
     */
    class ShipmentsRequest: Codable {
        public var reasons: [[String: Any]]?

        public var products: [Products]?

        public enum CodingKeys: String, CodingKey {
            case reasons

            case products
        }

        public init(products: [Products]? = nil, reasons: [[String: Any]]? = nil) {
            self.reasons = reasons

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Products].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}
