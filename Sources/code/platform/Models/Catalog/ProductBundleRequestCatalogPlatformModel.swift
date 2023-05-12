

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var sameStoreAssignment: Bool?

        public var isActive: Bool

        public var slug: String

        public var modifiedOn: String?

        public var createdBy: [String: Any]?

        public var choice: String

        public var products: [ProductBundleItem]

        public var createdOn: String?

        public var name: String

        public var meta: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var pageVisibility: [String]?

        public var logo: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case isActive = "is_active"

            case slug

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case choice

            case products

            case createdOn = "created_on"

            case name

            case meta

            case modifiedBy = "modified_by"

            case pageVisibility = "page_visibility"

            case logo

            case companyId = "company_id"
        }

        public init(choice: String, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.sameStoreAssignment = sameStoreAssignment

            self.isActive = isActive

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.choice = choice

            self.products = products

            self.createdOn = createdOn

            self.name = name

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.pageVisibility = pageVisibility

            self.logo = logo

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            choice = try container.decode(String.self, forKey: .choice)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ProductBundleRequest
         Used By: Catalog
     */

    class ProductBundleRequest: Codable {
        public var sameStoreAssignment: Bool?

        public var isActive: Bool

        public var slug: String

        public var modifiedOn: String?

        public var createdBy: [String: Any]?

        public var choice: String

        public var products: [ProductBundleItem]

        public var createdOn: String?

        public var name: String

        public var meta: [String: Any]?

        public var modifiedBy: [String: Any]?

        public var pageVisibility: [String]?

        public var logo: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case isActive = "is_active"

            case slug

            case modifiedOn = "modified_on"

            case createdBy = "created_by"

            case choice

            case products

            case createdOn = "created_on"

            case name

            case meta

            case modifiedBy = "modified_by"

            case pageVisibility = "page_visibility"

            case logo

            case companyId = "company_id"
        }

        public init(choice: String, companyId: Int? = nil, createdBy: [String: Any]? = nil, createdOn: String? = nil, isActive: Bool, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, pageVisibility: [String]? = nil, products: [ProductBundleItem], sameStoreAssignment: Bool? = nil, slug: String) {
            self.sameStoreAssignment = sameStoreAssignment

            self.isActive = isActive

            self.slug = slug

            self.modifiedOn = modifiedOn

            self.createdBy = createdBy

            self.choice = choice

            self.products = products

            self.createdOn = createdOn

            self.name = name

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.pageVisibility = pageVisibility

            self.logo = logo

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

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

            choice = try container.decode(String.self, forKey: .choice)

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

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

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
