

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductSizes
         Used By: Catalog
     */
    class ProductSizes: Codable {
        public var sizes: [ProductSize]?

        public var multiSize: Bool?

        public var sizeChart: SizeChart?

        public var stores: ProductSizeStores?

        public var sellable: Bool?

        public var discount: String?

        public var price: ProductListingPrice?

        public enum CodingKeys: String, CodingKey {
            case sizes

            case multiSize = "multi_size"

            case sizeChart = "size_chart"

            case stores

            case sellable

            case discount

            case price
        }

        public init(discount: String? = nil, multiSize: Bool? = nil, price: ProductListingPrice? = nil, sellable: Bool? = nil, sizes: [ProductSize]? = nil, sizeChart: SizeChart? = nil, stores: ProductSizeStores? = nil) {
            self.sizes = sizes

            self.multiSize = multiSize

            self.sizeChart = sizeChart

            self.stores = stores

            self.sellable = sellable

            self.discount = discount

            self.price = price
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sizes = try container.decode([ProductSize].self, forKey: .sizes)

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
                stores = try container.decode(ProductSizeStores.self, forKey: .stores)

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
                discount = try container.decode(String.self, forKey: .discount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(multiSize, forKey: .multiSize)

            try? container.encodeIfPresent(sizeChart, forKey: .sizeChart)

            try? container.encodeIfPresent(stores, forKey: .stores)

            try? container.encodeIfPresent(sellable, forKey: .sellable)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}
