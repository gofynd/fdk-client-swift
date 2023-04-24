

import Foundation
public extension PlatformClient {
    /*
         Model: Media2
         Used By: Catalog
     */

    class Media2: Codable {
        public var landscape: String

        public var portrait: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait

            case logo
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.landscape = landscape

            self.portrait = portrait

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(String.self, forKey: .landscape)

            portrait = try container.decode(String.self, forKey: .portrait)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
