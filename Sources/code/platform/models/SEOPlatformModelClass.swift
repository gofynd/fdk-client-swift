import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SEO
         Used By: Content
     */

    class SEO: Codable {
        public var description: String?

        public var image: SEOImage?

        public var title: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case image

            case title
        }

        public init(description: String?, image: SEOImage?, title: String?) {
            self.description = description

            self.image = image

            self.title = title
        }

        public func duplicate() -> SEO {
            let dict = self.dictionary!
            let copy = SEO(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(SEOImage.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
