

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DisplayMeta
         Used By: Cart
     */

    class DisplayMeta: Codable {
        public var description: String?

        public var title: String?

        public var subtitle: String?

        public var auto: DisplayMetaDict?

        public var apply: DisplayMetaDict?

        public var remove: DisplayMetaDict?

        public enum CodingKeys: String, CodingKey {
            case description

            case title

            case subtitle

            case auto

            case apply

            case remove
        }

        public init(apply: DisplayMetaDict? = nil, auto: DisplayMetaDict? = nil, description: String? = nil, remove: DisplayMetaDict? = nil, subtitle: String? = nil, title: String? = nil) {
            self.description = description

            self.title = title

            self.subtitle = subtitle

            self.auto = auto

            self.apply = apply

            self.remove = remove
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
                title = try container.decode(String.self, forKey: .title)

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
                auto = try container.decode(DisplayMetaDict.self, forKey: .auto)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apply = try container.decode(DisplayMetaDict.self, forKey: .apply)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                remove = try container.decode(DisplayMetaDict.self, forKey: .remove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(auto, forKey: .auto)

            try? container.encodeIfPresent(apply, forKey: .apply)

            try? container.encodeIfPresent(remove, forKey: .remove)
        }
    }
}
