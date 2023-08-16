

import Foundation

public extension PlatformClient.Webhook {
    /*
         Model: CdnObject
         Used By: Webhook
     */

    class CdnObject: Codable {
        public var urls: [Url]?

        public enum CodingKeys: String, CodingKey {
            case urls
        }

        public init(urls: [Url]? = nil) {
            self.urls = urls
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                urls = try container.decode([Url].self, forKey: .urls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(urls, forKey: .urls)
        }
    }
}
