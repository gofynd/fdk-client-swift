

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionUpdateBanner
         Used By: Catalog
     */

    class CollectionUpdateBanner: Codable {
        public var landscape: CollectionUpdateImage

        public var portrait: CollectionUpdateImage

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: CollectionUpdateImage, portrait: CollectionUpdateImage) {
            self.landscape = landscape

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(CollectionUpdateImage.self, forKey: .landscape)

            portrait = try container.decode(CollectionUpdateImage.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionUpdateBanner
         Used By: Catalog
     */

    class CollectionUpdateBanner: Codable {
        public var landscape: CollectionUpdateImage

        public var portrait: CollectionUpdateImage

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: CollectionUpdateImage, portrait: CollectionUpdateImage) {
            self.landscape = landscape

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(CollectionUpdateImage.self, forKey: .landscape)

            portrait = try container.decode(CollectionUpdateImage.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}
