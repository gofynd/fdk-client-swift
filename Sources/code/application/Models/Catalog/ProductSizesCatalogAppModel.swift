

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSizes
         Used By: Catalog
     */
    class ProductSizes: Codable {
        public var stores: ProductSizeStores?

        public var price: ProductListingPrice?

        public var discount: String?

        public var multiSize: Bool?

        public var sizeChart: SizeChart?

        public var sellable: Bool?

        public var sizes: [ProductSize]?

        public enum CodingKeys: String, CodingKey {
            case stores

            case price

            case discount

            case multiSize = "multi_size"

            case sizeChart = "size_chart"

            case sellable

            case sizes
        }

        public init(discount: String? = nil, multiSize: Bool? = nil, price: ProductListingPrice? = nil, sellable: Bool? = nil, sizes: [ProductSize]? = nil, sizeChart: SizeChart? = nil, stores: ProductSizeStores? = nil) {
            self.stores = stores

            self.price = price

            self.discount = discount

            self.multiSize = multiSize

            self.sizeChart = sizeChart

            self.sellable = sellable

            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stores = try container.decode(ProductSizeStores.self, forKey: .stores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductListingPrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                multiSize = try container.decode(Bool.self, forKey: .multiSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeChart = try container.decode(SizeChart.self, forKey: .sizeChart)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellable = try container.decode(Bool.self, forKey: .sellable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode([ProductSize].self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
