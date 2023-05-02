

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var dimension: DimensionResponse

        public var itemId: Int

        public var expirationDate: String?

        public var addedOnStore: String?

        public var brand: BrandMeta

        public var price: PriceMeta

        public var weight: WeightResponse

        public var meta: [String: Any]?

        public var traceId: String?

        public var returnConfig: ReturnConfig1?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var size: String

        public var store: StoreMeta

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var trader: [Trader1]?

        public var stage: String?

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var set: InventorySet?

        public var createdBy: UserSerializer?

        public var tags: [String]?

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var rawMeta: [String: Any]?

        public var uid: String

        public var fyndItemCode: String

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var fyndArticleCode: String

        public enum CodingKeys: String, CodingKey {
            case dimension

            case itemId = "item_id"

            case expirationDate = "expiration_date"

            case addedOnStore = "added_on_store"

            case brand

            case price

            case weight

            case meta

            case traceId = "trace_id"

            case returnConfig = "return_config"

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case size

            case store

            case totalQuantity = "total_quantity"

            case identifier

            case trader

            case stage

            case manufacturer

            case trackInventory = "track_inventory"

            case set

            case createdBy = "created_by"

            case tags

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case company

            case customJson = "_custom_json"

            case rawMeta = "raw_meta"

            case uid

            case fyndItemCode = "fynd_item_code"

            case fyndMeta = "fynd_meta"

            case quantities

            case fragile

            case fyndArticleCode = "fynd_article_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.itemId = itemId

            self.expirationDate = expirationDate

            self.addedOnStore = addedOnStore

            self.brand = brand

            self.price = price

            self.weight = weight

            self.meta = meta

            self.traceId = traceId

            self.returnConfig = returnConfig

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.store = store

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.trader = trader

            self.stage = stage

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.set = set

            self.createdBy = createdBy

            self.tags = tags

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.company = company

            self.customJson = customJson

            self.rawMeta = rawMeta

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.fragile = fragile

            self.fyndArticleCode = fyndArticleCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            price = try container.decode(PriceMeta.self, forKey: .price)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var dimension: DimensionResponse

        public var itemId: Int

        public var expirationDate: String?

        public var addedOnStore: String?

        public var brand: BrandMeta

        public var price: PriceMeta

        public var weight: WeightResponse

        public var meta: [String: Any]?

        public var traceId: String?

        public var returnConfig: ReturnConfig1?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var size: String

        public var store: StoreMeta

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var trader: [Trader1]?

        public var stage: String?

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var set: InventorySet?

        public var createdBy: UserSerializer?

        public var tags: [String]?

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var rawMeta: [String: Any]?

        public var uid: String

        public var fyndItemCode: String

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var fyndArticleCode: String

        public enum CodingKeys: String, CodingKey {
            case dimension

            case itemId = "item_id"

            case expirationDate = "expiration_date"

            case addedOnStore = "added_on_store"

            case brand

            case price

            case weight

            case meta

            case traceId = "trace_id"

            case returnConfig = "return_config"

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case size

            case store

            case totalQuantity = "total_quantity"

            case identifier

            case trader

            case stage

            case manufacturer

            case trackInventory = "track_inventory"

            case set

            case createdBy = "created_by"

            case tags

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case company

            case customJson = "_custom_json"

            case rawMeta = "raw_meta"

            case uid

            case fyndItemCode = "fynd_item_code"

            case fyndMeta = "fynd_meta"

            case quantities

            case fragile

            case fyndArticleCode = "fynd_article_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.itemId = itemId

            self.expirationDate = expirationDate

            self.addedOnStore = addedOnStore

            self.brand = brand

            self.price = price

            self.weight = weight

            self.meta = meta

            self.traceId = traceId

            self.returnConfig = returnConfig

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.store = store

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.trader = trader

            self.stage = stage

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.set = set

            self.createdBy = createdBy

            self.tags = tags

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.company = company

            self.customJson = customJson

            self.rawMeta = rawMeta

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.fragile = fragile

            self.fyndArticleCode = fyndArticleCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            price = try container.decode(PriceMeta.self, forKey: .price)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
        }
    }
}
