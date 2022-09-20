

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInternalPlatformViewResponse
         Used By: Orders
     */

    class ShipmentInternalPlatformViewResponse: Codable {
        public var filters: [FiltersInfo]?

        public var appliedFilters: [String: Any]?

        public var items: [ShipmentItem]?

        public var page: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case filters

            case appliedFilters = "applied_filters"

            case items

            case page
        }

        public init(appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, items: [ShipmentItem]? = nil, page: [String: Any]? = nil) {
            self.filters = filters

            self.appliedFilters = appliedFilters

            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                filters = try container.decode([FiltersInfo].self, forKey: .filters)

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

            try? container.encodeIfPresent(filters, forKey: .filters)

            try? container.encodeIfPresent(appliedFilters, forKey: .appliedFilters)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
