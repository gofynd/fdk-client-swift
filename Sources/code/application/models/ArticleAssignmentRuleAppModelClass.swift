

import Foundation
public extension ApplicationClient {
    /*
         Model: ArticleAssignmentRule
         Used By: Configuration
     */
    class ArticleAssignmentRule: Codable {
        public var storePriority: StorePriorityRule?

        public enum CodingKeys: String, CodingKey {
            case storePriority = "store_priority"
        }

        public init(storePriority: StorePriorityRule? = nil) {
            self.storePriority = storePriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storePriority = try container.decode(StorePriorityRule.self, forKey: .storePriority)

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
