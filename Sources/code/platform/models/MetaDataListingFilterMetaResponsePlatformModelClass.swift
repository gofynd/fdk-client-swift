

import Foundation
public extension PlatformClient {
    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var display: String?

        public var key: String?

        public var units: [[String: Any]]?

        public var filterTypes: [String]?

        public enum CodingKeys: String, CodingKey {
            case display

            case key

            case units

            case filterTypes = "filter_types"
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            self.display = display

            self.key = key

            self.units = units

            self.filterTypes = filterTypes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                units = try container.decode([[String: Any]].self, forKey: .units)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                filterTypes = try container.decode([String].self, forKey: .filterTypes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
        }
    }
}
