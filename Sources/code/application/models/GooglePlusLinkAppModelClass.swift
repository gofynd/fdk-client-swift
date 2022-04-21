

import Foundation
public extension ApplicationClient {
    /*
         Model: GooglePlusLink
         Used By: Configuration
     */
    class GooglePlusLink: Codable {
        public var title: String?

        public var icon: String?

        public var link: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case icon

            case link
        }

        public init(icon: String? = nil, link: String? = nil, title: String? = nil) {
            self.title = title

            self.icon = icon

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
                icon = try container.decode(String.self, forKey: .icon)

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

            try? container.encodeIfPresent(icon, forKey: .icon)

            try? container.encodeIfPresent(link, forKey: .link)
        }
    }
}
