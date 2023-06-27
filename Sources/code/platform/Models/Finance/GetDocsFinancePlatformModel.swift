

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetDocs
         Used By: Finance
     */

    class GetDocs: Codable {
        public var items: [[String: Any]]?

        public var docs: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case items

            case docs
        }

        public init(docs: [[String: Any]]? = nil, items: [[String: Any]]? = nil) {
            self.items = items

            self.docs = docs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                docs = try container.decode([[String: Any]].self, forKey: .docs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(docs, forKey: .docs)
        }
    }
}
