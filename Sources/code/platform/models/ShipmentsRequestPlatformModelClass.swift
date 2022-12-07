

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentsRequest
         Used By: Order
     */

    class ShipmentsRequest: Codable {
        public var dataUpdates: DataUpdates?

        public var products: [Products]?

        public var reasons: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case dataUpdates = "data_updates"

            case products

            case reasons
        }

        public init(dataUpdates: DataUpdates? = nil, products: [Products]? = nil, reasons: [[String: Any]]? = nil) {
            self.dataUpdates = dataUpdates

            self.products = products

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dataUpdates = try container.decode(DataUpdates.self, forKey: .dataUpdates)

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

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
