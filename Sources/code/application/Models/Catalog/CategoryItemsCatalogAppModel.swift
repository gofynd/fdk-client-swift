

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var action: ProductListingAction

        public var name: String

        public var slug: String

        public var uid: Int

        public var banners: CategoryBanner

        public var childs: [Child]?

        public enum CodingKeys: String, CodingKey {
            case action

            case name

            case slug

            case uid

            case banners

            case childs
        }

        public init(action: ProductListingAction, banners: CategoryBanner, childs: [Child]? = nil, name: String, slug: String, uid: Int) {
            self.action = action

            self.name = name

            self.slug = slug

            self.uid = uid

            self.banners = banners

            self.childs = childs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(ProductListingAction.self, forKey: .action)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            uid = try container.decode(Int.self, forKey: .uid)

            banners = try container.decode(CategoryBanner.self, forKey: .banners)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(childs, forKey: .childs)
        }
    }
}
