

import Foundation
public extension PlatformClient {
    /*
         Model: GetInventories
         Used By: Catalog
     */

    class GetInventories: Codable {
        public var dimension: DimensionResponse

        public var traceId: String?

        public var trader: [Trader2]?

        public var modifiedBy: UserSerializer?

        public var totalQuantity: Int

        public var brand: BrandMeta

        public var fragile: Bool

        public var fyndMeta: [String: Any]?

        public var createdBy: UserSerializer?

        public var itemId: Int

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var inventoryUpdatedOn: String?

        public var returnConfig: ReturnConfig2?

        public var fyndArticleCode: String

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var customJson: [String: Any]?

        public var company: CompanyMeta

        public var countryOfOrigin: String

        public var identifier: [String: Any]

        public var uid: String

        public var taxIdentifier: [String: Any]?

        public var trackInventory: Bool?

        public var addedOnStore: String?

        public var isSet: Bool?

        public var expirationDate: String?

        public var stage: String?

        public var fyndItemCode: String

        public var weight: WeightResponse

        public var sellerIdentifier: String

        public var isActive: Bool?

        public var store: ArticleStoreResponse?

        public var size: String

        public var price: PriceMeta

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case dimension

            case traceId = "trace_id"

            case trader

            case modifiedBy = "modified_by"

            case totalQuantity = "total_quantity"

            case brand

            case fragile

            case fyndMeta = "fynd_meta"

            case createdBy = "created_by"

            case itemId = "item_id"

            case set

            case meta

            case inventoryUpdatedOn = "inventory_updated_on"

            case returnConfig = "return_config"

            case fyndArticleCode = "fynd_article_code"

            case rawMeta = "raw_meta"

            case manufacturer

            case customJson = "_custom_json"

            case company

            case countryOfOrigin = "country_of_origin"

            case identifier

            case uid

            case taxIdentifier = "tax_identifier"

            case trackInventory = "track_inventory"

            case addedOnStore = "added_on_store"

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case stage

            case fyndItemCode = "fynd_item_code"

            case weight

            case sellerIdentifier = "seller_identifier"

            case isActive = "is_active"

            case store

            case size

            case price

            case tags
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], inventoryUpdatedOn: String? = nil, isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: ArticleStoreResponse? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.traceId = traceId

            self.trader = trader

            self.modifiedBy = modifiedBy

            self.totalQuantity = totalQuantity

            self.brand = brand

            self.fragile = fragile

            self.fyndMeta = fyndMeta

            self.createdBy = createdBy

            self.itemId = itemId

            self.set = set

            self.meta = meta

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.returnConfig = returnConfig

            self.fyndArticleCode = fyndArticleCode

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.customJson = customJson

            self.company = company

            self.countryOfOrigin = countryOfOrigin

            self.identifier = identifier

            self.uid = uid

            self.taxIdentifier = taxIdentifier

            self.trackInventory = trackInventory

            self.addedOnStore = addedOnStore

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.weight = weight

            self.sellerIdentifier = sellerIdentifier

            self.isActive = isActive

            self.store = store

            self.size = size

            self.price = price

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode(ArticleStoreResponse.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(tags, forKey: .tags)
        }
    }
}
