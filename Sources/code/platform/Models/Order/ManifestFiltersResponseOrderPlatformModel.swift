

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestFiltersResponse
         Used By: Order
     */

    class ManifestFiltersResponse: Codable {
        public var globalFilter: [FiltersInfo1]?

        public var advanceFilter: [FiltersInfo1]?

        public enum CodingKeys: String, CodingKey {
            case globalFilter = "global_filter"

            case advanceFilter = "advance_filter"
        }

        public init(advanceFilter: [FiltersInfo1]? = nil, globalFilter: [FiltersInfo1]? = nil) {
            self.globalFilter = globalFilter

            self.advanceFilter = advanceFilter
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalFilter = try container.decode([FiltersInfo1].self, forKey: .globalFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                advanceFilter = try container.decode([FiltersInfo1].self, forKey: .advanceFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalFilter, forKey: .globalFilter)

            try? container.encodeIfPresent(advanceFilter, forKey: .advanceFilter)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestFiltersResponse
         Used By: Order
     */

    class ManifestFiltersResponse: Codable {
        public var globalFilter: [FiltersInfo1]?

        public var advanceFilter: [FiltersInfo1]?

        public enum CodingKeys: String, CodingKey {
            case globalFilter = "global_filter"

            case advanceFilter = "advance_filter"
        }

        public init(advanceFilter: [FiltersInfo1]? = nil, globalFilter: [FiltersInfo1]? = nil) {
            self.globalFilter = globalFilter

            self.advanceFilter = advanceFilter
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalFilter = try container.decode([FiltersInfo1].self, forKey: .globalFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                advanceFilter = try container.decode([FiltersInfo1].self, forKey: .advanceFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(globalFilter, forKey: .globalFilter)

            try? container.encodeIfPresent(advanceFilter, forKey: .advanceFilter)
        }
    }
}
