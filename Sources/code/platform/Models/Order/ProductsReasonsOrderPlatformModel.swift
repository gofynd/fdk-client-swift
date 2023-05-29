

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ProductsReasons
         Used By: Order
     */

    class ProductsReasons: Codable {
        public var data: ProductsReasonsData?

        public var filters: [ProductsReasonsFilters]?

        public enum CodingKeys: String, CodingKey {
            case data

            case filters
        }

        public init(data: ProductsReasonsData? = nil, filters: [ProductsReasonsFilters]? = nil) {
            self.data = data

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(ProductsReasonsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductsReasonsFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ProductsReasons
         Used By: Order
     */

    class ProductsReasons: Codable {
        public var data: ProductsReasonsData?

        public var filters: [ProductsReasonsFilters]?

        public enum CodingKeys: String, CodingKey {
            case data

            case filters
        }

        public init(data: ProductsReasonsData? = nil, filters: [ProductsReasonsFilters]? = nil) {
            self.data = data

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(ProductsReasonsData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([ProductsReasonsFilters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
