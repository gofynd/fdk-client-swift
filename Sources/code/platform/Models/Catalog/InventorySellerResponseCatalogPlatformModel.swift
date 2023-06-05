

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var trackInventory: Bool?

        public var createdBy: UserSerializer?

        public var isSet: Bool?

        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var uid: String

        public var traceId: String?

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public var brand: BrandMeta

        public var stage: String?

        public var size: String

        public var quantities: Quantities?

        public var company: CompanyMeta

        public var price: PriceMeta

        public var manufacturer: ManufacturerResponse

        public var fyndItemCode: String

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var addedOnStore: String?

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public var countryOfOrigin: String

        public var fragile: Bool

        public var trader: [Trader1]?

        public var expirationDate: String?

        public var tags: [String]?

        public var set: InventorySet?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case identifier

            case trackInventory = "track_inventory"

            case createdBy = "created_by"

            case isSet = "is_set"

            case meta

            case totalQuantity = "total_quantity"

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case store

            case taxIdentifier = "tax_identifier"

            case uid

            case traceId = "trace_id"

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"

            case brand

            case stage

            case size

            case quantities

            case company

            case price

            case manufacturer

            case fyndItemCode = "fynd_item_code"

            case weight

            case modifiedBy = "modified_by"

            case addedOnStore = "added_on_store"

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"

            case countryOfOrigin = "country_of_origin"

            case fragile

            case trader

            case expirationDate = "expiration_date"

            case tags

            case set

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.trackInventory = trackInventory

            self.createdBy = createdBy

            self.isSet = isSet

            self.meta = meta

            self.totalQuantity = totalQuantity

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.uid = uid

            self.traceId = traceId

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.isActive = isActive

            self.brand = brand

            self.stage = stage

            self.size = size

            self.quantities = quantities

            self.company = company

            self.price = price

            self.manufacturer = manufacturer

            self.fyndItemCode = fyndItemCode

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.addedOnStore = addedOnStore

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta

            self.countryOfOrigin = countryOfOrigin

            self.fragile = fragile

            self.trader = trader

            self.expirationDate = expirationDate

            self.tags = tags

            self.set = set

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var trackInventory: Bool?

        public var createdBy: UserSerializer?

        public var isSet: Bool?

        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var uid: String

        public var traceId: String?

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public var brand: BrandMeta

        public var stage: String?

        public var size: String

        public var quantities: Quantities?

        public var company: CompanyMeta

        public var price: PriceMeta

        public var manufacturer: ManufacturerResponse

        public var fyndItemCode: String

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var addedOnStore: String?

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public var countryOfOrigin: String

        public var fragile: Bool

        public var trader: [Trader1]?

        public var expirationDate: String?

        public var tags: [String]?

        public var set: InventorySet?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case identifier

            case trackInventory = "track_inventory"

            case createdBy = "created_by"

            case isSet = "is_set"

            case meta

            case totalQuantity = "total_quantity"

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case store

            case taxIdentifier = "tax_identifier"

            case uid

            case traceId = "trace_id"

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"

            case brand

            case stage

            case size

            case quantities

            case company

            case price

            case manufacturer

            case fyndItemCode = "fynd_item_code"

            case weight

            case modifiedBy = "modified_by"

            case addedOnStore = "added_on_store"

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"

            case countryOfOrigin = "country_of_origin"

            case fragile

            case trader

            case expirationDate = "expiration_date"

            case tags

            case set

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.trackInventory = trackInventory

            self.createdBy = createdBy

            self.isSet = isSet

            self.meta = meta

            self.totalQuantity = totalQuantity

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.uid = uid

            self.traceId = traceId

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.isActive = isActive

            self.brand = brand

            self.stage = stage

            self.size = size

            self.quantities = quantities

            self.company = company

            self.price = price

            self.manufacturer = manufacturer

            self.fyndItemCode = fyndItemCode

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.addedOnStore = addedOnStore

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta

            self.countryOfOrigin = countryOfOrigin

            self.fragile = fragile

            self.trader = trader

            self.expirationDate = expirationDate

            self.tags = tags

            self.set = set

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
