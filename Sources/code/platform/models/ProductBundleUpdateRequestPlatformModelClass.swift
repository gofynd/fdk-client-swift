import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleUpdateRequest
         Used By: Catalog
     */

    class ProductBundleUpdateRequest: Codable {
        public var pageVisibility: [String]?

        public var modifiedBy: [String: Any]?

        public var modifiedOn: String?

        public var products: [ProductBundleItem]

        public var isActive: Bool

        public var slug: String

        public var choice: String

        public var name: String

        public var meta: [String: Any]?

        public var logo: String?

        public var sameStoreAssignment: Bool?

        public enum CodingKeys: String, CodingKey {
            case pageVisibility = "page_visibility"

            case modifiedBy = "modified_by"

            case modifiedOn = "modified_on"

            case products

            case isActive = "is_active"

            case slug

            case choice

            case name

            case meta

            case logo

            case sameStoreAssignment = "same_store_assignment"
        }

        public init(choice: String, isActive: Bool, logo: String?, meta: [String: Any]?, modifiedBy: [String: Any]?, modifiedOn: String?, name: String, pageVisibility: [String]?, products: [ProductBundleItem], sameStoreAssignment: Bool?, slug: String) {
            self.pageVisibility = pageVisibility

            self.modifiedBy = modifiedBy

            self.modifiedOn = modifiedOn

            self.products = products

            self.isActive = isActive

            self.slug = slug

            self.choice = choice

            self.name = name

            self.meta = meta

            self.logo = logo

            self.sameStoreAssignment = sameStoreAssignment
        }

        public func duplicate() -> ProductBundleUpdateRequest {
            let dict = self.dictionary!
            let copy = ProductBundleUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pageVisibility = try container.decode([String].self, forKey: .pageVisibility)

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

            products = try container.decode([ProductBundleItem].self, forKey: .products)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            slug = try container.decode(String.self, forKey: .slug)

            choice = try container.decode(String.self, forKey: .choice)

            name = try container.decode(String.self, forKey: .name)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageVisibility, forKey: .pageVisibility)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(choice, forKey: .choice)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(sameStoreAssignment, forKey: .sameStoreAssignment)
        }
    }
}
