

import Foundation
public extension ApplicationClient {
    /*
         Model: GetGroupedProducts
         Used By: Catalog
     */
    class GetGroupedProducts: Codable {
        public var sameStoreAssignment: Bool?

        public var active: Bool?

        public var products: [Products]?

        public var name: String?

        public var meta: [String: Any]?

        public var pageVisibility: [String]?

        public var companyId: Int?

        public var choice: String?

        public var logo: String?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case sameStoreAssignment = "same_store_assignment"

            case active

            case products

            case name

            case meta

            case pageVisibility = "page_visibility"

            case companyId = "company_id"

            case choice

            case logo

            case slug
        }

        public init(active: Bool? = nil, choice: String? = nil, companyId: Int? = nil, logo: String? = nil, meta: [String: Any]? = nil, name: String? = nil, pageVisibility: [String]? = nil, products: [Products]? = nil, sameStoreAssignment: Bool? = nil, slug: String? = nil) {
            self.sameStoreAssignment = sameStoreAssignment

            self.active = active

            self.products = products

            self.name = name

            self.meta = meta

            self.pageVisibility = pageVisibility

            self.companyId = companyId

            self.choice = choice

            self.logo = logo

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                products = try container.decode([Products].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

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

            do {
                logo = try container.decode(String.self, forKey: .logo)

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

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
