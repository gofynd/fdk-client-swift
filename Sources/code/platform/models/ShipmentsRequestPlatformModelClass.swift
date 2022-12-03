

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentsRequest
         Used By: Order
     */

    class ShipmentsRequest: Codable {
        public var products: [Products]?

        public var dataUpdates: DataUpdates?

        public var reasons: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case products

            case dataUpdates = "data_updates"

            case reasons
        }

        public init(dataUpdates: DataUpdates? = nil, products: [Products]? = nil, reasons: [[String: Any]]? = nil) {
            self.products = products

            self.dataUpdates = dataUpdates

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                products = try container.decode([Products].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dataUpdates = try container.decode(DataUpdates.self, forKey: .dataUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
