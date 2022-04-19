import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: TatReqProductArticles
         Used By: Logistic
     */
    class TatReqProductArticles: Codable {
        public var category: LogisticRequestCategory?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: LogisticRequestCategory? = nil) {
            self.category = category
        }

        public func duplicate() -> TatReqProductArticles {
            let dict = self.dictionary!
            let copy = TatReqProductArticles(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(LogisticRequestCategory.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
