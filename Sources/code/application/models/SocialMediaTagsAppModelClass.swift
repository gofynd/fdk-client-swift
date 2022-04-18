import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: SocialMediaTags
         Used By: Share
     */
    class SocialMediaTags: Codable {
        public var title: String?

        public var description: String?

        public var image: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case description

            case image
        }

        public init(description: String?, image: String?, title: String?) {
            self.title = title

            self.description = description

            self.image = image
        }

        public func duplicate() -> SocialMediaTags {
            let dict = self.dictionary!
            let copy = SocialMediaTags(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode(String.self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(image, forKey: .image)
        }
    }
}
