

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ReAssignStoreResponse
         Used By: Serviceability
     */

    class ReAssignStoreResponse: Codable {
        public var success: Bool

        public var articles: [[String: Any]]?

        public var error: [String: Any]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case success

            case articles

            case error

            case toPincode = "to_pincode"
        }

        public init(articles: [[String: Any]]? = nil, error: [String: Any], success: Bool, toPincode: String) {
            self.success = success

            self.articles = articles

            self.error = error

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode([String: Any].self, forKey: .error)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ReAssignStoreResponse
         Used By: Serviceability
     */

    class ReAssignStoreResponse: Codable {
        public var success: Bool

        public var articles: [[String: Any]]?

        public var error: [String: Any]

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case success

            case articles

            case error

            case toPincode = "to_pincode"
        }

        public init(articles: [[String: Any]]? = nil, error: [String: Any], success: Bool, toPincode: String) {
            self.success = success

            self.articles = articles

            self.error = error

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode([String: Any].self, forKey: .error)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}
