

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Media3
         Used By: Catalog
     */

    class Media3: Codable {
        public var portrait: String

        public var landscape: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape

            case logo
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.portrait = portrait

            self.landscape = landscape

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(String.self, forKey: .portrait)

            landscape = try container.decode(String.self, forKey: .landscape)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Media3
         Used By: Catalog
     */

    class Media3: Codable {
        public var portrait: String

        public var landscape: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape

            case logo
        }

        public init(landscape: String, logo: String, portrait: String) {
            self.portrait = portrait

            self.landscape = landscape

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            portrait = try container.decode(String.self, forKey: .portrait)

            landscape = try container.decode(String.self, forKey: .landscape)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
