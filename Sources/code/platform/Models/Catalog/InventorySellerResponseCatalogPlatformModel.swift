

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var expirationDate: String?

        public var size: String

        public var identifier: [String: Any]

        public var customJson: [String: Any]?

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var meta: [String: Any]?

        public var trader: [Trader1]?

        public var fragile: Bool

        public var trackInventory: Bool?

        public var traceId: String?

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var stage: String?

        public var price: PriceMeta

        public var fyndMeta: [String: Any]?

        public var totalQuantity: Int

        public var set: InventorySet?

        public var itemId: Int

        public var store: StoreMeta

        public var sellerIdentifier: String

        public var fyndItemCode: String

        public var isSet: Bool?

        public var tags: [String]?

        public var manufacturer: ManufacturerResponse

        public var brand: BrandMeta

        public var dimension: DimensionResponse

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var fyndArticleCode: String

        public enum CodingKeys: String, CodingKey {
            case weight

            case taxIdentifier = "tax_identifier"

            case expirationDate = "expiration_date"

            case size

            case identifier

            case customJson = "_custom_json"

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case meta

            case trader

            case fragile

            case trackInventory = "track_inventory"

            case traceId = "trace_id"

            case quantities

            case rawMeta = "raw_meta"

            case company

            case createdBy = "created_by"

            case stage

            case price

            case fyndMeta = "fynd_meta"

            case totalQuantity = "total_quantity"

            case set

            case itemId = "item_id"

            case store

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"

            case isSet = "is_set"

            case tags

            case manufacturer

            case brand

            case dimension

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case returnConfig = "return_config"

            case uid

            case fyndArticleCode = "fynd_article_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.expirationDate = expirationDate

            self.size = size

            self.identifier = identifier

            self.customJson = customJson

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.meta = meta

            self.trader = trader

            self.fragile = fragile

            self.trackInventory = trackInventory

            self.traceId = traceId

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.company = company

            self.createdBy = createdBy

            self.stage = stage

            self.price = price

            self.fyndMeta = fyndMeta

            self.totalQuantity = totalQuantity

            self.set = set

            self.itemId = itemId

            self.store = store

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode

            self.isSet = isSet

            self.tags = tags

            self.manufacturer = manufacturer

            self.brand = brand

            self.dimension = dimension

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.returnConfig = returnConfig

            self.uid = uid

            self.fyndArticleCode = fyndArticleCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            size = try container.decode(String.self, forKey: .size)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

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
        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var expirationDate: String?

        public var size: String

        public var identifier: [String: Any]

        public var customJson: [String: Any]?

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var meta: [String: Any]?

        public var trader: [Trader1]?

        public var fragile: Bool

        public var trackInventory: Bool?

        public var traceId: String?

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var stage: String?

        public var price: PriceMeta

        public var fyndMeta: [String: Any]?

        public var totalQuantity: Int

        public var set: InventorySet?

        public var itemId: Int

        public var store: StoreMeta

        public var sellerIdentifier: String

        public var fyndItemCode: String

        public var isSet: Bool?

        public var tags: [String]?

        public var manufacturer: ManufacturerResponse

        public var brand: BrandMeta

        public var dimension: DimensionResponse

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var fyndArticleCode: String

        public enum CodingKeys: String, CodingKey {
            case weight

            case taxIdentifier = "tax_identifier"

            case expirationDate = "expiration_date"

            case size

            case identifier

            case customJson = "_custom_json"

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case meta

            case trader

            case fragile

            case trackInventory = "track_inventory"

            case traceId = "trace_id"

            case quantities

            case rawMeta = "raw_meta"

            case company

            case createdBy = "created_by"

            case stage

            case price

            case fyndMeta = "fynd_meta"

            case totalQuantity = "total_quantity"

            case set

            case itemId = "item_id"

            case store

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"

            case isSet = "is_set"

            case tags

            case manufacturer

            case brand

            case dimension

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case returnConfig = "return_config"

            case uid

            case fyndArticleCode = "fynd_article_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.expirationDate = expirationDate

            self.size = size

            self.identifier = identifier

            self.customJson = customJson

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.meta = meta

            self.trader = trader

            self.fragile = fragile

            self.trackInventory = trackInventory

            self.traceId = traceId

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.company = company

            self.createdBy = createdBy

            self.stage = stage

            self.price = price

            self.fyndMeta = fyndMeta

            self.totalQuantity = totalQuantity

            self.set = set

            self.itemId = itemId

            self.store = store

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode

            self.isSet = isSet

            self.tags = tags

            self.manufacturer = manufacturer

            self.brand = brand

            self.dimension = dimension

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.returnConfig = returnConfig

            self.uid = uid

            self.fyndArticleCode = fyndArticleCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            size = try container.decode(String.self, forKey: .size)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
        }
    }
}
