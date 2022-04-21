

import Foundation
public extension PlatformClient {
    /*
         Model: Urls
         Used By: FileStorage
     */

    class Urls: Codable {
        public var url: String

        public var signedUrl: String

        public var expiry: Int

        public enum CodingKeys: String, CodingKey {
            case url

            case signedUrl = "signed_url"

            case expiry
        }

        public init(expiry: Int, signedUrl: String, url: String) {
            self.url = url

            self.signedUrl = signedUrl

            self.expiry = expiry
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            signedUrl = try container.decode(String.self, forKey: .signedUrl)

            expiry = try container.decode(Int.self, forKey: .expiry)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(signedUrl, forKey: .signedUrl)

            try? container.encodeIfPresent(expiry, forKey: .expiry)
        }
    }
}
