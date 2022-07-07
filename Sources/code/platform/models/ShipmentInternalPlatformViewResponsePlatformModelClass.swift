

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInternalPlatformViewResponse
         Used By: Orders
     */

    class ShipmentInternalPlatformViewResponse: Codable {
        public var appliedFilters: [String: Any]?

        public var filters: [Filters]?

        public var items: [ShipmentItem]?

        public var page: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case appliedFilters = "applied_filters"

            case filters

            case items

            case page
        }

        public init(appliedFilters: [String: Any]? = nil, filters: [Filters]? = nil, items: [ShipmentItem]? = nil, page: [String: Any]? = nil) {
            self.appliedFilters = appliedFilters

            self.filters = filters

            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([Filters].self, forKey: .filters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ShipmentItem].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
