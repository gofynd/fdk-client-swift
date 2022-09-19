

import Foundation
public extension PlatformClient {
    /*
         Model: Logo
         Used By: Catalog
     */

    class Logo: Codable {
        public var secureUrl: String?

        public var url: String?

        public var aspectRatioF: Int?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case secureUrl = "secure_url"

            case url

            case aspectRatioF = "aspect_ratio_f"

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String? = nil, aspectRatioF: Int? = nil, secureUrl: String? = nil, url: String? = nil) {
            self.secureUrl = secureUrl

            self.url = url

            self.aspectRatioF = aspectRatioF

            self.aspectRatio = aspectRatio
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatioF = try container.decode(Int.self, forKey: .aspectRatioF)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }
}
