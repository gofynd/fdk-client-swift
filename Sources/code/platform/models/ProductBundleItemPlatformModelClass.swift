

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var maxQuantity: Int

        public var productUid: Int

        public var allowRemove: Bool?

        public var minQuantity: Int

        public var autoAddToCart: Bool?

        public var autoSelect: Bool?

        public enum CodingKeys: String, CodingKey {
            case maxQuantity = "max_quantity"

            case productUid = "product_uid"

            case allowRemove = "allow_remove"

            case minQuantity = "min_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case autoSelect = "auto_select"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.maxQuantity = maxQuantity

            self.productUid = productUid

            self.allowRemove = allowRemove

            self.minQuantity = minQuantity

            self.autoAddToCart = autoAddToCart

            self.autoSelect = autoSelect
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)
        }
    }
}
