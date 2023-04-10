

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var uid: Int

        public var banners: CategoryBanner

        public var action: ProductListingAction

        public var slug: String

        public var name: String

        public var childs: [Child]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case banners

            case action

            case slug

            case name

            case childs
        }

        public init(action: ProductListingAction, banners: CategoryBanner, childs: [Child]? = nil, name: String, slug: String, uid: Int) {
            self.uid = uid

            self.banners = banners

            self.action = action

            self.slug = slug

            self.name = name

            self.childs = childs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            banners = try container.decode(CategoryBanner.self, forKey: .banners)

            action = try container.decode(ProductListingAction.self, forKey: .action)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(childs, forKey: .childs)
        }
    }
}
