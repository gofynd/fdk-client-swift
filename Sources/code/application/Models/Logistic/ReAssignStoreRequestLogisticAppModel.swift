

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreRequest
         Used By: Logistic
     */
    class ReAssignStoreRequest: Codable {
        public var toPincode: String

        public var ignoredLocations: [Int]

        public var identifier: String

        public var configuration: [String: Any]

        public var articles: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case ignoredLocations = "ignored_locations"

            case identifier

            case configuration

            case articles
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [Int], toPincode: String) {
            self.toPincode = toPincode

            self.ignoredLocations = ignoredLocations

            self.identifier = identifier

            self.configuration = configuration

            self.articles = articles
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            ignoredLocations = try container.decode([Int].self, forKey: .ignoredLocations)

            identifier = try container.decode(String.self, forKey: .identifier)

            configuration = try container.decode([String: Any].self, forKey: .configuration)

            articles = try container.decode([[String: Any]].self, forKey: .articles)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(articles, forKey: .articles)
        }
    }
}
