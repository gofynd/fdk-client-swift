

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var childs: [Child]?

        public var name: String

        public var uid: Int

        public var slug: String

        public var action: ProductListingAction

        public var banners: CategoryBanner

        public enum CodingKeys: String, CodingKey {
            case childs

            case name

            case uid

            case slug

            case action

            case banners
        }

        public init(action: ProductListingAction, banners: CategoryBanner, childs: [Child]? = nil, name: String, slug: String, uid: Int) {
            self.childs = childs

            self.name = name

            self.uid = uid

            self.slug = slug

            self.action = action

            self.banners = banners
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(Int.self, forKey: .uid)

            slug = try container.decode(String.self, forKey: .slug)

            action = try container.decode(ProductListingAction.self, forKey: .action)

            banners = try container.decode(CategoryBanner.self, forKey: .banners)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(banners, forKey: .banners)
        }
    }
}
