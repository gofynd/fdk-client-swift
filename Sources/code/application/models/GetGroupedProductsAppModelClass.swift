

import Foundation
public extension ApplicationClient {
    /*
         Model: GetGroupedProducts
         Used By: Catalog
     */
    class GetGroupedProducts: Codable {
        public var name: String?

        public var logo: String?

        public var pageVisibility: [String]?

        public var products: [Products]?

        public var companyId: Int?

        public var meta: [String: Any]?

        public var slug: String?

        public var sameStoreAssignment: Bool?

        public var active: Bool?

        public var choice: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case pageVisibility = "page_visibility"

            case products

            case companyId = "company_id"

            case meta

            case slug

            case sameStoreAssignment = "same_store_assignment"

            case active

            case choice
        }

        public init(active: Bool? = nil, choice: String? = nil, companyId: Int? = nil, logo: String? = nil, meta: [String: Any]? = nil, name: String? = nil, pageVisibility: [String]? = nil, products: [Products]? = nil, sameStoreAssignment: Bool? = nil, slug: String? = nil) {
            self.name = name

            self.logo = logo

            self.pageVisibility = pageVisibility

            self.products = products

            self.companyId = companyId

            self.meta = meta

            self.slug = slug

            self.sameStoreAssignment = sameStoreAssignment

            self.active = active

            self.choice = choice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([Products].self, forKey: .products)

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
                slug = try container.decode(String.self, forKey: .slug)

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
                active = try container.decode(Bool.self, forKey: .active)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(choice, forKey: .choice)
        }
    }
}
