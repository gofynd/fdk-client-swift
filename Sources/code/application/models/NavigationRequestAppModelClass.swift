

import Foundation
public extension ApplicationClient {
    /*
         Model: NavigationRequest
         Used By: Content
     */
    class NavigationRequest: Codable {
        public var name: String?

        public var slug: String?

        public var platform: [String]?

        public var orientation: Orientation?

        public var navigation: [NavigationReference]?

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case platform

            case orientation

            case navigation
        }

        public init(name: String? = nil, navigation: [NavigationReference]? = nil, orientation: Orientation? = nil, platform: [String]? = nil, slug: String? = nil) {
            self.name = name

            self.slug = slug

            self.platform = platform

            self.orientation = orientation

            self.navigation = navigation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode([String].self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orientation = try container.decode(Orientation.self, forKey: .orientation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                navigation = try container.decode([NavigationReference].self, forKey: .navigation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(navigation, forKey: .navigation)
        }
    }
}
