

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInternalPlatformViewResponse
         Used By: Order
     */

    class ShipmentInternalPlatformViewResponse: Codable {
        public var page: [String: Any]?

        public var appliedFilters: [String: Any]?

        public var filters: [FiltersInfo]?

        public var items: [ShipmentItem]?

        public enum CodingKeys: String, CodingKey {
            case page

            case appliedFilters = "applied_filters"

            case filters

            case items
        }

        public init(appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, items: [ShipmentItem]? = nil, page: [String: Any]? = nil) {
            self.page = page

            self.appliedFilters = appliedFilters

            self.filters = filters

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode([String: Any].self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filters = try container.decode([FiltersInfo].self, forKey: .filters)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
