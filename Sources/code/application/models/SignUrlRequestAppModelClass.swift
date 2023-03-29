

import Foundation
public extension ApplicationClient {
    /*
         Model: SignUrlRequest
         Used By: FileStorage
     */
    class SignUrlRequest: Codable {
        public var expiry: Int

        public var urls: [String]

        public enum CodingKeys: String, CodingKey {
            case expiry

            case urls
        }

        public init(expiry: Int, urls: [String]) {
            self.expiry = expiry

            self.urls = urls
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiry = try container.decode(Int.self, forKey: .expiry)

            urls = try container.decode([String].self, forKey: .urls)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(urls, forKey: .urls)
        }
    }
}
