

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var stage: String?

        public var store: StoreMeta

        public var trader: [Trader1]?

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var quantities: Quantities?

        public var modifiedBy: UserSerializer?

        public var tags: [String]?

        public var fyndMeta: [String: Any]?

        public var isSet: Bool?

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var fragile: Bool

        public var traceId: String?

        public var identifier: [String: Any]

        public var meta: [String: Any]?

        public var size: String

        public var rawMeta: [String: Any]?

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var set: InventorySet?

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var returnConfig: ReturnConfig1?

        public var dimension: DimensionResponse

        public var brand: BrandMeta

        public var itemId: Int

        public var taxIdentifier: [String: Any]?

        public var fyndItemCode: String

        public var uid: String

        public var addedOnStore: String?

        public var totalQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case stage

            case store

            case trader

            case company

            case manufacturer

            case quantities

            case modifiedBy = "modified_by"

            case tags

            case fyndMeta = "fynd_meta"

            case isSet = "is_set"

            case isActive = "is_active"

            case createdBy = "created_by"

            case fragile

            case traceId = "trace_id"

            case identifier

            case meta

            case size

            case rawMeta = "raw_meta"

            case weight

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case set

            case price

            case sellerIdentifier = "seller_identifier"

            case returnConfig = "return_config"

            case dimension

            case brand

            case itemId = "item_id"

            case taxIdentifier = "tax_identifier"

            case fyndItemCode = "fynd_item_code"

            case uid

            case addedOnStore = "added_on_store"

            case totalQuantity = "total_quantity"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.stage = stage

            self.store = store

            self.trader = trader

            self.company = company

            self.manufacturer = manufacturer

            self.quantities = quantities

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.fyndMeta = fyndMeta

            self.isSet = isSet

            self.isActive = isActive

            self.createdBy = createdBy

            self.fragile = fragile

            self.traceId = traceId

            self.identifier = identifier

            self.meta = meta

            self.size = size

            self.rawMeta = rawMeta

            self.weight = weight

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.set = set

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.returnConfig = returnConfig

            self.dimension = dimension

            self.brand = brand

            self.itemId = itemId

            self.taxIdentifier = taxIdentifier

            self.fyndItemCode = fyndItemCode

            self.uid = uid

            self.addedOnStore = addedOnStore

            self.totalQuantity = totalQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var stage: String?

        public var store: StoreMeta

        public var trader: [Trader1]?

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var quantities: Quantities?

        public var modifiedBy: UserSerializer?

        public var tags: [String]?

        public var fyndMeta: [String: Any]?

        public var isSet: Bool?

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var fragile: Bool

        public var traceId: String?

        public var identifier: [String: Any]

        public var meta: [String: Any]?

        public var size: String

        public var rawMeta: [String: Any]?

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var set: InventorySet?

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var returnConfig: ReturnConfig1?

        public var dimension: DimensionResponse

        public var brand: BrandMeta

        public var itemId: Int

        public var taxIdentifier: [String: Any]?

        public var fyndItemCode: String

        public var uid: String

        public var addedOnStore: String?

        public var totalQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case stage

            case store

            case trader

            case company

            case manufacturer

            case quantities

            case modifiedBy = "modified_by"

            case tags

            case fyndMeta = "fynd_meta"

            case isSet = "is_set"

            case isActive = "is_active"

            case createdBy = "created_by"

            case fragile

            case traceId = "trace_id"

            case identifier

            case meta

            case size

            case rawMeta = "raw_meta"

            case weight

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case set

            case price

            case sellerIdentifier = "seller_identifier"

            case returnConfig = "return_config"

            case dimension

            case brand

            case itemId = "item_id"

            case taxIdentifier = "tax_identifier"

            case fyndItemCode = "fynd_item_code"

            case uid

            case addedOnStore = "added_on_store"

            case totalQuantity = "total_quantity"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.stage = stage

            self.store = store

            self.trader = trader

            self.company = company

            self.manufacturer = manufacturer

            self.quantities = quantities

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.fyndMeta = fyndMeta

            self.isSet = isSet

            self.isActive = isActive

            self.createdBy = createdBy

            self.fragile = fragile

            self.traceId = traceId

            self.identifier = identifier

            self.meta = meta

            self.size = size

            self.rawMeta = rawMeta

            self.weight = weight

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.set = set

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.returnConfig = returnConfig

            self.dimension = dimension

            self.brand = brand

            self.itemId = itemId

            self.taxIdentifier = taxIdentifier

            self.fyndItemCode = fyndItemCode

            self.uid = uid

            self.addedOnStore = addedOnStore

            self.totalQuantity = totalQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        }
    }
}
