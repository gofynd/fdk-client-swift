import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ArticleAssignment1
         Used By: Catalog
     */

    class ArticleAssignment1: Codable {
        public var strategy: String?

        public var level: String?

        public enum CodingKeys: String, CodingKey {
            case strategy

            case level
        }

        public init(level: String?, strategy: String?) {
            self.strategy = strategy

            self.level = level
        }

        public func duplicate() -> ArticleAssignment1 {
            let dict = self.dictionary!
            let copy = ArticleAssignment1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategy, forKey: .strategy)

            try? container.encodeIfPresent(level, forKey: .level)
        }
    }
}
