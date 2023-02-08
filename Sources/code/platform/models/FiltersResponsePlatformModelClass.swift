

import Foundation
public extension PlatformClient {
    /*
         Model: FiltersResponse
         Used By: Order
     */

    class FiltersResponse: Codable {
        public var globalFilter: [FiltersInfo]?

        public var advanceFilter: AdvanceFilterInfo?

        public enum CodingKeys: String, CodingKey {
            case globalFilter = "global_filter"

            case advanceFilter = "advance_filter"
        }

        public init(advanceFilter: AdvanceFilterInfo? = nil, globalFilter: [FiltersInfo]? = nil) {
            self.globalFilter = globalFilter

            self.advanceFilter = advanceFilter
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                globalFilter = try container.decode([FiltersInfo].self, forKey: .globalFilter)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                advanceFilter = try container.decode(AdvanceFilterInfo.self, forKey: .advanceFilter)

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
