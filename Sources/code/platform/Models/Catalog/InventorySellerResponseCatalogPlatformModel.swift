

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var identifier: [String: Any]

        public var tags: [String]?

        public var addedOnStore: String?

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var meta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var weight: WeightResponse

        public var set: InventorySet?

        public var quantities: Quantities?

        public var traceId: String?

        public var size: String

        public var uid: String

        public var itemId: Int

        public var trackInventory: Bool?

        public var store: StoreMeta

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var fragile: Bool

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var stage: String?

        public var fyndItemCode: String

        public var createdBy: UserSerializer?

        public var returnConfig: ReturnConfig1?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var price: PriceMeta

        public var customJson: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var totalQuantity: Int

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case tags

            case addedOnStore = "added_on_store"

            case brand

            case rawMeta = "raw_meta"

            case fyndMeta = "fynd_meta"

            case meta

            case modifiedBy = "modified_by"

            case manufacturer

            case weight

            case set

            case quantities

            case traceId = "trace_id"

            case size

            case uid

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case store

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case fragile

            case dimension

            case expirationDate = "expiration_date"

            case stage

            case fyndItemCode = "fynd_item_code"

            case createdBy = "created_by"

            case returnConfig = "return_config"

            case trader

            case sellerIdentifier = "seller_identifier"

            case price

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case company

            case totalQuantity = "total_quantity"

            case isActive = "is_active"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.identifier = identifier

            self.tags = tags

            self.addedOnStore = addedOnStore

            self.brand = brand

            self.rawMeta = rawMeta

            self.fyndMeta = fyndMeta

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.weight = weight

            self.set = set

            self.quantities = quantities

            self.traceId = traceId

            self.size = size

            self.uid = uid

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.store = store

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.fragile = fragile

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.createdBy = createdBy

            self.returnConfig = returnConfig

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.price = price

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.totalQuantity = totalQuantity

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var identifier: [String: Any]

        public var tags: [String]?

        public var addedOnStore: String?

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var meta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var weight: WeightResponse

        public var set: InventorySet?

        public var quantities: Quantities?

        public var traceId: String?

        public var size: String

        public var uid: String

        public var itemId: Int

        public var trackInventory: Bool?

        public var store: StoreMeta

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var fragile: Bool

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var stage: String?

        public var fyndItemCode: String

        public var createdBy: UserSerializer?

        public var returnConfig: ReturnConfig1?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var price: PriceMeta

        public var customJson: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var totalQuantity: Int

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case tags

            case addedOnStore = "added_on_store"

            case brand

            case rawMeta = "raw_meta"

            case fyndMeta = "fynd_meta"

            case meta

            case modifiedBy = "modified_by"

            case manufacturer

            case weight

            case set

            case quantities

            case traceId = "trace_id"

            case size

            case uid

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case store

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case fragile

            case dimension

            case expirationDate = "expiration_date"

            case stage

            case fyndItemCode = "fynd_item_code"

            case createdBy = "created_by"

            case returnConfig = "return_config"

            case trader

            case sellerIdentifier = "seller_identifier"

            case price

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case company

            case totalQuantity = "total_quantity"

            case isActive = "is_active"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.identifier = identifier

            self.tags = tags

            self.addedOnStore = addedOnStore

            self.brand = brand

            self.rawMeta = rawMeta

            self.fyndMeta = fyndMeta

            self.meta = meta

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.weight = weight

            self.set = set

            self.quantities = quantities

            self.traceId = traceId

            self.size = size

            self.uid = uid

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.store = store

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.fragile = fragile

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.createdBy = createdBy

            self.returnConfig = returnConfig

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.price = price

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.totalQuantity = totalQuantity

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
