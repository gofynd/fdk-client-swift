

import Foundation
public extension PlatformClient {
    /*
         Model: Media2
         Used By: Catalog
     */

    class Media2: Codable {
        public var logo: String

        public var landscape: String

        public var portrait: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case landscape

            case portrait
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.logo = logo

            self.landscape = landscape

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            landscape = try container.decode(String.self, forKey: .landscape)

            portrait = try container.decode(String.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}
