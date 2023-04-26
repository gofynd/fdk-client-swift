

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ProductsDataUpdates1
         Used By: Order
     */
    class ProductsDataUpdates1: Codable {
        public var filters: [ProductsDataUpdatesFilters1]?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case data
        }

        public init(data: [String: Any]? = nil, filters: [ProductsDataUpdatesFilters1]? = nil) {
            self.filters = filters

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([ProductsDataUpdatesFilters1].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
