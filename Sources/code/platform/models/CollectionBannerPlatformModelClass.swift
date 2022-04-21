

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionBanner
         Used By: Catalog
     */

    class CollectionBanner: Codable {
        public var portrait: CollectionImage

        public var landscape: CollectionImage

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: CollectionImage, portrait: CollectionImage) {
            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(CollectionImage.self, forKey: .portrait)

            landscape = try container.decode(CollectionImage.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
