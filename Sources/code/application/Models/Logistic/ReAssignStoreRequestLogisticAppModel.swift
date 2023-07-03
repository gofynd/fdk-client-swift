

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreRequest
         Used By: Logistic
     */
    class ReAssignStoreRequest: Codable {
        public var identifier: String

        public var configuration: [String: Any]

        public var toPincode: String

        public var ignoredLocations: [String]

        public var articles: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case configuration

            case toPincode = "to_pincode"

            case ignoredLocations = "ignored_locations"

            case articles
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [String], toPincode: String) {
            self.identifier = identifier

            self.configuration = configuration

            self.toPincode = toPincode

            self.ignoredLocations = ignoredLocations

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            ignoredLocations = try container.decode([String].self, forKey: .ignoredLocations)

            articles = try container.decode([[String: Any]].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
