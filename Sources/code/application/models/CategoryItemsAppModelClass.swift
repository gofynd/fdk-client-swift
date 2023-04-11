

import Foundation
public extension ApplicationClient {
    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var childs: [Child]?

        public var banners: CategoryBanner

        public var uid: Int

        public var action: ProductListingAction

        public var name: String

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case childs

            case banners

            case uid

            case action

            case name

            case slug
        }

        public init(action: ProductListingAction, banners: CategoryBanner, childs: [Child]? = nil, name: String, slug: String, uid: Int) {
            self.childs = childs

            self.banners = banners

            self.uid = uid

            self.action = action

            self.name = name

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            banners = try container.decode(CategoryBanner.self, forKey: .banners)

            uid = try container.decode(Int.self, forKey: .uid)

            action = try container.decode(ProductListingAction.self, forKey: .action)

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
