

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ReAssignStoreResponse
         Used By: Serviceability
     */

    class ReAssignStoreResponse: Codable {
        public var toPincode: String

        public var articles: [[String: Any]]?

        public var error: [String: Any]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case articles

            case error

            case success
        }

        public init(articles: [[String: Any]]? = nil, error: [String: Any], success: Bool, toPincode: String) {
            self.toPincode = toPincode

            self.articles = articles

            self.error = error

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode([String: Any].self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ReAssignStoreResponse
         Used By: Serviceability
     */

    class ReAssignStoreResponse: Codable {
        public var toPincode: String

        public var articles: [[String: Any]]?

        public var error: [String: Any]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case articles

            case error

            case success
        }

        public init(articles: [[String: Any]]? = nil, error: [String: Any], success: Bool, toPincode: String) {
            self.toPincode = toPincode

            self.articles = articles

            self.error = error

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode([String: Any].self, forKey: .error)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
