

import Foundation
public extension PlatformClient {
    /*
         Model: Child
         Used By: Catalog
     */

    class Child: Codable {
        public var slug: String?

        public var childs: [SecondLevelChild]?

        public var banners: ImageUrls?

        public var action: Action?

        public var customJson: [String: Any]?

        public var uid: Int?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case childs

            case banners

            case action

            case customJson = "_custom_json"

            case uid

            case name
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, childs: [SecondLevelChild]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.childs = childs

            self.banners = banners

            self.action = action

            self.customJson = customJson

            self.uid = uid

            self.name = name
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
                childs = try container.decode([SecondLevelChild].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(Action.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
