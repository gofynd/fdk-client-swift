

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionImage
         Used By: Catalog
     */

    class CollectionImage: Codable {
        public var url: String

        public var aspectRatio: String

        public enum CodingKeys: String, CodingKey {
            case url

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String, url: String) {
            self.url = url

            self.aspectRatio = aspectRatio
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            aspectRatio = try container.decode(String.self, forKey: .aspectRatio)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }
}
