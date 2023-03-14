

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: CategoryBanner
         Used By: Catalog
     */
    class CategoryBanner: Codable {
        public var portrait: Media

        public var landscape: Media

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: Media, portrait: Media) {
            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(Media.self, forKey: .portrait)

            landscape = try container.decode(Media.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
