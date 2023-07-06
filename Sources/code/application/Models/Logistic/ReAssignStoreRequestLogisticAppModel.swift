

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreRequest
         Used By: Logistic
     */
    class ReAssignStoreRequest: Codable {
        public var articles: [[String: Any]]

        public var ignoredLocations: [Int]

        public var toPincode: String

        public var identifier: String

        public var configuration: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case articles

            case ignoredLocations = "ignored_locations"

            case toPincode = "to_pincode"

            case identifier

            case configuration
        }

        public init(articles: [[String: Any]], configuration: [String: Any], identifier: String, ignoredLocations: [Int], toPincode: String) {
            self.articles = articles

            self.ignoredLocations = ignoredLocations

            self.toPincode = toPincode

            self.identifier = identifier

            self.configuration = configuration
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            articles = try container.decode([[String: Any]].self, forKey: .articles)

            ignoredLocations = try container.decode([Int].self, forKey: .ignoredLocations)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            configuration = try container.decode([String: Any].self, forKey: .configuration)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(ignoredLocations, forKey: .ignoredLocations)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(configuration, forKey: .configuration)
        }
    }
}
