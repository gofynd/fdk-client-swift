

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductCategoryMap
         Used By: Catalog
     */
    class ProductCategoryMap: Codable {
        public var l3: ProductBrand?

        public var l2: ProductBrand?

        public var l1: ProductBrand?

        public enum CodingKeys: String, CodingKey {
            case l3

            case l2

            case l1
        }

        public init(l1: ProductBrand? = nil, l2: ProductBrand? = nil, l3: ProductBrand? = nil) {
            self.l3 = l3

            self.l2 = l2

            self.l1 = l1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                l3 = try container.decode(ProductBrand.self, forKey: .l3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2 = try container.decode(ProductBrand.self, forKey: .l2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1 = try container.decode(ProductBrand.self, forKey: .l1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l3, forKey: .l3)

            try? container.encodeIfPresent(l2, forKey: .l2)

            try? container.encodeIfPresent(l1, forKey: .l1)
        }
    }
}
