

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetProducts
         Used By: Catalog
     */

    class GetProducts: Codable {
        public var autoAddToCart: Bool?

        public var minQuantity: Int?

        public var price: Price?

        public var autoSelect: Bool?

        public var productUid: Int?

        public var maxQuantity: Int?

        public var productDetails: LimitedProductData?

        public var sizes: [Size]?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoAddToCart = "auto_add_to_cart"

            case minQuantity = "min_quantity"

            case price

            case autoSelect = "auto_select"

            case productUid = "product_uid"

            case maxQuantity = "max_quantity"

            case productDetails = "product_details"

            case sizes

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int? = nil, minQuantity: Int? = nil, price: Price? = nil, productDetails: LimitedProductData? = nil, productUid: Int? = nil, sizes: [Size]? = nil) {
            self.autoAddToCart = autoAddToCart

            self.minQuantity = minQuantity

            self.price = price

            self.autoSelect = autoSelect

            self.productUid = productUid

            self.maxQuantity = maxQuantity

            self.productDetails = productDetails

            self.sizes = sizes

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
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Price.self, forKey: .price)

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
                productUid = try container.decode(Int.self, forKey: .productUid)

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
                productDetails = try container.decode(LimitedProductData.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

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

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetProducts
         Used By: Catalog
     */

    class GetProducts: Codable {
        public var autoAddToCart: Bool?

        public var minQuantity: Int?

        public var price: Price?

        public var autoSelect: Bool?

        public var productUid: Int?

        public var maxQuantity: Int?

        public var productDetails: LimitedProductData?

        public var sizes: [Size]?

        public var allowRemove: Bool?

        public enum CodingKeys: String, CodingKey {
            case autoAddToCart = "auto_add_to_cart"

            case minQuantity = "min_quantity"

            case price

            case autoSelect = "auto_select"

            case productUid = "product_uid"

            case maxQuantity = "max_quantity"

            case productDetails = "product_details"

            case sizes

            case allowRemove = "allow_remove"
        }

        public init(allowRemove: Bool? = nil, autoAddToCart: Bool? = nil, autoSelect: Bool? = nil, maxQuantity: Int? = nil, minQuantity: Int? = nil, price: Price? = nil, productDetails: LimitedProductData? = nil, productUid: Int? = nil, sizes: [Size]? = nil) {
            self.autoAddToCart = autoAddToCart

            self.minQuantity = minQuantity

            self.price = price

            self.autoSelect = autoSelect

            self.productUid = productUid

            self.maxQuantity = maxQuantity

            self.productDetails = productDetails

            self.sizes = sizes

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
                minQuantity = try container.decode(Int.self, forKey: .minQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(Price.self, forKey: .price)

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
                productUid = try container.decode(Int.self, forKey: .productUid)

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
                productDetails = try container.decode(LimitedProductData.self, forKey: .productDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([Size].self, forKey: .sizes)

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

            try? container.encodeIfPresent(minQuantity, forKey: .minQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(autoSelect, forKey: .autoSelect)

            try? container.encodeIfPresent(productUid, forKey: .productUid)

            try? container.encodeIfPresent(maxQuantity, forKey: .maxQuantity)

            try? container.encodeIfPresent(productDetails, forKey: .productDetails)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(allowRemove, forKey: .allowRemove)
        }
    }
}
