import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var units: [[String: Any]]?

        public var key: String?

        public var display: String?

        public var filterTypes: [String]?

        public enum CodingKeys: String, CodingKey {
            case units

            case key

            case display

            case filterTypes = "filter_types"
        }

        public init(display: String?, filterTypes: [String]?, key: String?, units: [[String: Any]]?) {
            self.units = units

            self.key = key

            self.display = display

            self.filterTypes = filterTypes
        }

        public func duplicate() -> MetaDataListingFilterMetaResponse {
            let dict = self.dictionary!
            let copy = MetaDataListingFilterMetaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                units = try container.decode([[String: Any]].self, forKey: .units)

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
                display = try container.decode(String.self, forKey: .display)

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

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
        }
    }
}
