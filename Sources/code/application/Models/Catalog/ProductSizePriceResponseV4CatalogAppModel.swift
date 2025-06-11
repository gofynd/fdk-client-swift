

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceResponseV4
        Used By: Catalog
    */
    class ProductSizePriceResponseV4: Codable {
        
        public var store: StoreV3?
        
        public var articleAssignment: ArticleAssignmentV3?
        
        public var isCod: Bool?
        
        public var journeyWisePromise: [JourneyPromiseObject]?
        
        public var strategyWiseListing: [StrategyWiseListingSchemaV3]?
        
        public var quantity: Int?
        
        public var itemType: String?
        
        public var groupedAttributes: [SellerGroupAttributes]?
        
        public var returnConfig: ReturnConfigSchemaV3?
        
        public var articleId: String?
        
        public var isGift: Bool?
        
        public var set: ProductSetV3?
        
        public var pricePerPiece: ProductStockPriceV3?
        
        public var discountMeta: DiscountMeta?
        
        public var discount: String?
        
        public var longLat: [Double]?
        
        public var price: ProductStockPriceV3?
        
        public var pricePerUnit: ProductStockUnitPriceV3?
        
        public var pincode: String?
        
        public var trader: [String]?
        
        public var tags: [String]?
        
        public var isServiceable: Bool?
        
        public var marketplaceAttributes: [MarketPlaceSttributesSchemaV3]?
        
        public var seller: SellerV3?
        
        public var deliveryPromise: PromiseSchema?
        
        public var productName: String?
        
        public var customJson: [String: Any]?
        
        public var error: String?
        
        public var slug: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case store = "store"
            
            case articleAssignment = "article_assignment"
            
            case isCod = "is_cod"
            
            case journeyWisePromise = "journey_wise_promise"
            
            case strategyWiseListing = "strategy_wise_listing"
            
            case quantity = "quantity"
            
            case itemType = "item_type"
            
            case groupedAttributes = "grouped_attributes"
            
            case returnConfig = "return_config"
            
            case articleId = "article_id"
            
            case isGift = "is_gift"
            
            case set = "set"
            
            case pricePerPiece = "price_per_piece"
            
            case discountMeta = "discount_meta"
            
            case discount = "discount"
            
            case longLat = "long_lat"
            
            case price = "price"
            
            case pricePerUnit = "price_per_unit"
            
            case pincode = "pincode"
            
            case trader = "trader"
            
            case tags = "tags"
            
            case isServiceable = "is_serviceable"
            
            case marketplaceAttributes = "marketplace_attributes"
            
            case seller = "seller"
            
            case deliveryPromise = "delivery_promise"
            
            case productName = "product_name"
            
            case customJson = "_custom_json"
            
            case error = "error"
            
            case slug = "slug"
            
            case size = "size"
            
        }

        public init(articleAssignment: ArticleAssignmentV3? = nil, articleId: String? = nil, deliveryPromise: PromiseSchema? = nil, discount: String? = nil, discountMeta: DiscountMeta? = nil, error: String? = nil, groupedAttributes: [SellerGroupAttributes]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, isServiceable: Bool? = nil, itemType: String? = nil, journeyWisePromise: [JourneyPromiseObject]? = nil, longLat: [Double]? = nil, marketplaceAttributes: [MarketPlaceSttributesSchemaV3]? = nil, pincode: String? = nil, price: ProductStockPriceV3? = nil, pricePerPiece: ProductStockPriceV3? = nil, pricePerUnit: ProductStockUnitPriceV3? = nil, productName: String? = nil, quantity: Int? = nil, returnConfig: ReturnConfigSchemaV3? = nil, seller: SellerV3? = nil, set: ProductSetV3? = nil, size: String? = nil, slug: String? = nil, store: StoreV3? = nil, strategyWiseListing: [StrategyWiseListingSchemaV3]? = nil, tags: [String]? = nil, trader: [String]? = nil, customJson: [String: Any]? = nil) {
            
            self.store = store
            
            self.articleAssignment = articleAssignment
            
            self.isCod = isCod
            
            self.journeyWisePromise = journeyWisePromise
            
            self.strategyWiseListing = strategyWiseListing
            
            self.quantity = quantity
            
            self.itemType = itemType
            
            self.groupedAttributes = groupedAttributes
            
            self.returnConfig = returnConfig
            
            self.articleId = articleId
            
            self.isGift = isGift
            
            self.set = set
            
            self.pricePerPiece = pricePerPiece
            
            self.discountMeta = discountMeta
            
            self.discount = discount
            
            self.longLat = longLat
            
            self.price = price
            
            self.pricePerUnit = pricePerUnit
            
            self.pincode = pincode
            
            self.trader = trader
            
            self.tags = tags
            
            self.isServiceable = isServiceable
            
            self.marketplaceAttributes = marketplaceAttributes
            
            self.seller = seller
            
            self.deliveryPromise = deliveryPromise
            
            self.productName = productName
            
            self.customJson = customJson
            
            self.error = error
            
            self.slug = slug
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                store = try container.decode(StoreV3.self, forKey: .store)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleAssignment = try container.decode(ArticleAssignmentV3.self, forKey: .articleAssignment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                journeyWisePromise = try container.decode([JourneyPromiseObject].self, forKey: .journeyWisePromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                strategyWiseListing = try container.decode([StrategyWiseListingSchemaV3].self, forKey: .strategyWiseListing)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                quantity = try container.decode(Int.self, forKey: .quantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemType = try container.decode(String.self, forKey: .itemType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                groupedAttributes = try container.decode([SellerGroupAttributes].self, forKey: .groupedAttributes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnConfig = try container.decode(ReturnConfigSchemaV3.self, forKey: .returnConfig)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleId = try container.decode(String.self, forKey: .articleId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                set = try container.decode(ProductSetV3.self, forKey: .set)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pricePerPiece = try container.decode(ProductStockPriceV3.self, forKey: .pricePerPiece)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discount = try container.decode(String.self, forKey: .discount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longLat = try container.decode([Double].self, forKey: .longLat)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                price = try container.decode(ProductStockPriceV3.self, forKey: .price)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pricePerUnit = try container.decode(ProductStockUnitPriceV3.self, forKey: .pricePerUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pincode = try container.decode(String.self, forKey: .pincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                trader = try container.decode([String].self, forKey: .trader)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isServiceable = try container.decode(Bool.self, forKey: .isServiceable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                marketplaceAttributes = try container.decode([MarketPlaceSttributesSchemaV3].self, forKey: .marketplaceAttributes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                seller = try container.decode(SellerV3.self, forKey: .seller)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryPromise = try container.decode(PromiseSchema.self, forKey: .deliveryPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productName = try container.decode(String.self, forKey: .productName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                error = try container.decode(String.self, forKey: .error)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                size = try container.decode(String.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            try? container.encodeIfPresent(isCod, forKey: .isCod)
            
            
            
            try? container.encodeIfPresent(journeyWisePromise, forKey: .journeyWisePromise)
            
            
            
            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            try? container.encodeIfPresent(groupedAttributes, forKey: .groupedAttributes)
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            try? container.encodeIfPresent(articleId, forKey: .articleId)
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            try? container.encodeIfPresent(pricePerPiece, forKey: .pricePerPiece)
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            try? container.encodeIfPresent(longLat, forKey: .longLat)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(pricePerUnit, forKey: .pricePerUnit)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(trader, forKey: .trader)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(isServiceable, forKey: .isServiceable)
            
            
            
            try? container.encodeIfPresent(marketplaceAttributes, forKey: .marketplaceAttributes)
            
            
            
            try? container.encodeIfPresent(seller, forKey: .seller)
            
            
            
            try? container.encodeIfPresent(deliveryPromise, forKey: .deliveryPromise)
            
            
            
            try? container.encodeIfPresent(productName, forKey: .productName)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}
