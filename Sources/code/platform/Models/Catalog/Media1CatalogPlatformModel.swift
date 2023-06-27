

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var landscape: String

        public var logo: String

        public var portrait: String

        public enum CodingKeys: String, CodingKey {
            case landscape

            case logo

            case portrait
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.landscape = landscape

            self.logo = logo

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(String.self, forKey: .landscape)

            logo = try container.decode(String.self, forKey: .logo)

            portrait = try container.decode(String.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var landscape: String

        public var logo: String

        public var portrait: String

        public enum CodingKeys: String, CodingKey {
            case landscape

            case logo

            case portrait
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.landscape = landscape

            self.logo = logo

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(String.self, forKey: .landscape)

            logo = try container.decode(String.self, forKey: .logo)

            portrait = try container.decode(String.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}
