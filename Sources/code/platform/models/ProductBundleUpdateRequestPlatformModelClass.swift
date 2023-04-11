

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var products: [ProductBundleItem]

        public var logo: String?

        public var modifiedOn: String?

        public var pageVisibility: [String]?

        public var slug: String

        public var modifiedBy: [String: Any]?

        public var choice: String

        public var isActive: Bool

        public var name: String

        public var sameStoreAssignment: Bool?

        public var meta: [String: Any]?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case products

            case logo

            case modifiedOn = "modified_on"

            case pageVisibility = "page_visibility"

            case slug

            case modifiedBy = "modified_by"

            case choice

            case isActive = "is_active"

            case name

            case sameStoreAssignment = "same_store_assignment"

            case meta

            case companyId = "company_id"
        }

        public init(choice: String, companyId: Int? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.products = products

            self.logo = logo

            self.modifiedOn = modifiedOn

            self.pageVisibility = pageVisibility

            self.slug = slug

            self.modifiedBy = modifiedBy

            self.choice = choice

            self.isActive = isActive

            self.name = name

            self.sameStoreAssignment = sameStoreAssignment

            self.meta = meta

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            choice = try container.decode(String.self, forKey: .choice)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
