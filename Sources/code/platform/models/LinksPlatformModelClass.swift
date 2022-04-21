

import Foundation
public extension PlatformClient {
    /*
         Model: Links
         Used By: Configuration
     */

    class Links: Codable {
        public var title: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case link
        }

        public init(link: String? = nil, title: String? = nil) {
            self.title = title

            self.link = link
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }
}
