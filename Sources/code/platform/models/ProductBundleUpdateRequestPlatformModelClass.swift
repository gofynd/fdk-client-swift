

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var choice: String

        public var modifiedOn: String?

        public var pageVisibility: [String]?

        public var sameStoreAssignment: Bool?

        public var name: String

        public var slug: String

        public var isActive: Bool

        public var meta: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var products: [ProductBundleItem]

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case choice

            case modifiedOn = "modified_on"

            case pageVisibility = "page_visibility"

            case sameStoreAssignment = "same_store_assignment"

            case name

            case slug

            case isActive = "is_active"

            case meta

            case modifiedBy = "modified_by"

            case products

            case logo
        }

        public init(choice: String, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.choice = choice

            self.modifiedOn = modifiedOn

            self.pageVisibility = pageVisibility

            self.sameStoreAssignment = sameStoreAssignment

            self.name = name

            self.slug = slug

            self.isActive = isActive

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.products = products

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            choice = try container.decode(String.self, forKey: .choice)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encode(logo, forKey: .logo)
        }
    }
}
