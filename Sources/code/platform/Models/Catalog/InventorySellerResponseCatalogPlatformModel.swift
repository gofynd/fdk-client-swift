

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var rawMeta: [String: Any]?

        public var totalQuantity: Int

        public var fyndArticleCode: String

        public var addedOnStore: String?

        public var createdBy: UserSerializer?

        public var itemId: Int

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var company: CompanyMeta

        public var identifier: [String: Any]

        public var fragile: Bool

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public var price: PriceMeta

        public var quantities: Quantities?

        public var trackInventory: Bool?

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var countryOfOrigin: String

        public var fyndMeta: [String: Any]?

        public var uid: String

        public var isActive: Bool?

        public var stage: String?

        public var dimension: DimensionResponse

        public var sellerIdentifier: String

        public var manufacturer: ManufacturerResponse

        public var trader: [Trader1]?

        public var tags: [String]?

        public var fyndItemCode: String

        public var expirationDate: String?

        public var traceId: String?

        public var set: InventorySet?

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case rawMeta = "raw_meta"

            case totalQuantity = "total_quantity"

            case fyndArticleCode = "fynd_article_code"

            case addedOnStore = "added_on_store"

            case createdBy = "created_by"

            case itemId = "item_id"

            case store

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case company

            case identifier

            case fragile

            case brand

            case meta

            case price

            case quantities

            case trackInventory = "track_inventory"

            case returnConfig = "return_config"

            case weight

            case modifiedBy = "modified_by"

            case countryOfOrigin = "country_of_origin"

            case fyndMeta = "fynd_meta"

            case uid

            case isActive = "is_active"

            case stage

            case dimension

            case sellerIdentifier = "seller_identifier"

            case manufacturer

            case trader

            case tags

            case fyndItemCode = "fynd_item_code"

            case expirationDate = "expiration_date"

            case traceId = "trace_id"

            case set

            case size
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.rawMeta = rawMeta

            self.totalQuantity = totalQuantity

            self.fyndArticleCode = fyndArticleCode

            self.addedOnStore = addedOnStore

            self.createdBy = createdBy

            self.itemId = itemId

            self.store = store

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.company = company

            self.identifier = identifier

            self.fragile = fragile

            self.brand = brand

            self.meta = meta

            self.price = price

            self.quantities = quantities

            self.trackInventory = trackInventory

            self.returnConfig = returnConfig

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.countryOfOrigin = countryOfOrigin

            self.fyndMeta = fyndMeta

            self.uid = uid

            self.isActive = isActive

            self.stage = stage

            self.dimension = dimension

            self.sellerIdentifier = sellerIdentifier

            self.manufacturer = manufacturer

            self.trader = trader

            self.tags = tags

            self.fyndItemCode = fyndItemCode

            self.expirationDate = expirationDate

            self.traceId = traceId

            self.set = set

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var rawMeta: [String: Any]?

        public var totalQuantity: Int

        public var fyndArticleCode: String

        public var addedOnStore: String?

        public var createdBy: UserSerializer?

        public var itemId: Int

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var company: CompanyMeta

        public var identifier: [String: Any]

        public var fragile: Bool

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public var price: PriceMeta

        public var quantities: Quantities?

        public var trackInventory: Bool?

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var countryOfOrigin: String

        public var fyndMeta: [String: Any]?

        public var uid: String

        public var isActive: Bool?

        public var stage: String?

        public var dimension: DimensionResponse

        public var sellerIdentifier: String

        public var manufacturer: ManufacturerResponse

        public var trader: [Trader1]?

        public var tags: [String]?

        public var fyndItemCode: String

        public var expirationDate: String?

        public var traceId: String?

        public var set: InventorySet?

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case rawMeta = "raw_meta"

            case totalQuantity = "total_quantity"

            case fyndArticleCode = "fynd_article_code"

            case addedOnStore = "added_on_store"

            case createdBy = "created_by"

            case itemId = "item_id"

            case store

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case company

            case identifier

            case fragile

            case brand

            case meta

            case price

            case quantities

            case trackInventory = "track_inventory"

            case returnConfig = "return_config"

            case weight

            case modifiedBy = "modified_by"

            case countryOfOrigin = "country_of_origin"

            case fyndMeta = "fynd_meta"

            case uid

            case isActive = "is_active"

            case stage

            case dimension

            case sellerIdentifier = "seller_identifier"

            case manufacturer

            case trader

            case tags

            case fyndItemCode = "fynd_item_code"

            case expirationDate = "expiration_date"

            case traceId = "trace_id"

            case set

            case size
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.rawMeta = rawMeta

            self.totalQuantity = totalQuantity

            self.fyndArticleCode = fyndArticleCode

            self.addedOnStore = addedOnStore

            self.createdBy = createdBy

            self.itemId = itemId

            self.store = store

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.company = company

            self.identifier = identifier

            self.fragile = fragile

            self.brand = brand

            self.meta = meta

            self.price = price

            self.quantities = quantities

            self.trackInventory = trackInventory

            self.returnConfig = returnConfig

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.countryOfOrigin = countryOfOrigin

            self.fyndMeta = fyndMeta

            self.uid = uid

            self.isActive = isActive

            self.stage = stage

            self.dimension = dimension

            self.sellerIdentifier = sellerIdentifier

            self.manufacturer = manufacturer

            self.trader = trader

            self.tags = tags

            self.fyndItemCode = fyndItemCode

            self.expirationDate = expirationDate

            self.traceId = traceId

            self.set = set

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
