

import Foundation
public extension PlatformClient {
    /*
         Model: Media2
         Used By: Catalog
     */

    class Media2: Codable {
        public var portrait: String

        public var logo: String

        public var landscape: String

        public enum CodingKeys: String, CodingKey {
            case portrait

            case logo

            case landscape
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.portrait = portrait

            self.logo = logo

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(String.self, forKey: .portrait)

            logo = try container.decode(String.self, forKey: .logo)

            landscape = try container.decode(String.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
