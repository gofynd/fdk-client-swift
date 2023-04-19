

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetConfigMetadataResponse
         Used By: Catalog
     */

    class GetConfigMetadataResponse: Codable {
        public var values: [[String: Any]]?

        public var condition: [[String: Any]]?

        public var data: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case values

            case condition

            case data
        }

        public init(condition: [[String: Any]]? = nil, data: [[String: Any]], values: [[String: Any]]? = nil) {
            self.values = values

            self.condition = condition

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                condition = try container.decode([[String: Any]].self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            data = try container.decode([[String: Any]].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetConfigMetadataResponse
         Used By: Catalog
     */

    class GetConfigMetadataResponse: Codable {
        public var values: [[String: Any]]?

        public var condition: [[String: Any]]?

        public var data: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case values

            case condition

            case data
        }

        public init(condition: [[String: Any]]? = nil, data: [[String: Any]], values: [[String: Any]]? = nil) {
            self.values = values

            self.condition = condition

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                condition = try container.decode([[String: Any]].self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            data = try container.decode([[String: Any]].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(values, forKey: .values)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
