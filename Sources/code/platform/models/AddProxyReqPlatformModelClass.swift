

import Foundation
public extension PlatformClient {
    /*
         Model: AddProxyReq
         Used By: Partner
     */

    class AddProxyReq: Codable {
        public var attachedPath: String?

        public var proxyUrl: String?

        public enum CodingKeys: String, CodingKey {
            case attachedPath = "attached_path"

            case proxyUrl = "proxy_url"
        }

        public init(attachedPath: String? = nil, proxyUrl: String? = nil) {
            self.attachedPath = attachedPath

            self.proxyUrl = proxyUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attachedPath = try container.decode(String.self, forKey: .attachedPath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                proxyUrl = try container.decode(String.self, forKey: .proxyUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attachedPath, forKey: .attachedPath)

            try? container.encodeIfPresent(proxyUrl, forKey: .proxyUrl)
        }
    }
}
