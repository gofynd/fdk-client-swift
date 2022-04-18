import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CommonJs
         Used By: Theme
     */

    class CommonJs: Codable {
        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case link
        }

        public init(link: String?) {
            self.link = link
        }

        public func duplicate() -> CommonJs {
            let dict = self.dictionary!
            let copy = CommonJs(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }
}
