

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductGroupingModel
         Used By: Catalog
     */
    class ProductGroupingModel: Codable {
        public var createdOn: String

        public var logo: String?

        public var companyId: Int?

        public var sameStoreAssignment: Bool?

        public var products: [ProductInGroup]

        public var modifiedBy: UserDetail?

        public var modifiedOn: String

        public var choice: String?

        public var name: String

        public var meta: [String: Any]?

        public var createdBy: UserDetail?

        public var verifiedBy: UserDetail?

        public var isActive: Bool?

        public var pageVisibility: [String]?

        public var id: [String: Any]?

        public var verifiedOn: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case logo

            case companyId = "company_id"

            case sameStoreAssignment = "same_store_assignment"

            case products

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case choice

            case name

            case meta

            case createdBy = "created_by"

            case verifiedBy = "verified_by"

            case isActive = "is_active"

            case pageVisibility = "page_visibility"

            case id = "_id"

            case verifiedOn = "verified_on"

            case slug
        }

        public init(choice: String? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, pageVisibility: [String]? = nil, products: [ProductInGroup], sameStoreAssignment: Bool? = nil, slug: String? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, id: [String: Any]? = nil) {
            self.createdOn = createdOn

            self.logo = logo

            self.companyId = companyId

            self.sameStoreAssignment = sameStoreAssignment

            self.products = products

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.choice = choice

            self.name = name

            self.meta = meta

            self.createdBy = createdBy

            self.verifiedBy = verifiedBy

            self.isActive = isActive

            self.pageVisibility = pageVisibility

            self.id = id

            self.verifiedOn = verifiedOn

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

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
                sameStoreAssignment = try container.decode(Bool.self, forKey: .sameStoreAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductInGroup].self, forKey: .products)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                choice = try container.decode(String.self, forKey: .choice)

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
                createdBy = try container.decode(UserDetail.self, forKey: .createdBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                id = try container.decode([String: Any].self, forKey: .id)

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

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
