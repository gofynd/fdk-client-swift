

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreRequest
         Used By: Logistic
     */
    class ReAssignStoreRequest: Codable {
        public var toPincode: String

        public var identifier: String

        public var articles: [[String: Any]]

        public var ignoredLocations: [String]

        public var configuration: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case identifier

            case articles

            case ignoredLocations = "ignored_locations"

            case configuration
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.toPincode = toPincode

            self.identifier = identifier

            self.articles = articles

            self.ignoredLocations = ignoredLocations

            self.configuration = configuration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            configuration = try container.decode([String: Any].self, forKey: .configuration)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }
}
