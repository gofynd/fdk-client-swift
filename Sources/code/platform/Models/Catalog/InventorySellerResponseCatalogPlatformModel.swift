

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var stage: String?

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var uid: String

        public var fragile: Bool

        public var size: String

        public var set: InventorySet?

        public var itemId: Int

        public var fyndArticleCode: String

        public var price: PriceMeta

        public var rawMeta: [String: Any]?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var meta: [String: Any]?

        public var fyndItemCode: String

        public var expirationDate: String?

        public var quantities: Quantities?

        public var createdBy: UserSerializer?

        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var traceId: String?

        public var isSet: Bool?

        public var identifier: [String: Any]

        public var trackInventory: Bool?

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var isActive: Bool?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var fyndMeta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case stage

            case store

            case customJson = "_custom_json"

            case brand

            case uid

            case fragile

            case size

            case set

            case itemId = "item_id"

            case fyndArticleCode = "fynd_article_code"

            case price

            case rawMeta = "raw_meta"

            case trader

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case meta

            case fyndItemCode = "fynd_item_code"

            case expirationDate = "expiration_date"

            case quantities

            case createdBy = "created_by"

            case weight

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case traceId = "trace_id"

            case isSet = "is_set"

            case identifier

            case trackInventory = "track_inventory"

            case company

            case manufacturer

            case tags

            case isActive = "is_active"

            case addedOnStore = "added_on_store"

            case dimension

            case fyndMeta = "fynd_meta"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.store = store

            self.customJson = customJson

            self.brand = brand

            self.uid = uid

            self.fragile = fragile

            self.size = size

            self.set = set

            self.itemId = itemId

            self.fyndArticleCode = fyndArticleCode

            self.price = price

            self.rawMeta = rawMeta

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.meta = meta

            self.fyndItemCode = fyndItemCode

            self.expirationDate = expirationDate

            self.quantities = quantities

            self.createdBy = createdBy

            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.traceId = traceId

            self.isSet = isSet

            self.identifier = identifier

            self.trackInventory = trackInventory

            self.company = company

            self.manufacturer = manufacturer

            self.tags = tags

            self.isActive = isActive

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.fyndMeta = fyndMeta

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var stage: String?

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var uid: String

        public var fragile: Bool

        public var size: String

        public var set: InventorySet?

        public var itemId: Int

        public var fyndArticleCode: String

        public var price: PriceMeta

        public var rawMeta: [String: Any]?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var meta: [String: Any]?

        public var fyndItemCode: String

        public var expirationDate: String?

        public var quantities: Quantities?

        public var createdBy: UserSerializer?

        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var traceId: String?

        public var isSet: Bool?

        public var identifier: [String: Any]

        public var trackInventory: Bool?

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var isActive: Bool?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var fyndMeta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case stage

            case store

            case customJson = "_custom_json"

            case brand

            case uid

            case fragile

            case size

            case set

            case itemId = "item_id"

            case fyndArticleCode = "fynd_article_code"

            case price

            case rawMeta = "raw_meta"

            case trader

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case meta

            case fyndItemCode = "fynd_item_code"

            case expirationDate = "expiration_date"

            case quantities

            case createdBy = "created_by"

            case weight

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case traceId = "trace_id"

            case isSet = "is_set"

            case identifier

            case trackInventory = "track_inventory"

            case company

            case manufacturer

            case tags

            case isActive = "is_active"

            case addedOnStore = "added_on_store"

            case dimension

            case fyndMeta = "fynd_meta"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.stage = stage

            self.store = store

            self.customJson = customJson

            self.brand = brand

            self.uid = uid

            self.fragile = fragile

            self.size = size

            self.set = set

            self.itemId = itemId

            self.fyndArticleCode = fyndArticleCode

            self.price = price

            self.rawMeta = rawMeta

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.meta = meta

            self.fyndItemCode = fyndItemCode

            self.expirationDate = expirationDate

            self.quantities = quantities

            self.createdBy = createdBy

            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.traceId = traceId

            self.isSet = isSet

            self.identifier = identifier

            self.trackInventory = trackInventory

            self.company = company

            self.manufacturer = manufacturer

            self.tags = tags

            self.isActive = isActive

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.fyndMeta = fyndMeta

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
