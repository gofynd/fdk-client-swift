

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var minQuantity: Int

        public var productUid: Int

        public var autoSelect: Bool?

        public var maxQuantity: Int

        public var allowRemove: Bool?

        public var autoAddToCart: Bool?

        public enum CodingKeys: String, CodingKey {
            case minQuantity = "min_quantity"

            case productUid = "product_uid"

            case autoSelect = "auto_select"

            case maxQuantity = "max_quantity"

            case allowRemove = "allow_remove"

            case autoAddToCart = "auto_add_to_cart"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.minQuantity = minQuantity

            self.productUid = productUid

            self.autoSelect = autoSelect

            self.maxQuantity = maxQuantity

            self.allowRemove = allowRemove

            self.autoAddToCart = autoAddToCart
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)
        }
    }
}
