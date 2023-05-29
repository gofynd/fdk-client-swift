

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ReAssignStoreRequest
         Used By: Serviceability
     */

    class ReAssignStoreRequest: Codable {
        public var configuration: [String: Any]

        public var identifier: String

        public var ignoredLocations: [String]

        public var articles: [[String: Any]]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case configuration

            case identifier

            case ignoredLocations = "ignored_locations"

            case articles

            case toPincode = "to_pincode"
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.configuration = configuration

            self.identifier = identifier

            self.ignoredLocations = ignoredLocations

            self.articles = articles

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            identifier = try container.decode(String.self, forKey: .identifier)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ReAssignStoreRequest
         Used By: Serviceability
     */

    class ReAssignStoreRequest: Codable {
        public var configuration: [String: Any]

        public var identifier: String

        public var ignoredLocations: [String]

        public var articles: [[String: Any]]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case configuration

            case identifier

            case ignoredLocations = "ignored_locations"

            case articles

            case toPincode = "to_pincode"
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.configuration = configuration

            self.identifier = identifier

            self.ignoredLocations = ignoredLocations

            self.articles = articles

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            identifier = try container.decode(String.self, forKey: .identifier)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}
