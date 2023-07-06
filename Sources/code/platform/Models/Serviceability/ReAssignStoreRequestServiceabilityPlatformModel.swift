

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ReAssignStoreRequest
         Used By: Serviceability
     */

    class ReAssignStoreRequest: Codable {
        public var articles: [[String: Any]]

        public var identifier: String

        public var toPincode: String

        public var configuration: [String: Any]

        public var ignoredLocations: [String]

        public enum CodingKeys: String, CodingKey {
            case articles

            case identifier

            case toPincode = "to_pincode"

            case configuration

            case ignoredLocations = "ignored_locations"
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.articles = articles

            self.identifier = identifier

            self.toPincode = toPincode

            self.configuration = configuration

            self.ignoredLocations = ignoredLocations
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            identifier = try container.decode(String.self, forKey: .identifier)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ReAssignStoreRequest
         Used By: Serviceability
     */

    class ReAssignStoreRequest: Codable {
        public var articles: [[String: Any]]

        public var identifier: String

        public var toPincode: String

        public var configuration: [String: Any]

        public var ignoredLocations: [String]

        public enum CodingKeys: String, CodingKey {
            case articles

            case identifier

            case toPincode = "to_pincode"

            case configuration

            case ignoredLocations = "ignored_locations"
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.articles = articles

            self.identifier = identifier

            self.toPincode = toPincode

            self.configuration = configuration

            self.ignoredLocations = ignoredLocations
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            identifier = try container.decode(String.self, forKey: .identifier)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)
        }
    }
}
