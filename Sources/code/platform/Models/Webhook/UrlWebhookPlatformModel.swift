

import Foundation

public extension PlatformClient.Webhook {
    /*
         Model: Url
         Used By: Webhook
     */

    class Url: Codable {
        public var url: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case name
        }

        public init(name: String? = nil, url: String? = nil) {
            self.url = url

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
