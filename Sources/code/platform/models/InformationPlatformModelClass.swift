

import Foundation
public extension PlatformClient {
    /*
         Model: Information
         Used By: Theme
     */

    class Information: Codable {
        public var images: Images?

        public var features: [String]?

        public var name: String?

        public var description: String?

        public enum CodingKeys: String, CodingKey {
            case images

            case features

            case name

            case description
        }

        public init(description: String? = nil, features: [String]? = nil, images: Images? = nil, name: String? = nil) {
            self.images = images

            self.features = features

            self.name = name

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                images = try container.decode(Images.self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                features = try container.decode([String].self, forKey: .features)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(features, forKey: .features)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
