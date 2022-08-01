

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var isActive: Bool

        public var choice: String

        public var slug: String

        public var modifiedOn: String?

        public var sameStoreAssignment: Bool?

        public var createdBy: [String: Any]?

        public var name: String

        public var modifiedBy: [String: Any]?

        public var meta: [String: Any]?

        public var createdOn: String?

        public var pageVisibility: [String]?

        public var logo: String?

        public var products: [ProductBundleItem]

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case choice

            case slug

            case modifiedOn = "modified_on"

            case sameStoreAssignment = "same_store_assignment"

            case createdBy = "created_by"

            case name

            case modifiedBy = "modified_by"

            case meta

            case createdOn = "created_on"

            case pageVisibility = "page_visibility"

            case logo

            case products
        }

        public init(choice: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.isActive = isActive

            self.choice = choice

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.sameStoreAssignment = sameStoreAssignment

            self.createdBy = createdBy

            self.name = name

            self.modifiedBy = modifiedBy

            self.meta = meta

            self.createdOn = createdOn

            self.pageVisibility = pageVisibility

            self.logo = logo

            self.products = products
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            choice = try container.decode(String.self, forKey: .choice)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

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
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductBundleItem].self, forKey: .products)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(products, forKey: .products)
        }
    }
}
