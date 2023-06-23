

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: ReAssignStoreResponse
         Used By: Logistic
     */
    class ReAssignStoreResponse: Codable {
        public var toPincode: String

        public var success: Bool

        public var articles: [[String: Any]]?

        public var error: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case toPincode = "to_pincode"

            case success

            case articles

            case error
        }

        public init(articles: [[String: Any]]? = nil, error: [String: Any], success: Bool, toPincode: String) {
            self.toPincode = toPincode

            self.success = success

            self.articles = articles

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                articles = try container.decode([[String: Any]].self, forKey: .articles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode([String: Any].self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(articles, forKey: .articles)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
