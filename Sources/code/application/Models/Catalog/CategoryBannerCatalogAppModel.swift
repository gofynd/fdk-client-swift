

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: CategoryBanner
         Used By: Catalog
     */
    class CategoryBanner: Codable {
        public var landscape: Media

        public var portrait: Media

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: Media, portrait: Media) {
            self.landscape = landscape

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(Media.self, forKey: .landscape)

            portrait = try container.decode(Media.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}
