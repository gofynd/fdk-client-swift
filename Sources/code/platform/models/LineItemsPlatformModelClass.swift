

import Foundation
public extension PlatformClient {
    /*
         Model: LineItems
         Used By: Order
     */

    class LineItems: Codable {
        public var sku: String?

        public var fulfillableQuantity: Int?

        public var grams: Int?

        public var totalDiscount: String?

        public var article: LineItemsArticle?

        public var title: String?

        public var variantInventoryManagement: String?

        public var id: Int?

        public var variantId: Int?

        public var variantTitle: String?

        public var productExists: Bool?

        public var price: String?

        public var adminGraphqlApiId: String?

        public var quantity: Int?

        public var vendor: String?

        public var fulfillmentService: String?

        public var taxable: Bool?

        public var name: String?

        public var productId: Int?

        public var priceSet: PriceSet?

        public var taxLines: TaxLines?

        public var requiresShipping: Bool?

        public var giftCard: Bool?

        public var totalDiscountSet: TotalDiscountSet?

        public enum CodingKeys: String, CodingKey {
            case sku

            case fulfillableQuantity = "fulfillable_quantity"

            case grams

            case totalDiscount = "total_discount"

            case article

            case title

            case variantInventoryManagement = "variant_inventory_management"

            case id

            case variantId = "variant_id"

            case variantTitle = "variant_title"

            case productExists = "product_exists"

            case price

            case adminGraphqlApiId = "admin_graphql_api_id"

            case quantity

            case vendor

            case fulfillmentService = "fulfillment_service"

            case taxable

            case name

            case productId = "product_id"

            case priceSet = "price_set"

            case taxLines = "tax_lines"

            case requiresShipping = "requires_shipping"

            case giftCard = "gift_card"

            case totalDiscountSet = "total_discount_set"
        }

        public init(adminGraphqlApiId: String? = nil, article: LineItemsArticle? = nil, fulfillableQuantity: Int? = nil, fulfillmentService: String? = nil, giftCard: Bool? = nil, grams: Int? = nil, id: Int? = nil, name: String? = nil, price: String? = nil, priceSet: PriceSet? = nil, productExists: Bool? = nil, productId: Int? = nil, quantity: Int? = nil, requiresShipping: Bool? = nil, sku: String? = nil, taxable: Bool? = nil, taxLines: TaxLines? = nil, title: String? = nil, totalDiscount: String? = nil, totalDiscountSet: TotalDiscountSet? = nil, variantId: Int? = nil, variantInventoryManagement: String? = nil, variantTitle: String? = nil, vendor: String? = nil) {
            self.sku = sku

            self.fulfillableQuantity = fulfillableQuantity

            self.grams = grams

            self.totalDiscount = totalDiscount

            self.article = article

            self.title = title

            self.variantInventoryManagement = variantInventoryManagement

            self.id = id

            self.variantId = variantId

            self.variantTitle = variantTitle

            self.productExists = productExists

            self.price = price

            self.adminGraphqlApiId = adminGraphqlApiId

            self.quantity = quantity

            self.vendor = vendor

            self.fulfillmentService = fulfillmentService

            self.taxable = taxable

            self.name = name

            self.productId = productId

            self.priceSet = priceSet

            self.taxLines = taxLines

            self.requiresShipping = requiresShipping

            self.giftCard = giftCard

            self.totalDiscountSet = totalDiscountSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sku = try container.decode(String.self, forKey: .sku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillableQuantity = try container.decode(Int.self, forKey: .fulfillableQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                grams = try container.decode(Int.self, forKey: .grams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalDiscount = try container.decode(String.self, forKey: .totalDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                article = try container.decode(LineItemsArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantInventoryManagement = try container.decode(String.self, forKey: .variantInventoryManagement)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantId = try container.decode(Int.self, forKey: .variantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variantTitle = try container.decode(String.self, forKey: .variantTitle)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productExists = try container.decode(Bool.self, forKey: .productExists)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(String.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                adminGraphqlApiId = try container.decode(String.self, forKey: .adminGraphqlApiId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vendor = try container.decode(String.self, forKey: .vendor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillmentService = try container.decode(String.self, forKey: .fulfillmentService)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxable = try container.decode(Bool.self, forKey: .taxable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productId = try container.decode(Int.self, forKey: .productId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceSet = try container.decode(PriceSet.self, forKey: .priceSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxLines = try container.decode(TaxLines.self, forKey: .taxLines)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requiresShipping = try container.decode(Bool.self, forKey: .requiresShipping)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftCard = try container.decode(Bool.self, forKey: .giftCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalDiscountSet = try container.decode(TotalDiscountSet.self, forKey: .totalDiscountSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fulfillableQuantity, forKey: .fulfillableQuantity)

            try? container.encodeIfPresent(grams, forKey: .grams)

            try? container.encodeIfPresent(totalDiscount, forKey: .totalDiscount)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(variantInventoryManagement, forKey: .variantInventoryManagement)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(variantId, forKey: .variantId)

            try? container.encodeIfPresent(variantTitle, forKey: .variantTitle)

            try? container.encodeIfPresent(productExists, forKey: .productExists)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(adminGraphqlApiId, forKey: .adminGraphqlApiId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(vendor, forKey: .vendor)

            try? container.encodeIfPresent(fulfillmentService, forKey: .fulfillmentService)

            try? container.encodeIfPresent(taxable, forKey: .taxable)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(productId, forKey: .productId)

            try? container.encodeIfPresent(priceSet, forKey: .priceSet)

            try? container.encodeIfPresent(taxLines, forKey: .taxLines)

            try? container.encodeIfPresent(requiresShipping, forKey: .requiresShipping)

            try? container.encodeIfPresent(giftCard, forKey: .giftCard)

            try? container.encodeIfPresent(totalDiscountSet, forKey: .totalDiscountSet)
        }
    }
}
