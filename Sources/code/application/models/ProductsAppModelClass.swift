

import Foundation
public extension ApplicationClient {
    /*
         Model: Products
         Used By: Catalog
     */
    class Products: Codable {
        public var sizes: [Size]?

        public var minQuantity: Int?

        public var allowRemove: Bool?

        public var autoSelect: Bool?

        public var maxQuantity: Int?

        public var autoAddToCart: Bool?

        public var price: Price1?

        public var productDetails: ProductDetails?

        public var productUid: Int?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case minQuantity = "min_quantity"

            case allowRemove = "allow_remove"

            case autoSelect = "auto_select"

            case maxQuantity = "max_quantity"

            case autoAddToCart = "auto_add_to_cart"

            case price

            case productDetails = "product_details"

            case productUid = "product_uid"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int? = nil, minQuantity: Int? = nil, price: Price1? = nil, productDetails: ProductDetails? = nil, productUid: Int? = nil, sizes: [Size]? = nil) {
            self.sizes = sizes

            self.minQuantity = minQuantity

            self.allowRemove = allowRemove

            self.autoSelect = autoSelect

            self.maxQuantity = maxQuantity

            self.autoAddToCart = autoAddToCart

            self.price = price

            self.productDetails = productDetails

            self.productUid = productUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

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

            do {
                allowRemove = try container.decode(Bool.self, forKey: .allowRemove)

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
                maxQuantity = try container.decode(Int.self, forKey: .maxQuantity)

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

            do {
                price = try container.decode(Price1.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productDetails = try container.decode(ProductDetails.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productUid = try container.decode(Int.self, forKey: .productUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(autoAddToCart, forKey: .autoAddToCart)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(productUid, forKey: .productUid)
        }
    }
}
