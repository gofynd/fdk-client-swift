

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var rawMeta: [String: Any]?

        public var stage: String?

        public var dimension: DimensionResponse

        public var returnConfig: ReturnConfig1?

        public var addedOnStore: String?

        public var trackInventory: Bool?

        public var tags: [String]?

        public var brand: BrandMeta

        public var quantities: Quantities?

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var price: PriceMeta

        public var identifier: [String: Any]

        public var totalQuantity: Int

        public var store: StoreMeta

        public var fragile: Bool

        public var uid: String

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var isSet: Bool?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var fyndArticleCode: String

        public var size: String

        public var sellerIdentifier: String

        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var itemId: Int

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case rawMeta = "raw_meta"

            case stage

            case dimension

            case returnConfig = "return_config"

            case addedOnStore = "added_on_store"

            case trackInventory = "track_inventory"

            case tags

            case brand

            case quantities

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case company

            case customJson = "_custom_json"

            case manufacturer

            case set

            case price

            case identifier

            case totalQuantity = "total_quantity"

            case store

            case fragile

            case uid

            case trader

            case isActive = "is_active"

            case isSet = "is_set"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case fyndArticleCode = "fynd_article_code"

            case size

            case sellerIdentifier = "seller_identifier"

            case weight

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case expirationDate = "expiration_date"

            case meta

            case itemId = "item_id"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.rawMeta = rawMeta

            self.stage = stage

            self.dimension = dimension

            self.returnConfig = returnConfig

            self.addedOnStore = addedOnStore

            self.trackInventory = trackInventory

            self.tags = tags

            self.brand = brand

            self.quantities = quantities

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.customJson = customJson

            self.manufacturer = manufacturer

            self.set = set

            self.price = price

            self.identifier = identifier

            self.totalQuantity = totalQuantity

            self.store = store

            self.fragile = fragile

            self.uid = uid

            self.trader = trader

            self.isActive = isActive

            self.isSet = isSet

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.fyndArticleCode = fyndArticleCode

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.expirationDate = expirationDate

            self.meta = meta

            self.itemId = itemId

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

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
        public var rawMeta: [String: Any]?

        public var stage: String?

        public var dimension: DimensionResponse

        public var returnConfig: ReturnConfig1?

        public var addedOnStore: String?

        public var trackInventory: Bool?

        public var tags: [String]?

        public var brand: BrandMeta

        public var quantities: Quantities?

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var price: PriceMeta

        public var identifier: [String: Any]

        public var totalQuantity: Int

        public var store: StoreMeta

        public var fragile: Bool

        public var uid: String

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var isSet: Bool?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var fyndArticleCode: String

        public var size: String

        public var sellerIdentifier: String

        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var itemId: Int

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case rawMeta = "raw_meta"

            case stage

            case dimension

            case returnConfig = "return_config"

            case addedOnStore = "added_on_store"

            case trackInventory = "track_inventory"

            case tags

            case brand

            case quantities

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case company

            case customJson = "_custom_json"

            case manufacturer

            case set

            case price

            case identifier

            case totalQuantity = "total_quantity"

            case store

            case fragile

            case uid

            case trader

            case isActive = "is_active"

            case isSet = "is_set"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case fyndArticleCode = "fynd_article_code"

            case size

            case sellerIdentifier = "seller_identifier"

            case weight

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case expirationDate = "expiration_date"

            case meta

            case itemId = "item_id"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.rawMeta = rawMeta

            self.stage = stage

            self.dimension = dimension

            self.returnConfig = returnConfig

            self.addedOnStore = addedOnStore

            self.trackInventory = trackInventory

            self.tags = tags

            self.brand = brand

            self.quantities = quantities

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.customJson = customJson

            self.manufacturer = manufacturer

            self.set = set

            self.price = price

            self.identifier = identifier

            self.totalQuantity = totalQuantity

            self.store = store

            self.fragile = fragile

            self.uid = uid

            self.trader = trader

            self.isActive = isActive

            self.isSet = isSet

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.fyndArticleCode = fyndArticleCode

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.expirationDate = expirationDate

            self.meta = meta

            self.itemId = itemId

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
