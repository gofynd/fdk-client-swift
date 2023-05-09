

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductInGroup
         Used By: Catalog
     */
    class ProductInGroup: Codable {
        public var autoAddToCart: Bool?

        public var price: ProductGroupPrice?

        public var productUid: Int

        public var sizes: [Size]?

        public var autoSelect: Bool?

        public var minQuantity: Int?

        public var maxQuantity: Int

        public var productDetails: ProductDetails?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoAddToCart = "auto_add_to_cart"

            case price

            case productUid = "product_uid"

            case sizes

            case autoSelect = "auto_select"

            case minQuantity = "min_quantity"

            case maxQuantity = "max_quantity"

            case productDetails = "product_details"

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int, minQuantity: Int? = nil, price: ProductGroupPrice? = nil, productDetails: ProductDetails? = nil, productUid: Int, sizes: [Size]? = nil) {
            self.autoAddToCart = autoAddToCart

            self.price = price

            self.productUid = productUid

            self.sizes = sizes

            self.autoSelect = autoSelect

            self.minQuantity = minQuantity

            self.maxQuantity = maxQuantity

            self.productDetails = productDetails

            self.allowRemove = allowRemove
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                autoAddToCart = try container.decode(Bool.self, forKey: .autoAddToCart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductGroupPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            productUid = try container.decode(Int.self, forKey: .productUid)

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

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

            do {
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

            do {
                productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }
}
