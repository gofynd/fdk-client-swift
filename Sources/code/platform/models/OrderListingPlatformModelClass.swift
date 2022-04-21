

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListing
         Used By: Order
     */

    class OrderListing: Codable {
        public var items: [OrderItems]

        public var filters: Filters

        public var nextOrderStatus: [String: Any]

        public var page: PlatformOrderPage

        public var appliedFilters: AppliedFilters

        public enum CodingKeys: String, CodingKey {
            case items

            case filters

            case nextOrderStatus = "next_order_status"

            case page

            case appliedFilters = "applied_filters"
        }

        public init(appliedFilters: AppliedFilters, filters: Filters, items: [OrderItems], nextOrderStatus: [String: Any], page: PlatformOrderPage) {
            self.items = items

            self.filters = filters

            self.nextOrderStatus = nextOrderStatus

            self.page = page

            self.appliedFilters = appliedFilters
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([OrderItems].self, forKey: .items)

            filters = try container.decode(Filters.self, forKey: .filters)

            nextOrderStatus = try container.decode([String: Any].self, forKey: .nextOrderStatus)

            page = try container.decode(PlatformOrderPage.self, forKey: .page)

            appliedFilters = try container.decode(AppliedFilters.self, forKey: .appliedFilters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(nextOrderStatus, forKey: .nextOrderStatus)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)
        }
    }
}
