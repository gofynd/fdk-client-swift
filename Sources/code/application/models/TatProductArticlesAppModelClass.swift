

import Foundation
public extension ApplicationClient {
    /*
         Model: TatProductArticles
         Used By: Logistic
     */
    class TatProductArticles: Codable {
        public var error: [String: Any]?

        public var category: LogisticResponseCategory?

        public var promise: LogisticPromise?

        public enum CodingKeys: String, CodingKey {
            case error

            case category

            case promise
        }

        public init(category: LogisticResponseCategory? = nil, error: [String: Any]? = nil, promise: LogisticPromise? = nil) {
            self.error = error

            self.category = category

            self.promise = promise
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode([String: Any].self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                category = try container.decode(LogisticResponseCategory.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promise = try container.decode(LogisticPromise.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(category, forKey: .category)

            try? container.encodeIfPresent(promise, forKey: .promise)
        }
    }
}
