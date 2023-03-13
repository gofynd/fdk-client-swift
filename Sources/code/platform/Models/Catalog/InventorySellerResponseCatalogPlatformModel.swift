

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var tags: [String]?

        public var weight: WeightResponse

        public var uid: String

        public var countryOfOrigin: String

        public var traceId: String?

        public var fyndArticleCode: String

        public var sellerIdentifier: String

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var price: PriceMeta

        public var identifier: [String: Any]

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var store: StoreMeta

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var modifiedBy: UserSerializer?

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var itemId: Int

        public var returnConfig: ReturnConfig1?

        public var set: InventorySet?

        public var company: CompanyMeta

        public var stage: String?

        public var trader: [Trader1]?

        public var manufacturer: ManufacturerResponse

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case taxIdentifier = "tax_identifier"

            case meta

            case tags

            case weight

            case uid

            case countryOfOrigin = "country_of_origin"

            case traceId = "trace_id"

            case fyndArticleCode = "fynd_article_code"

            case sellerIdentifier = "seller_identifier"

            case customJson = "_custom_json"

            case brand

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case price

            case identifier

            case isSet = "is_set"

            case createdBy = "created_by"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case store

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case modifiedBy = "modified_by"

            case dimension

            case expirationDate = "expiration_date"

            case itemId = "item_id"

            case returnConfig = "return_config"

            case set

            case company

            case stage

            case trader

            case manufacturer

            case rawMeta = "raw_meta"

            case quantities

            case fragile

            case size
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.tags = tags

            self.weight = weight

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.traceId = traceId

            self.fyndArticleCode = fyndArticleCode

            self.sellerIdentifier = sellerIdentifier

            self.customJson = customJson

            self.brand = brand

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.price = price

            self.identifier = identifier

            self.isSet = isSet

            self.createdBy = createdBy

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.modifiedBy = modifiedBy

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.itemId = itemId

            self.returnConfig = returnConfig

            self.set = set

            self.company = company

            self.stage = stage

            self.trader = trader

            self.manufacturer = manufacturer

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.fragile = fragile

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            uid = try container.decode(String.self, forKey: .uid)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var tags: [String]?

        public var weight: WeightResponse

        public var uid: String

        public var countryOfOrigin: String

        public var traceId: String?

        public var fyndArticleCode: String

        public var sellerIdentifier: String

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var price: PriceMeta

        public var identifier: [String: Any]

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var store: StoreMeta

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var modifiedBy: UserSerializer?

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var itemId: Int

        public var returnConfig: ReturnConfig1?

        public var set: InventorySet?

        public var company: CompanyMeta

        public var stage: String?

        public var trader: [Trader1]?

        public var manufacturer: ManufacturerResponse

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case taxIdentifier = "tax_identifier"

            case meta

            case tags

            case weight

            case uid

            case countryOfOrigin = "country_of_origin"

            case traceId = "trace_id"

            case fyndArticleCode = "fynd_article_code"

            case sellerIdentifier = "seller_identifier"

            case customJson = "_custom_json"

            case brand

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case price

            case identifier

            case isSet = "is_set"

            case createdBy = "created_by"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case store

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case modifiedBy = "modified_by"

            case dimension

            case expirationDate = "expiration_date"

            case itemId = "item_id"

            case returnConfig = "return_config"

            case set

            case company

            case stage

            case trader

            case manufacturer

            case rawMeta = "raw_meta"

            case quantities

            case fragile

            case size
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.tags = tags

            self.weight = weight

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.traceId = traceId

            self.fyndArticleCode = fyndArticleCode

            self.sellerIdentifier = sellerIdentifier

            self.customJson = customJson

            self.brand = brand

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.price = price

            self.identifier = identifier

            self.isSet = isSet

            self.createdBy = createdBy

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.modifiedBy = modifiedBy

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.itemId = itemId

            self.returnConfig = returnConfig

            self.set = set

            self.company = company

            self.stage = stage

            self.trader = trader

            self.manufacturer = manufacturer

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.fragile = fragile

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            uid = try container.decode(String.self, forKey: .uid)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
