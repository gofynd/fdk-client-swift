

import Foundation
public extension PlatformClient {
    /*
         Model: LineItemsArticle
         Used By: Order
     */

    class LineItemsArticle: Codable {
        public var quantities: Quantities?

        public var oldArticleUid: String?

        public var totalQuantity: Int?

        public var manufacturer: Manufacturer?

        public var price: ArticlePrice?

        public var trackInventory: Bool?

        public var company: Company?

        public var isActive: Bool?

        public var dateMeta: FailOrderDateMeta?

        public var fragile: Bool?

        public var marketplaceIdentifiers: MarketplaceIdentifiers?

        public var size: String?

        public var isSet: Bool?

        public var dimension: Dimension?

        public var weight: Weight?

        public var store: Store?

        public var meta: ArticleMeta?

        public var uid: String?

        public var brand: ArticleBrand?

        public var itemId: Int?

        public var fyndArticleCode: String?

        public var id: String?

        public var identifier: LineItemsArticleIdentifier?

        public var sellerIdentifier: String?

        public var fyndItemCode: String?

        public var countryOfOrigin: String?

        public enum CodingKeys: String, CodingKey {
            case quantities

            case oldArticleUid = "old_article_uid"

            case totalQuantity = "total_quantity"

            case manufacturer

            case price

            case trackInventory = "track_inventory"

            case company

            case isActive = "is_active"

            case dateMeta = "date_meta"

            case fragile

            case marketplaceIdentifiers = "marketplace_identifiers"

            case size

            case isSet = "is_set"

            case dimension

            case weight

            case store

            case meta

            case uid

            case brand

            case itemId = "item_id"

            case fyndArticleCode = "fynd_article_code"

            case id = "_id"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"

            case countryOfOrigin = "country_of_origin"
        }

        public init(brand: ArticleBrand? = nil, company: Company? = nil, countryOfOrigin: String? = nil, dateMeta: FailOrderDateMeta? = nil, dimension: Dimension? = nil, fragile: Bool? = nil, fyndArticleCode: String? = nil, fyndItemCode: String? = nil, identifier: LineItemsArticleIdentifier? = nil, isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int? = nil, manufacturer: Manufacturer? = nil, marketplaceIdentifiers: MarketplaceIdentifiers? = nil, meta: ArticleMeta? = nil, oldArticleUid: String? = nil, price: ArticlePrice? = nil, quantities: Quantities? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: Store? = nil, totalQuantity: Int? = nil, trackInventory: Bool? = nil, uid: String? = nil, weight: Weight? = nil, id: String? = nil) {
            self.quantities = quantities

            self.oldArticleUid = oldArticleUid

            self.totalQuantity = totalQuantity

            self.manufacturer = manufacturer

            self.price = price

            self.trackInventory = trackInventory

            self.company = company

            self.isActive = isActive

            self.dateMeta = dateMeta

            self.fragile = fragile

            self.marketplaceIdentifiers = marketplaceIdentifiers

            self.size = size

            self.isSet = isSet

            self.dimension = dimension

            self.weight = weight

            self.store = store

            self.meta = meta

            self.uid = uid

            self.brand = brand

            self.itemId = itemId

            self.fyndArticleCode = fyndArticleCode

            self.id = id

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode

            self.countryOfOrigin = countryOfOrigin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                oldArticleUid = try container.decode(String.self, forKey: .oldArticleUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(ArticlePrice.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(Company.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(FailOrderDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fragile = try container.decode(Bool.self, forKey: .fragile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceIdentifiers = try container.decode(MarketplaceIdentifiers.self, forKey: .marketplaceIdentifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(Dimension.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(Store.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ArticleMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ArticleBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode(LineItemsArticleIdentifier.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(oldArticleUid, forKey: .oldArticleUid)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(marketplaceIdentifiers, forKey: .marketplaceIdentifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
        }
    }
}
