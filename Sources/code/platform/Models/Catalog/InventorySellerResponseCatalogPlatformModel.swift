

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var fyndMeta: [String: Any]?

        public var trackInventory: Bool?

        public var fyndArticleCode: String

        public var dimension: DimensionResponse

        public var isActive: Bool?

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var store: StoreMeta

        public var uid: String

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var stage: String?

        public var size: String

        public var meta: [String: Any]?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var tags: [String]?

        public var set: InventorySet?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var createdBy: UserSerializer?

        public var fyndItemCode: String

        public var countryOfOrigin: String

        public var brand: BrandMeta

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var traceId: String?

        public var trader: [Trader1]?

        public var price: PriceMeta

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case fyndMeta = "fynd_meta"

            case trackInventory = "track_inventory"

            case fyndArticleCode = "fynd_article_code"

            case dimension

            case isActive = "is_active"

            case fragile

            case customJson = "_custom_json"

            case quantities

            case store

            case uid

            case returnConfig = "return_config"

            case weight

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case stage

            case size

            case meta

            case addedOnStore = "added_on_store"

            case company

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case tags

            case set

            case totalQuantity = "total_quantity"

            case identifier

            case createdBy = "created_by"

            case fyndItemCode = "fynd_item_code"

            case countryOfOrigin = "country_of_origin"

            case brand

            case modifiedBy = "modified_by"

            case manufacturer

            case traceId = "trace_id"

            case trader

            case price
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.fyndMeta = fyndMeta

            self.trackInventory = trackInventory

            self.fyndArticleCode = fyndArticleCode

            self.dimension = dimension

            self.isActive = isActive

            self.fragile = fragile

            self.customJson = customJson

            self.quantities = quantities

            self.store = store

            self.uid = uid

            self.returnConfig = returnConfig

            self.weight = weight

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.stage = stage

            self.size = size

            self.meta = meta

            self.addedOnStore = addedOnStore

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.tags = tags

            self.set = set

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.createdBy = createdBy

            self.fyndItemCode = fyndItemCode

            self.countryOfOrigin = countryOfOrigin

            self.brand = brand

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.traceId = traceId

            self.trader = trader

            self.price = price
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            price = try container.decode(PriceMeta.self, forKey: .price)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var fyndMeta: [String: Any]?

        public var trackInventory: Bool?

        public var fyndArticleCode: String

        public var dimension: DimensionResponse

        public var isActive: Bool?

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var store: StoreMeta

        public var uid: String

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var stage: String?

        public var size: String

        public var meta: [String: Any]?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var tags: [String]?

        public var set: InventorySet?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var createdBy: UserSerializer?

        public var fyndItemCode: String

        public var countryOfOrigin: String

        public var brand: BrandMeta

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var traceId: String?

        public var trader: [Trader1]?

        public var price: PriceMeta

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case fyndMeta = "fynd_meta"

            case trackInventory = "track_inventory"

            case fyndArticleCode = "fynd_article_code"

            case dimension

            case isActive = "is_active"

            case fragile

            case customJson = "_custom_json"

            case quantities

            case store

            case uid

            case returnConfig = "return_config"

            case weight

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case stage

            case size

            case meta

            case addedOnStore = "added_on_store"

            case company

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case tags

            case set

            case totalQuantity = "total_quantity"

            case identifier

            case createdBy = "created_by"

            case fyndItemCode = "fynd_item_code"

            case countryOfOrigin = "country_of_origin"

            case brand

            case modifiedBy = "modified_by"

            case manufacturer

            case traceId = "trace_id"

            case trader

            case price
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.fyndMeta = fyndMeta

            self.trackInventory = trackInventory

            self.fyndArticleCode = fyndArticleCode

            self.dimension = dimension

            self.isActive = isActive

            self.fragile = fragile

            self.customJson = customJson

            self.quantities = quantities

            self.store = store

            self.uid = uid

            self.returnConfig = returnConfig

            self.weight = weight

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.stage = stage

            self.size = size

            self.meta = meta

            self.addedOnStore = addedOnStore

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.tags = tags

            self.set = set

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.createdBy = createdBy

            self.fyndItemCode = fyndItemCode

            self.countryOfOrigin = countryOfOrigin

            self.brand = brand

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.traceId = traceId

            self.trader = trader

            self.price = price
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            price = try container.decode(PriceMeta.self, forKey: .price)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}
