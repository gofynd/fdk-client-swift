

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var trackInventory: Bool?

        public var modifiedBy: UserSerializer?

        public var itemId: Int

        public var store: StoreMeta

        public var identifier: [String: Any]

        public var price: PriceMeta

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var createdBy: UserSerializer?

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var stage: String?

        public var traceId: String?

        public var returnConfig: ReturnConfig1?

        public var trader: [Trader1]?

        public var uid: String

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var size: String

        public var isSet: Bool?

        public var expirationDate: String?

        public var fyndItemCode: String

        public var set: InventorySet?

        public var customJson: [String: Any]?

        public var sellerIdentifier: String

        public var fragile: Bool

        public enum CodingKeys: String, CodingKey {
            case meta

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case company

            case trackInventory = "track_inventory"

            case modifiedBy = "modified_by"

            case itemId = "item_id"

            case store

            case identifier

            case price

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case manufacturer

            case tags

            case createdBy = "created_by"

            case fyndMeta = "fynd_meta"

            case quantities

            case stage

            case traceId = "trace_id"

            case returnConfig = "return_config"

            case trader

            case uid

            case brand

            case rawMeta = "raw_meta"

            case weight

            case addedOnStore = "added_on_store"

            case size

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case fyndItemCode = "fynd_item_code"

            case set

            case customJson = "_custom_json"

            case sellerIdentifier = "seller_identifier"

            case fragile
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.meta = meta

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.trackInventory = trackInventory

            self.modifiedBy = modifiedBy

            self.itemId = itemId

            self.store = store

            self.identifier = identifier

            self.price = price

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.manufacturer = manufacturer

            self.tags = tags

            self.createdBy = createdBy

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.stage = stage

            self.traceId = traceId

            self.returnConfig = returnConfig

            self.trader = trader

            self.uid = uid

            self.brand = brand

            self.rawMeta = rawMeta

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.size = size

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.fyndItemCode = fyndItemCode

            self.set = set

            self.customJson = customJson

            self.sellerIdentifier = sellerIdentifier

            self.fragile = fragile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            uid = try container.decode(String.self, forKey: .uid)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var trackInventory: Bool?

        public var modifiedBy: UserSerializer?

        public var itemId: Int

        public var store: StoreMeta

        public var identifier: [String: Any]

        public var price: PriceMeta

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var createdBy: UserSerializer?

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var stage: String?

        public var traceId: String?

        public var returnConfig: ReturnConfig1?

        public var trader: [Trader1]?

        public var uid: String

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var size: String

        public var isSet: Bool?

        public var expirationDate: String?

        public var fyndItemCode: String

        public var set: InventorySet?

        public var customJson: [String: Any]?

        public var sellerIdentifier: String

        public var fragile: Bool

        public enum CodingKeys: String, CodingKey {
            case meta

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case company

            case trackInventory = "track_inventory"

            case modifiedBy = "modified_by"

            case itemId = "item_id"

            case store

            case identifier

            case price

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case manufacturer

            case tags

            case createdBy = "created_by"

            case fyndMeta = "fynd_meta"

            case quantities

            case stage

            case traceId = "trace_id"

            case returnConfig = "return_config"

            case trader

            case uid

            case brand

            case rawMeta = "raw_meta"

            case weight

            case addedOnStore = "added_on_store"

            case size

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case fyndItemCode = "fynd_item_code"

            case set

            case customJson = "_custom_json"

            case sellerIdentifier = "seller_identifier"

            case fragile
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.meta = meta

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.trackInventory = trackInventory

            self.modifiedBy = modifiedBy

            self.itemId = itemId

            self.store = store

            self.identifier = identifier

            self.price = price

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.manufacturer = manufacturer

            self.tags = tags

            self.createdBy = createdBy

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.stage = stage

            self.traceId = traceId

            self.returnConfig = returnConfig

            self.trader = trader

            self.uid = uid

            self.brand = brand

            self.rawMeta = rawMeta

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.size = size

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.fyndItemCode = fyndItemCode

            self.set = set

            self.customJson = customJson

            self.sellerIdentifier = sellerIdentifier

            self.fragile = fragile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            uid = try container.decode(String.self, forKey: .uid)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)
        }
    }
}
