

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ReAssignStoreRequest
         Used By: Serviceability
     */

    class ReAssignStoreRequest: Codable {
        public var ignoredLocations: [String]

        public var toPincode: String

        public var identifier: String

        public var articles: [[String: Any]]

        public var configuration: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case ignoredLocations = "ignored_locations"

            case toPincode = "to_pincode"

            case identifier

            case articles

            case configuration
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.ignoredLocations = ignoredLocations

            self.toPincode = toPincode

            self.identifier = identifier

            self.articles = articles

            self.configuration = configuration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            configuration = try container.decode([String: Any].self, forKey: .configuration)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ReAssignStoreRequest
         Used By: Serviceability
     */

    class ReAssignStoreRequest: Codable {
        public var ignoredLocations: [String]

        public var toPincode: String

        public var identifier: String

        public var articles: [[String: Any]]

        public var configuration: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case ignoredLocations = "ignored_locations"

            case toPincode = "to_pincode"

            case identifier

            case articles

            case configuration
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.ignoredLocations = ignoredLocations

            self.toPincode = toPincode

            self.identifier = identifier

            self.articles = articles

            self.configuration = configuration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            configuration = try container.decode([String: Any].self, forKey: .configuration)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }
}
