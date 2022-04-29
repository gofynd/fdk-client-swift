

import Foundation
public extension PlatformClient {
    /*
         Model: ProductBundleItem
         Used By: Catalog
     */

    class ProductBundleItem: Codable {
        public var productUid: Int

        public var autoAddToCart: Bool?

        public var allowRemove: Bool?

        public var minQuantity: Int

        public var autoSelect: Bool?

        public var maxQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case productUid = "product_uid"

            case autoAddToCart = "auto_add_to_cart"

            case allowRemove = "allow_remove"

            case minQuantity = "min_quantity"

            case autoSelect = "auto_select"

            case maxQuantity = "max_quantity"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int, productUid: Int) {
            self.productUid = productUid

            self.autoAddToCart = autoAddToCart

            self.allowRemove = allowRemove

            self.minQuantity = minQuantity

            self.autoSelect = autoSelect

            self.maxQuantity = maxQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            do {
                autoSelect = try container.decode(Bool.self, forKey: .autoSelect)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)
        }
    }
}
