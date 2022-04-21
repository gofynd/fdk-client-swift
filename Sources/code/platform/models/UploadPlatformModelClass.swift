

import Foundation
public extension PlatformClient {
    /*
         Model: Upload
         Used By: FileStorage
     */

    class Upload: Codable {
        public var expiry: Int

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case expiry

            case url
        }

        public init(expiry: Int, url: String) {
            self.expiry = expiry

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiry = try container.decode(Int.self, forKey: .expiry)

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
