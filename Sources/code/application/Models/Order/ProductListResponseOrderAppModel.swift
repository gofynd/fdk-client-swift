

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ProductListResponse
         Used By: Order
     */
    class ProductListResponse: Codable {
        public var items: [Product]?

        public var page: OrderPage?

        public var success: Bool?

        public var filters: OrderFilters?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case success

            case filters

            case message
        }

        public init(filters: OrderFilters? = nil, items: [Product]? = nil, message: String? = nil, page: OrderPage? = nil, success: Bool? = nil) {
            self.items = items

            self.page = page

            self.success = success

            self.filters = filters

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([Product].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(OrderPage.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode(OrderFilters.self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
