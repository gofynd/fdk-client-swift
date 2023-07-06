

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trader: [Trader1]?

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var tags: [String]?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var addedOnStore: String?

        public var traceId: String?

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var set: InventorySet?

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var store: StoreMeta

        public var isActive: Bool?

        public var isSet: Bool?

        public var uid: String

        public var createdBy: UserSerializer?

        public var size: String

        public var fyndMeta: [String: Any]?

        public var stage: String?

        public var itemId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var brand: BrandMeta

        public var fyndItemCode: String

        public var company: CompanyMeta

        public var weight: WeightResponse

        public var returnConfig: ReturnConfig1?

        public var manufacturer: ManufacturerResponse

        public var price: PriceMeta

        public var fyndArticleCode: String

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trader

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case tags

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case addedOnStore = "added_on_store"

            case traceId = "trace_id"

            case dimension

            case modifiedBy = "modified_by"

            case set

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case store

            case isActive = "is_active"

            case isSet = "is_set"

            case uid

            case createdBy = "created_by"

            case size

            case fyndMeta = "fynd_meta"

            case stage

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case brand

            case fyndItemCode = "fynd_item_code"

            case company

            case weight

            case returnConfig = "return_config"

            case manufacturer

            case price

            case fyndArticleCode = "fynd_article_code"

            case meta

            case quantities

            case fragile

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.tags = tags

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.addedOnStore = addedOnStore

            self.traceId = traceId

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.set = set

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.store = store

            self.isActive = isActive

            self.isSet = isSet

            self.uid = uid

            self.createdBy = createdBy

            self.size = size

            self.fyndMeta = fyndMeta

            self.stage = stage

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.brand = brand

            self.fyndItemCode = fyndItemCode

            self.company = company

            self.weight = weight

            self.returnConfig = returnConfig

            self.manufacturer = manufacturer

            self.price = price

            self.fyndArticleCode = fyndArticleCode

            self.meta = meta

            self.quantities = quantities

            self.fragile = fragile

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trader: [Trader1]?

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var tags: [String]?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var addedOnStore: String?

        public var traceId: String?

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var set: InventorySet?

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var store: StoreMeta

        public var isActive: Bool?

        public var isSet: Bool?

        public var uid: String

        public var createdBy: UserSerializer?

        public var size: String

        public var fyndMeta: [String: Any]?

        public var stage: String?

        public var itemId: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var brand: BrandMeta

        public var fyndItemCode: String

        public var company: CompanyMeta

        public var weight: WeightResponse

        public var returnConfig: ReturnConfig1?

        public var manufacturer: ManufacturerResponse

        public var price: PriceMeta

        public var fyndArticleCode: String

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trader

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case tags

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case addedOnStore = "added_on_store"

            case traceId = "trace_id"

            case dimension

            case modifiedBy = "modified_by"

            case set

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case store

            case isActive = "is_active"

            case isSet = "is_set"

            case uid

            case createdBy = "created_by"

            case size

            case fyndMeta = "fynd_meta"

            case stage

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case brand

            case fyndItemCode = "fynd_item_code"

            case company

            case weight

            case returnConfig = "return_config"

            case manufacturer

            case price

            case fyndArticleCode = "fynd_article_code"

            case meta

            case quantities

            case fragile

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.tags = tags

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.addedOnStore = addedOnStore

            self.traceId = traceId

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.set = set

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.store = store

            self.isActive = isActive

            self.isSet = isSet

            self.uid = uid

            self.createdBy = createdBy

            self.size = size

            self.fyndMeta = fyndMeta

            self.stage = stage

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.brand = brand

            self.fyndItemCode = fyndItemCode

            self.company = company

            self.weight = weight

            self.returnConfig = returnConfig

            self.manufacturer = manufacturer

            self.price = price

            self.fyndArticleCode = fyndArticleCode

            self.meta = meta

            self.quantities = quantities

            self.fragile = fragile

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}
