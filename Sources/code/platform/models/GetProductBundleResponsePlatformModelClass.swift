

import Foundation
public extension PlatformClient {
    /*
         Model: GetProductBundleResponse
         Used By: Catalog
     */

    class GetProductBundleResponse: Codable {
        public var companyId: Int?

        public var choice: String?

        public var name: String?

        public var sameStoreAssignment: Bool?

        public var products: [GetProducts]?

        public var pageVisibility: [String]?

        public var logo: String?

        public var isActive: Bool?

        public var slug: String?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case choice

            case name

            case sameStoreAssignment = "same_store_assignment"

            case products

            case pageVisibility = "page_visibility"

            case logo

            case isActive = "is_active"

            case slug

            case meta
        }

        public init(choice: String? = nil, companyId: Int? = nil, isActive: Bool? = nil, logo: String? = nil, meta: [String: Any]? = nil, name: String? = nil, pageVisibility: [String]? = nil, products: [GetProducts]? = nil, sameStoreAssignment: Bool? = nil, slug: String? = nil) {
            self.companyId = companyId

            self.choice = choice

            self.name = name

            self.sameStoreAssignment = sameStoreAssignment

            self.products = products

            self.pageVisibility = pageVisibility

            self.logo = logo

            self.isActive = isActive

            self.slug = slug

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                name = try container.decode(String.self, forKey: .name)

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
                products = try container.decode([GetProducts].self, forKey: .products)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
