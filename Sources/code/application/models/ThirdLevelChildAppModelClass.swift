

import Foundation
public extension ApplicationClient {
    /*
         Model: ThirdLevelChild
         Used By: Catalog
     */
    class ThirdLevelChild: Codable {
        public var uid: Int?

        public var action: ProductListingAction?

        public var name: String?

        public var banners: ImageUrls?

        public var customJson: [String: Any]?

        public var slug: String?

        public var childs: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case action

            case name

            case banners

            case customJson = "_custom_json"

            case slug

            case childs
        }

        public init(action: ProductListingAction? = nil, banners: ImageUrls? = nil, childs: [[String: Any]]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.action = action

            self.name = name

            self.banners = banners

            self.customJson = customJson

            self.slug = slug

            self.childs = childs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childs = try container.decode([[String: Any]].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(childs, forKey: .childs)
        }
    }
}
