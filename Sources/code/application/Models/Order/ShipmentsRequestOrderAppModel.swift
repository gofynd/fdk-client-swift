

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentsRequest
         Used By: Order
     */
    class ShipmentsRequest: Codable {
        public var reasons: ReasonsData?

        public var identifier: String

        public var dataUpdates: DataUpdates?

        public var products: [Products]?

        public enum CodingKeys: String, CodingKey {
            case reasons

            case identifier

            case dataUpdates = "data_updates"

            case products
        }

        public init(dataUpdates: DataUpdates? = nil, identifier: String, products: [Products]? = nil, reasons: ReasonsData? = nil) {
            self.reasons = reasons

            self.identifier = identifier

            self.dataUpdates = dataUpdates

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasons = try container.decode(ReasonsData.self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(dataUpdates, forKey: .dataUpdates)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}
