

import Foundation
public extension ApplicationClient {
    /*
         Model: GetShareCartLinkResponse
         Used By: Cart
     */
    class GetShareCartLinkResponse: Codable {
        public var shareUrl: String?

        public var token: String?

        public enum CodingKeys: String, CodingKey {
            case shareUrl = "share_url"

            case token
        }

        public init(shareUrl: String? = nil, token: String? = nil) {
            self.shareUrl = shareUrl

            self.token = token
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shareUrl = try container.decode(String.self, forKey: .shareUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shareUrl, forKey: .shareUrl)

            try? container.encodeIfPresent(token, forKey: .token)
        }
    }
}
