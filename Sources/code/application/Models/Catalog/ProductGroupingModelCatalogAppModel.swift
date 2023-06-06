

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductGroupingModel
         Used By: Catalog
     */
    class ProductGroupingModel: Codable {
        public var id: [String: Any]?

        public var verifiedBy: UserDetail?

        public var companyId: Int?

        public var choice: String?

        public var createdOn: String

        public var slug: String?

        public var createdBy: UserDetail?

        public var modifiedBy: UserDetail?

        public var meta: [String: Any]?

        public var verifiedOn: String?

        public var isActive: Bool?

        public var name: String

        public var logo: String?

        public var products: [ProductInGroup]

        public var pageVisibility: [String]?

        public var sameStoreAssignment: Bool?

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case verifiedBy = "verified_by"

            case companyId = "company_id"

            case choice

            case createdOn = "created_on"

            case slug

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case meta

            case verifiedOn = "verified_on"

            case isActive = "is_active"

            case name

            case logo

            case products

            case pageVisibility = "page_visibility"

            case sameStoreAssignment = "same_store_assignment"

            case modifiedOn = "modified_on"
        }

        public init(choice: String? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, pageVisibility: [String]? = nil, products: [ProductInGroup], sameStoreAssignment: Bool? = nil, slug: String? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, id: [String: Any]? = nil) {
            self.id = id

            self.verifiedBy = verifiedBy

            self.companyId = companyId

            self.choice = choice

            self.createdOn = createdOn

            self.slug = slug

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.meta = meta

            self.verifiedOn = verifiedOn

            self.isActive = isActive

            self.name = name

            self.logo = logo

            self.products = products

            self.pageVisibility = pageVisibility

            self.sameStoreAssignment = sameStoreAssignment

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

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
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                choice = try container.decode(String.self, forKey: .choice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

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
                verifiedOn = try container.decode(String.self, forKey: .verifiedOn)

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

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            products = try container.decode([ProductInGroup].self, forKey: .products)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
