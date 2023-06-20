

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var logo: String

        public var portrait: String

        public var landscape: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case portrait

            case landscape
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.logo = logo

            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            portrait = try container.decode(String.self, forKey: .portrait)

            landscape = try container.decode(String.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var logo: String

        public var portrait: String

        public var landscape: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case portrait

            case landscape
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.logo = logo

            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            portrait = try container.decode(String.self, forKey: .portrait)

            landscape = try container.decode(String.self, forKey: .landscape)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
