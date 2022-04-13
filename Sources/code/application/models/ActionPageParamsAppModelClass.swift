import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: ActionPageParams
         Used By: Rewards
     */
    class ActionPageParams: Codable {
        public var slug: [String]?

        public enum CodingKeys: String, CodingKey {
            case slug
        }

        public init(slug: [String]?) {
            self.slug = slug
        }

        public func duplicate() -> ActionPageParams {
            let dict = self.dictionary!
            let copy = ActionPageParams(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode([String].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
