

import Foundation
public extension ApplicationClient {
    /*
         Model: CategoryItems
         Used By: Catalog
     */
    class CategoryItems: Codable {
        public var childs: [Child]?

        public var uid: Int

        public var banners: CategoryBanner

        public var slug: String

        public var name: String

        public var action: ProductListingAction

        public enum CodingKeys: String, CodingKey {
            case childs

            case uid

            case banners

            case slug

            case name

            case action
        }

        public init(action: ProductListingAction, banners: CategoryBanner, childs: [Child]? = nil, name: String, slug: String, uid: Int) {
            self.childs = childs

            self.uid = uid

            self.banners = banners

            self.slug = slug

            self.name = name

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            banners = try container.decode(CategoryBanner.self, forKey: .banners)

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)

            action = try container.decode(ProductListingAction.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
