import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ArticleAssignmentV2
         Used By: Catalog
     */
    class ArticleAssignmentV2: Codable {
        public var level: String?

        public var strategy: String?

        public enum CodingKeys: String, CodingKey {
            case level

            case strategy
        }

        public init(level: String? = nil, strategy: String? = nil) {
            self.level = level

            self.strategy = strategy
        }

        public func duplicate() -> ArticleAssignmentV2 {
            let dict = self.dictionary!
            let copy = ArticleAssignmentV2(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(strategy, forKey: .strategy)
        }
    }
}
