

import Foundation
public extension PlatformClient {
    /*
         Model: ProductVariantsResponse
         Used By: Catalog
     */

    class ProductVariantsResponse: Codable {
        public var page: Page?

        public var variants: [ProductVariants]?

        public enum CodingKeys: String, CodingKey {
            case page

            case variants
        }

        public init(page: Page? = nil, variants: [ProductVariants]? = nil) {
            self.page = page

            self.variants = variants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variants = try container.decode([ProductVariants].self, forKey: .variants)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(variants, forKey: .variants)
        }
    }
}
