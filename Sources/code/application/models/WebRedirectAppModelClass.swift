

import Foundation
public extension ApplicationClient {
    /*
         Model: WebRedirect
         Used By: Share
     */
    class WebRedirect: Codable {
        public var link: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case link

            case type
        }

        public init(link: String? = nil, type: String? = nil) {
            self.link = link

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
