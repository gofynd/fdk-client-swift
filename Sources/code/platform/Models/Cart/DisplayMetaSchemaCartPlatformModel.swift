

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DisplayMetaSchema
         Used By: Cart
     */

    class DisplayMetaSchema: Codable {
        public var description: String?

        public var remove: DisplayMetaDictSchema?

        public var subtitle: String?

        public var title: String?

        public var apply: DisplayMetaDictSchema?

        public var auto: DisplayMetaDictSchema?

        public enum CodingKeys: String, CodingKey {
            case description

            case remove

            case subtitle

            case title

            case apply

            case auto
        }

        public init(apply: DisplayMetaDictSchema? = nil, auto: DisplayMetaDictSchema? = nil, description: String? = nil, remove: DisplayMetaDictSchema? = nil, subtitle: String? = nil, title: String? = nil) {
            self.description = description

            self.remove = remove

            self.subtitle = subtitle

            self.title = title

            self.apply = apply

            self.auto = auto
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
                remove = try container.decode(DisplayMetaDictSchema.self, forKey: .remove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtitle = try container.decode(String.self, forKey: .subtitle)

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

            do {
                apply = try container.decode(DisplayMetaDictSchema.self, forKey: .apply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auto = try container.decode(DisplayMetaDictSchema.self, forKey: .auto)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(remove, forKey: .remove)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(apply, forKey: .apply)

            try? container.encodeIfPresent(auto, forKey: .auto)
        }
    }
}
