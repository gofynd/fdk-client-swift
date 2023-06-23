

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: Variation
         Used By: Theme
     */
    class Variation: Codable {
        public var name: String?

        public var color: String?

        public var demoUrl: String?

        public var images: MarketplaceThemeImages?

        public enum CodingKeys: String, CodingKey {
            case name

            case color

            case demoUrl = "demo_url"

            case images
        }

        public init(color: String? = nil, demoUrl: String? = nil, images: MarketplaceThemeImages? = nil, name: String? = nil) {
            self.name = name

            self.color = color

            self.demoUrl = demoUrl

            self.images = images
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
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                demoUrl = try container.decode(String.self, forKey: .demoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode(MarketplaceThemeImages.self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(demoUrl, forKey: .demoUrl)

            try? container.encodeIfPresent(images, forKey: .images)
        }
    }
}
