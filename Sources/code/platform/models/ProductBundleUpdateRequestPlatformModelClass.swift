

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var logo: String?

        public var companyId: Int?

        public var meta: [String: Any]?

        public var pageVisibility: [String]?

        public var isActive: Bool

        public var sameStoreAssignment: Bool?

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var choice: String

        public var name: String

        public var products: [ProductBundleItem]

        public var slug: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case companyId = "company_id"

            case meta

            case pageVisibility = "page_visibility"

            case isActive = "is_active"

            case sameStoreAssignment = "same_store_assignment"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case choice

            case name

            case products

            case slug
        }

        public init(choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.logo = logo

            self.companyId = companyId

            self.meta = meta

            self.pageVisibility = pageVisibility

            self.isActive = isActive

            self.sameStoreAssignment = sameStoreAssignment

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.choice = choice

            self.name = name

            self.products = products

            self.slug = slug
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
                companyId = try container.decode(Int.self, forKey: .companyId)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            choice = try container.decode(String.self, forKey: .choice)

            name = try container.decode(String.self, forKey: .name)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            slug = try container.decode(String.self, forKey: .slug)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
