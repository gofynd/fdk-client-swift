

import Foundation
public extension PlatformClient {
    /*
         Model: AppInventory
         Used By: Configuration
     */

    class AppInventory: Codable {
        public var brand: InventoryBrandRule?

        public var store: InventoryStoreRule?

        public var image: [String]?

        public var franchiseEnabled: Bool?

        public var outOfStock: Bool?

        public var onlyVerifiedProducts: Bool?

        public var payment: InventoryPaymentConfig?

        public var articleAssignment: InventoryArticleAssignment?

        public enum CodingKeys: String, CodingKey {
            case brand

            case store

            case image

            case franchiseEnabled = "franchise_enabled"

            case outOfStock = "out_of_stock"

            case onlyVerifiedProducts = "only_verified_products"

            case payment

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: InventoryArticleAssignment? = nil, brand: InventoryBrandRule? = nil, franchiseEnabled: Bool? = nil, image: [String]? = nil, onlyVerifiedProducts: Bool? = nil, outOfStock: Bool? = nil, payment: InventoryPaymentConfig? = nil, store: InventoryStoreRule? = nil) {
            self.brand = brand

            self.store = store

            self.image = image

            self.franchiseEnabled = franchiseEnabled

            self.outOfStock = outOfStock

            self.onlyVerifiedProducts = onlyVerifiedProducts

            self.payment = payment

            self.articleAssignment = articleAssignment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(InventoryBrandRule.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(InventoryStoreRule.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                outOfStock = try container.decode(Bool.self, forKey: .outOfStock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                onlyVerifiedProducts = try container.decode(Bool.self, forKey: .onlyVerifiedProducts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(InventoryPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(InventoryArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)

            try? container.encodeIfPresent(outOfStock, forKey: .outOfStock)

            try? container.encodeIfPresent(onlyVerifiedProducts, forKey: .onlyVerifiedProducts)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }
}
