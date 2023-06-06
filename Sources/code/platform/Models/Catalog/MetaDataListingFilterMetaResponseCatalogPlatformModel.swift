

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: MetaDataListingFilterMetaResponse
         Used By: Catalog
     */

    class MetaDataListingFilterMetaResponse: Codable {
        public var units: [[String: Any]]?

        public var filterTypes: [String]?

        public var display: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case units

            case filterTypes = "filter_types"

            case display

            case key
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            self.units = units

            self.filterTypes = filterTypes

            self.display = display

            self.key = key
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

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)
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

        public var filterTypes: [String]?

        public var display: String?

        public var key: String?

        public enum CodingKeys: String, CodingKey {
            case units

            case filterTypes = "filter_types"

            case display

            case key
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            self.units = units

            self.filterTypes = filterTypes

            self.display = display

            self.key = key
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

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(units, forKey: .units)

            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
