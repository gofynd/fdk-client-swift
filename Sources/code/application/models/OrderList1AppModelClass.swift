

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderList1
         Used By: Order
     */
    class OrderList1: Codable {
        public var items: [OrderSchema1]

        public var page: OrderPage

        public var filters: OrderFilters

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case filters
        }

        public init(filters: OrderFilters, items: [OrderSchema1], page: OrderPage) {
            self.items = items

            self.page = page

            self.filters = filters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([OrderSchema1].self, forKey: .items)

            page = try container.decode(OrderPage.self, forKey: .page)

            filters = try container.decode(OrderFilters.self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }
}
