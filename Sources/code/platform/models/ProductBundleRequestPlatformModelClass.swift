

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var logo: String?

        public var modifiedOn: String?

        public var meta: [String: Any]?

        public var pageVisibility: [String]?

        public var sameStoreAssignment: Bool?

        public var choice: String

        public var products: [ProductBundleItem]

        public var createdBy: [String: Any]?

        public var isActive: Bool

        public var modifiedBy: [String: Any]?

        public var createdOn: String?

        public var slug: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case modifiedOn = "modified_on"

            case meta

            case pageVisibility = "page_visibility"

            case sameStoreAssignment = "same_store_assignment"

            case choice

            case products

            case createdBy = "created_by"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case createdOn = "created_on"

            case slug

            case name
        }

        public init(choice: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.logo = logo

            self.modifiedOn = modifiedOn

            self.meta = meta

            self.pageVisibility = pageVisibility

            self.sameStoreAssignment = sameStoreAssignment

            self.choice = choice

            self.products = products

            self.createdBy = createdBy

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.createdOn = createdOn

            self.slug = slug

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            choice = try container.decode(String.self, forKey: .choice)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                createdBy = try container.decode([String: Any].self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

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

            slug = try container.decode(String.self, forKey: .slug)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
