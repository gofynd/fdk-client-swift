

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductGroupingModel
         Used By: Catalog
     */
    class ProductGroupingModel: Codable {
        public var slug: [String: Any]?

        public var modifiedOn: String

        public var name: [String: Any]

        public var isActive: Bool?

        public var pageVisibility: [[String: Any]]?

        public var meta: [String: Any]?

        public var id: [String: Any]?

        public var createdBy: UserDetail?

        public var verifiedOn: String?

        public var products: [ProductInGroup]

        public var createdOn: String

        public var choice: [String: Any]?

        public var companyId: Int?

        public var logo: String?

        public var sameStoreAssignment: Bool?

        public var verifiedBy: UserDetail?

        public var modifiedBy: UserDetail?

        public enum CodingKeys: String, CodingKey {
            case slug

            case modifiedOn = "modified_on"

            case name

            case isActive = "is_active"

            case pageVisibility = "page_visibility"

            case meta

            case id = "_id"

            case createdBy = "created_by"

            case verifiedOn = "verified_on"

            case products

            case createdOn = "created_on"

            case choice

            case companyId = "company_id"

            case logo

            case sameStoreAssignment = "same_store_assignment"

            case verifiedBy = "verified_by"

            case modifiedBy = "modified_by"
        }

        public init(choice: [String: Any]? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, name: [String: Any], pageVisibility: [[String: Any]]? = nil, products: [ProductInGroup], sameStoreAssignment: Bool? = nil, slug: [String: Any]? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, id: [String: Any]? = nil) {
            self.slug = slug

            self.modifiedOn = modifiedOn

            self.name = name

            self.isActive = isActive

            self.pageVisibility = pageVisibility

            self.meta = meta

            self.id = id

            self.createdBy = createdBy

            self.verifiedOn = verifiedOn

            self.products = products

            self.createdOn = createdOn

            self.choice = choice

            self.companyId = companyId

            self.logo = logo

            self.sameStoreAssignment = sameStoreAssignment

            self.verifiedBy = verifiedBy

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode([String: Any].self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageVisibility = try container.decode([[String: Any]].self, forKey: .pageVisibility)

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
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductInGroup].self, forKey: .products)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                choice = try container.decode([String: Any].self, forKey: .choice)

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
                logo = try container.decode(String.self, forKey: .logo)

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
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
        }
    }
}
