

import Foundation
public extension ApplicationClient {
    /*
         Model: ImageUrls
         Used By: Catalog
     */
    class ImageUrls: Codable {
        public var portrait: Media?

        public var landscape: Media?

        public enum CodingKeys: String, CodingKey {
            case portrait

            case landscape
        }

        public init(landscape: Media? = nil, portrait: Media? = nil) {
            self.portrait = portrait

            self.landscape = landscape
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                portrait = try container.decode(Media.self, forKey: .portrait)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landscape = try container.decode(Media.self, forKey: .landscape)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(portrait, forKey: .portrait)

            try? container.encodeIfPresent(landscape, forKey: .landscape)
        }
    }
}
