

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var set: InventorySet?

        public var uid: String

        public var identifier: [String: Any]

        public var modifiedBy: UserSerializer?

        public var tags: [String]?

        public var isActive: Bool?

        public var traceId: String?

        public var fyndArticleCode: String

        public var customJson: [String: Any]?

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var sellerIdentifier: String

        public var fyndItemCode: String

        public var stage: String?

        public var size: String

        public var itemId: Int

        public var taxIdentifier: [String: Any]?

        public var weight: WeightResponse

        public var store: StoreMeta

        public var brand: BrandMeta

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var price: PriceMeta

        public var expirationDate: String?

        public var isSet: Bool?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case fragile

            case createdBy = "created_by"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case quantities

            case set

            case uid

            case identifier

            case modifiedBy = "modified_by"

            case tags

            case isActive = "is_active"

            case traceId = "trace_id"

            case fyndArticleCode = "fynd_article_code"

            case customJson = "_custom_json"

            case dimension

            case totalQuantity = "total_quantity"

            case trader

            case rawMeta = "raw_meta"

            case manufacturer

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"

            case stage

            case size

            case itemId = "item_id"

            case taxIdentifier = "tax_identifier"

            case weight

            case store

            case brand

            case company

            case addedOnStore = "added_on_store"

            case price

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.fragile = fragile

            self.createdBy = createdBy

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.set = set

            self.uid = uid

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.isActive = isActive

            self.traceId = traceId

            self.fyndArticleCode = fyndArticleCode

            self.customJson = customJson

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.trader = trader

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode

            self.stage = stage

            self.size = size

            self.itemId = itemId

            self.taxIdentifier = taxIdentifier

            self.weight = weight

            self.store = store

            self.brand = brand

            self.company = company

            self.addedOnStore = addedOnStore

            self.price = price

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            store = try container.decode(StoreMeta.self, forKey: .store)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var set: InventorySet?

        public var uid: String

        public var identifier: [String: Any]

        public var modifiedBy: UserSerializer?

        public var tags: [String]?

        public var isActive: Bool?

        public var traceId: String?

        public var fyndArticleCode: String

        public var customJson: [String: Any]?

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var sellerIdentifier: String

        public var fyndItemCode: String

        public var stage: String?

        public var size: String

        public var itemId: Int

        public var taxIdentifier: [String: Any]?

        public var weight: WeightResponse

        public var store: StoreMeta

        public var brand: BrandMeta

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var price: PriceMeta

        public var expirationDate: String?

        public var isSet: Bool?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case fragile

            case createdBy = "created_by"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case quantities

            case set

            case uid

            case identifier

            case modifiedBy = "modified_by"

            case tags

            case isActive = "is_active"

            case traceId = "trace_id"

            case fyndArticleCode = "fynd_article_code"

            case customJson = "_custom_json"

            case dimension

            case totalQuantity = "total_quantity"

            case trader

            case rawMeta = "raw_meta"

            case manufacturer

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"

            case stage

            case size

            case itemId = "item_id"

            case taxIdentifier = "tax_identifier"

            case weight

            case store

            case brand

            case company

            case addedOnStore = "added_on_store"

            case price

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.fragile = fragile

            self.createdBy = createdBy

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.set = set

            self.uid = uid

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.isActive = isActive

            self.traceId = traceId

            self.fyndArticleCode = fyndArticleCode

            self.customJson = customJson

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.trader = trader

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode

            self.stage = stage

            self.size = size

            self.itemId = itemId

            self.taxIdentifier = taxIdentifier

            self.weight = weight

            self.store = store

            self.brand = brand

            self.company = company

            self.addedOnStore = addedOnStore

            self.price = price

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            store = try container.decode(StoreMeta.self, forKey: .store)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
