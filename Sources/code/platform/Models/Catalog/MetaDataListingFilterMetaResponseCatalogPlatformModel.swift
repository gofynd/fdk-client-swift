

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var units: [[String: Any]]?

        public var key: String?

        public var filterTypes: [String]?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case units

            case key

            case filterTypes = "filter_types"

            case display
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            self.units = units

            self.key = key

            self.filterTypes = filterTypes

            self.display = display
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
                filterTypes = try container.decode([String].self, forKey: .filterTypes)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var units: [[String: Any]]?

        public var key: String?

        public var filterTypes: [String]?

        public var display: String?

        public enum CodingKeys: String, CodingKey {
            case units

            case key

            case filterTypes = "filter_types"

            case display
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            self.units = units

            self.key = key

            self.filterTypes = filterTypes

            self.display = display
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
                filterTypes = try container.decode([String].self, forKey: .filterTypes)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
