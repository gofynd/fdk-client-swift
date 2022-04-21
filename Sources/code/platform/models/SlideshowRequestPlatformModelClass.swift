

import Foundation
public extension PlatformClient {
    /*
         Model: SlideshowRequest
         Used By: Content
     */

    class SlideshowRequest: Codable {
        public var slug: String?

        public var platform: String?

        public var configuration: ConfigurationSchema?

        public var media: SlideshowMedia?

        public var active: Bool?

        public enum CodingKeys: String, CodingKey {
            case slug

            case platform

            case configuration

            case media

            case active
        }

        public init(active: Bool? = nil, configuration: ConfigurationSchema? = nil, media: SlideshowMedia? = nil, platform: String? = nil, slug: String? = nil) {
            self.slug = slug

            self.platform = platform

            self.configuration = configuration

            self.media = media

            self.active = active
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                configuration = try container.decode(ConfigurationSchema.self, forKey: .configuration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode(SlideshowMedia.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(configuration, forKey: .configuration)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(active, forKey: .active)
        }
    }
}
