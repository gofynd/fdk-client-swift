

import Foundation
public extension PlatformClient {
    /*
         Model: CDN
         Used By: FileStorage
     */

    class CDN: Codable {
        public var url: String

        public var absoluteUrl: String?

        public var relativeUrl: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case absoluteUrl = "absolute_url"

            case relativeUrl = "relative_url"
        }

        public init(absoluteUrl: String? = nil, relativeUrl: String? = nil, url: String) {
            self.url = url

            self.absoluteUrl = absoluteUrl

            self.relativeUrl = relativeUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            do {
                absoluteUrl = try container.decode(String.self, forKey: .absoluteUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                relativeUrl = try container.decode(String.self, forKey: .relativeUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(absoluteUrl, forKey: .absoluteUrl)

            try? container.encodeIfPresent(relativeUrl, forKey: .relativeUrl)
        }
    }
}
