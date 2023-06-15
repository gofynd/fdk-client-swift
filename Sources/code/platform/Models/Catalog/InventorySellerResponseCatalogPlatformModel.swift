

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isSet: Bool?

        public var meta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var uid: String

        public var stage: String?

        public var modifiedBy: UserSerializer?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var brand: BrandMeta

        public var company: CompanyMeta

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var itemId: Int

        public var size: String

        public var isActive: Bool?

        public var manufacturer: ManufacturerResponse

        public var store: StoreMeta

        public var trackInventory: Bool?

        public var tags: [String]?

        public var expirationDate: String?

        public var returnConfig: ReturnConfig1?

        public var addedOnStore: String?

        public var fyndItemCode: String

        public var set: InventorySet?

        public var traceId: String?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var customJson: [String: Any]?

        public var sellerIdentifier: String

        public var trader: [Trader1]?

        public var createdBy: UserSerializer?

        public var price: PriceMeta

        public var fyndMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case meta

            case taxIdentifier = "tax_identifier"

            case uid

            case stage

            case modifiedBy = "modified_by"

            case fragile

            case rawMeta = "raw_meta"

            case quantities

            case brand

            case company

            case dimension

            case weight

            case itemId = "item_id"

            case size

            case isActive = "is_active"

            case manufacturer

            case store

            case trackInventory = "track_inventory"

            case tags

            case expirationDate = "expiration_date"

            case returnConfig = "return_config"

            case addedOnStore = "added_on_store"

            case fyndItemCode = "fynd_item_code"

            case set

            case traceId = "trace_id"

            case totalQuantity = "total_quantity"

            case identifier

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case customJson = "_custom_json"

            case sellerIdentifier = "seller_identifier"

            case trader

            case createdBy = "created_by"

            case price

            case fyndMeta = "fynd_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isSet = isSet

            self.meta = meta

            self.taxIdentifier = taxIdentifier

            self.uid = uid

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.fragile = fragile

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.brand = brand

            self.company = company

            self.dimension = dimension

            self.weight = weight

            self.itemId = itemId

            self.size = size

            self.isActive = isActive

            self.manufacturer = manufacturer

            self.store = store

            self.trackInventory = trackInventory

            self.tags = tags

            self.expirationDate = expirationDate

            self.returnConfig = returnConfig

            self.addedOnStore = addedOnStore

            self.fyndItemCode = fyndItemCode

            self.set = set

            self.traceId = traceId

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.customJson = customJson

            self.sellerIdentifier = sellerIdentifier

            self.trader = trader

            self.createdBy = createdBy

            self.price = price

            self.fyndMeta = fyndMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            itemId = try container.decode(Int.self, forKey: .itemId)

            size = try container.decode(String.self, forKey: .size)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            store = try container.decode(StoreMeta.self, forKey: .store)

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

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isSet: Bool?

        public var meta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var uid: String

        public var stage: String?

        public var modifiedBy: UserSerializer?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var brand: BrandMeta

        public var company: CompanyMeta

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var itemId: Int

        public var size: String

        public var isActive: Bool?

        public var manufacturer: ManufacturerResponse

        public var store: StoreMeta

        public var trackInventory: Bool?

        public var tags: [String]?

        public var expirationDate: String?

        public var returnConfig: ReturnConfig1?

        public var addedOnStore: String?

        public var fyndItemCode: String

        public var set: InventorySet?

        public var traceId: String?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var customJson: [String: Any]?

        public var sellerIdentifier: String

        public var trader: [Trader1]?

        public var createdBy: UserSerializer?

        public var price: PriceMeta

        public var fyndMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case meta

            case taxIdentifier = "tax_identifier"

            case uid

            case stage

            case modifiedBy = "modified_by"

            case fragile

            case rawMeta = "raw_meta"

            case quantities

            case brand

            case company

            case dimension

            case weight

            case itemId = "item_id"

            case size

            case isActive = "is_active"

            case manufacturer

            case store

            case trackInventory = "track_inventory"

            case tags

            case expirationDate = "expiration_date"

            case returnConfig = "return_config"

            case addedOnStore = "added_on_store"

            case fyndItemCode = "fynd_item_code"

            case set

            case traceId = "trace_id"

            case totalQuantity = "total_quantity"

            case identifier

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case customJson = "_custom_json"

            case sellerIdentifier = "seller_identifier"

            case trader

            case createdBy = "created_by"

            case price

            case fyndMeta = "fynd_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isSet = isSet

            self.meta = meta

            self.taxIdentifier = taxIdentifier

            self.uid = uid

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.fragile = fragile

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.brand = brand

            self.company = company

            self.dimension = dimension

            self.weight = weight

            self.itemId = itemId

            self.size = size

            self.isActive = isActive

            self.manufacturer = manufacturer

            self.store = store

            self.trackInventory = trackInventory

            self.tags = tags

            self.expirationDate = expirationDate

            self.returnConfig = returnConfig

            self.addedOnStore = addedOnStore

            self.fyndItemCode = fyndItemCode

            self.set = set

            self.traceId = traceId

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.customJson = customJson

            self.sellerIdentifier = sellerIdentifier

            self.trader = trader

            self.createdBy = createdBy

            self.price = price

            self.fyndMeta = fyndMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            itemId = try container.decode(Int.self, forKey: .itemId)

            size = try container.decode(String.self, forKey: .size)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            store = try container.decode(StoreMeta.self, forKey: .store)

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

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
        }
    }
}
