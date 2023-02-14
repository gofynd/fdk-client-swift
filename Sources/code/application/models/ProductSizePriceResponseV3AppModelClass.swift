

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSizePriceResponseV3
         Used By: Catalog
     */
    class ProductSizePriceResponseV3: Codable {
        public var discount: String?

        public var itemType: String?

        public var returnConfig: ReturnConfigSchemaV2?

        public var store: StoreV2?

        public var quantity: Int?

        public var sellerCount: Int?

        public var isGift: Bool?

        public var articleAssignment: ArticleAssignmentV2?

        public var set: ProductSetV2?

        public var specialBadge: String?

        public var seller: SellerV2?

        public var price: ProductStockPriceV2?

        public var groupedAttributes: [SellerGroupAttributes]?

        public var pincode: Int?

        public var pricePerUnit: ProductStockUnitPriceV2?

        public var articleId: String?

        public var isServiceable: Bool?

        public var marketplaceAttributes: [MarketPlaceSttributesSchemaV2]?

        public var longLat: [Double]?

        public var strategyWiseListing: [StrategyWiseListingSchemaV2]?

        public var pricePerPiece: ProductStockPriceV2?

        public var isCod: Bool?

        public enum CodingKeys: String, CodingKey {
            case discount

            case itemType = "item_type"

            case returnConfig = "return_config"

            case store

            case quantity

            case sellerCount = "seller_count"

            case isGift = "is_gift"

            case articleAssignment = "article_assignment"

            case set

            case specialBadge = "special_badge"

            case seller

            case price

            case groupedAttributes = "grouped_attributes"

            case pincode

            case pricePerUnit = "price_per_unit"

            case articleId = "article_id"

            case isServiceable = "is_serviceable"

            case marketplaceAttributes = "marketplace_attributes"

            case longLat = "long_lat"

            case strategyWiseListing = "strategy_wise_listing"

            case pricePerPiece = "price_per_piece"

            case isCod = "is_cod"
        }

        public init(articleAssignment: ArticleAssignmentV2? = nil, articleId: String? = nil, discount: String? = nil, groupedAttributes: [SellerGroupAttributes]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, isServiceable: Bool? = nil, itemType: String? = nil, longLat: [Double]? = nil, marketplaceAttributes: [MarketPlaceSttributesSchemaV2]? = nil, pincode: Int? = nil, price: ProductStockPriceV2? = nil, pricePerPiece: ProductStockPriceV2? = nil, pricePerUnit: ProductStockUnitPriceV2? = nil, quantity: Int? = nil, returnConfig: ReturnConfigSchemaV2? = nil, seller: SellerV2? = nil, sellerCount: Int? = nil, set: ProductSetV2? = nil, specialBadge: String? = nil, store: StoreV2? = nil, strategyWiseListing: [StrategyWiseListingSchemaV2]? = nil) {
            self.discount = discount

            self.itemType = itemType

            self.returnConfig = returnConfig

            self.store = store

            self.quantity = quantity

            self.sellerCount = sellerCount

            self.isGift = isGift

            self.articleAssignment = articleAssignment

            self.set = set

            self.specialBadge = specialBadge

            self.seller = seller

            self.price = price

            self.groupedAttributes = groupedAttributes

            self.pincode = pincode

            self.pricePerUnit = pricePerUnit

            self.articleId = articleId

            self.isServiceable = isServiceable

            self.marketplaceAttributes = marketplaceAttributes

            self.longLat = longLat

            self.strategyWiseListing = strategyWiseListing

            self.pricePerPiece = pricePerPiece

            self.isCod = isCod
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discount = try container.decode(String.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemType = try container.decode(String.self, forKey: .itemType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfigSchemaV2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(StoreV2.self, forKey: .store)

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
                sellerCount = try container.decode(Int.self, forKey: .sellerCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(ArticleAssignmentV2.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(ProductSetV2.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                specialBadge = try container.decode(String.self, forKey: .specialBadge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seller = try container.decode(SellerV2.self, forKey: .seller)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ProductStockPriceV2.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupedAttributes = try container.decode([SellerGroupAttributes].self, forKey: .groupedAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerUnit = try container.decode(ProductStockUnitPriceV2.self, forKey: .pricePerUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleId = try container.decode(String.self, forKey: .articleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isServiceable = try container.decode(Bool.self, forKey: .isServiceable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV2].self, forKey: .marketplaceAttributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longLat = try container.decode([Double].self, forKey: .longLat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaV2].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pricePerPiece = try container.decode(ProductStockPriceV2.self, forKey: .pricePerPiece)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemType, forKey: .itemType)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerCount, forKey: .sellerCount)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(specialBadge, forKey: .specialBadge)

            try? container.encodeIfPresent(seller, forKey: .seller)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)

            try? container.encodeIfPresent(articleId, forKey: .articleId)

            try? container.encodeIfPresent(isServiceable, forKey: .isServiceable)

            try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)

            try? container.encodeIfPresent(longLat, forKey: .longLat)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)

            try? container.encodeIfPresent(isCod, forKey: .isCod)
        }
    }
}