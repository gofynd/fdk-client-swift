

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionUpdateBanner
         Used By: Catalog
     */

    class CollectionUpdateBanner: Codable {
        public var portrait: CollectionUpdateImage

        public var landscape: CollectionUpdateImage

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: CollectionUpdateImage, portrait: CollectionUpdateImage) {
            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(CollectionUpdateImage.self, forKey: .portrait)

            landscape = try container.decode(CollectionUpdateImage.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionUpdateBanner
         Used By: Catalog
     */

    class CollectionUpdateBanner: Codable {
        public var portrait: CollectionUpdateImage

        public var landscape: CollectionUpdateImage

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: CollectionUpdateImage, portrait: CollectionUpdateImage) {
            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(CollectionUpdateImage.self, forKey: .portrait)

            landscape = try container.decode(CollectionUpdateImage.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
