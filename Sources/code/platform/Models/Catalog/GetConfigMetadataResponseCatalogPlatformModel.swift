

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetConfigMetadataResponse
         Used By: Catalog
     */

    class GetConfigMetadataResponse: Codable {
        public var data: [[String: Any]]

        public var condition: [[String: Any]]?

        public var values: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case data

            case condition

            case values
        }

        public init(condition: [[String: Any]]? = nil, data: [[String: Any]], values: [[String: Any]]? = nil) {
            self.data = data

            self.condition = condition

            self.values = values
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([[String: Any]].self, forKey: .data)

            do {
                condition = try container.decode([[String: Any]].self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(values, forKey: .values)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetConfigMetadataResponse
         Used By: Catalog
     */

    class GetConfigMetadataResponse: Codable {
        public var data: [[String: Any]]

        public var condition: [[String: Any]]?

        public var values: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case data

            case condition

            case values
        }

        public init(condition: [[String: Any]]? = nil, data: [[String: Any]], values: [[String: Any]]? = nil) {
            self.data = data

            self.condition = condition

            self.values = values
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([[String: Any]].self, forKey: .data)

            do {
                condition = try container.decode([[String: Any]].self, forKey: .condition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                values = try container.decode([[String: Any]].self, forKey: .values)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(condition, forKey: .condition)

            try? container.encodeIfPresent(values, forKey: .values)
        }
    }
}
