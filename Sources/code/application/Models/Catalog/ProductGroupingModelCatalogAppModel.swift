

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductGroupingModel
         Used By: Catalog
     */
    class ProductGroupingModel: Codable {
        public var modifiedBy: UserDetail?

        public var companyId: Int?

        public var modifiedOn: String

        public var products: [ProductInGroup]

        public var id: [String: Any]?

        public var name: String

        public var isActive: Bool?

        public var createdBy: UserDetail?

        public var logo: String?

        public var verifiedOn: String?

        public var verifiedBy: UserDetail?

        public var slug: String?

        public var meta: [String: Any]?

        public var sameStoreAssignment: Bool?

        public var createdOn: String

        public var pageVisibility: [String]?

        public var choice: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case products

            case id = "_id"

            case name

            case isActive = "is_active"

            case createdBy = "created_by"

            case logo

            case verifiedOn = "verified_on"

            case verifiedBy = "verified_by"

            case slug

            case meta

            case sameStoreAssignment = "same_store_assignment"

            case createdOn = "created_on"

            case pageVisibility = "page_visibility"

            case choice
        }

        public init(choice: String? = nil, companyId: Int? = nil, createdBy: UserDetail? = nil, createdOn: String, isActive: Bool? = nil, logo: String? = nil, meta: [String: Any]? = nil, modifiedBy: UserDetail? = nil, modifiedOn: String, name: String, pageVisibility: [String]? = nil, products: [ProductInGroup], sameStoreAssignment: Bool? = nil, slug: String? = nil, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, id: [String: Any]? = nil) {
            self.modifiedBy = modifiedBy

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.products = products

            self.id = id

            self.name = name

            self.isActive = isActive

            self.createdBy = createdBy

            self.logo = logo

            self.verifiedOn = verifiedOn

            self.verifiedBy = verifiedBy

            self.slug = slug

            self.meta = meta

            self.sameStoreAssignment = sameStoreAssignment

            self.createdOn = createdOn

            self.pageVisibility = pageVisibility

            self.choice = choice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            products = try container.decode([ProductInGroup].self, forKey: .products)

            do {
                id = try container.decode([String: Any].self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                logo = try container.decode(String.self, forKey: .logo)

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
                verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)

            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(choice, forKey: .choice)
        }
    }
}
