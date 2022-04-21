

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleAssignmentRules
         Used By: Configuration
     */

    class ArticleAssignmentRules: Codable {
        public var storePriority: StorePriority?

        public enum CodingKeys: String, CodingKey {
            case storePriority = "store_priority"
        }

        public init(storePriority: StorePriority? = nil) {
            self.storePriority = storePriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storePriority = try container.decode(StorePriority.self, forKey: .storePriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
        }
    }
}
