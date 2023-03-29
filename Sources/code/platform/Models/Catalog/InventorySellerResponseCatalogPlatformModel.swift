

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var brand: BrandMeta

        public var quantities: Quantities?

        public var stage: String?

        public var price: PriceMeta

        public var company: CompanyMeta

        public var store: StoreMeta

        public var expirationDate: String?

        public var uid: String

        public var set: InventorySet?

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var traceId: String?

        public var addedOnStore: String?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var totalQuantity: Int

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var tags: [String]?

        public var meta: [String: Any]?

        public var fyndItemCode: String

        public var manufacturer: ManufacturerResponse

        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var customJson: [String: Any]?

        public var size: String

        public var taxIdentifier: [String: Any]?

        public var identifier: [String: Any]

        public var itemId: Int

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case brand

            case quantities

            case stage

            case price

            case company

            case store

            case expirationDate = "expiration_date"

            case uid

            case set

            case fyndMeta = "fynd_meta"

            case fragile

            case isActive = "is_active"

            case createdBy = "created_by"

            case traceId = "trace_id"

            case addedOnStore = "added_on_store"

            case trader

            case sellerIdentifier = "seller_identifier"

            case weight

            case modifiedBy = "modified_by"

            case totalQuantity = "total_quantity"

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case tags

            case meta

            case fyndItemCode = "fynd_item_code"

            case manufacturer

            case dimension

            case countryOfOrigin = "country_of_origin"

            case customJson = "_custom_json"

            case size

            case taxIdentifier = "tax_identifier"

            case identifier

            case itemId = "item_id"

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.brand = brand

            self.quantities = quantities

            self.stage = stage

            self.price = price

            self.company = company

            self.store = store

            self.expirationDate = expirationDate

            self.uid = uid

            self.set = set

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.isActive = isActive

            self.createdBy = createdBy

            self.traceId = traceId

            self.addedOnStore = addedOnStore

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.totalQuantity = totalQuantity

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.tags = tags

            self.meta = meta

            self.fyndItemCode = fyndItemCode

            self.manufacturer = manufacturer

            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.customJson = customJson

            self.size = size

            self.taxIdentifier = taxIdentifier

            self.identifier = identifier

            self.itemId = itemId

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

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
        public var fyndArticleCode: String

        public var brand: BrandMeta

        public var quantities: Quantities?

        public var stage: String?

        public var price: PriceMeta

        public var company: CompanyMeta

        public var store: StoreMeta

        public var expirationDate: String?

        public var uid: String

        public var set: InventorySet?

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var traceId: String?

        public var addedOnStore: String?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var totalQuantity: Int

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var tags: [String]?

        public var meta: [String: Any]?

        public var fyndItemCode: String

        public var manufacturer: ManufacturerResponse

        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var customJson: [String: Any]?

        public var size: String

        public var taxIdentifier: [String: Any]?

        public var identifier: [String: Any]

        public var itemId: Int

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case brand

            case quantities

            case stage

            case price

            case company

            case store

            case expirationDate = "expiration_date"

            case uid

            case set

            case fyndMeta = "fynd_meta"

            case fragile

            case isActive = "is_active"

            case createdBy = "created_by"

            case traceId = "trace_id"

            case addedOnStore = "added_on_store"

            case trader

            case sellerIdentifier = "seller_identifier"

            case weight

            case modifiedBy = "modified_by"

            case totalQuantity = "total_quantity"

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case tags

            case meta

            case fyndItemCode = "fynd_item_code"

            case manufacturer

            case dimension

            case countryOfOrigin = "country_of_origin"

            case customJson = "_custom_json"

            case size

            case taxIdentifier = "tax_identifier"

            case identifier

            case itemId = "item_id"

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.brand = brand

            self.quantities = quantities

            self.stage = stage

            self.price = price

            self.company = company

            self.store = store

            self.expirationDate = expirationDate

            self.uid = uid

            self.set = set

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.isActive = isActive

            self.createdBy = createdBy

            self.traceId = traceId

            self.addedOnStore = addedOnStore

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.totalQuantity = totalQuantity

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.tags = tags

            self.meta = meta

            self.fyndItemCode = fyndItemCode

            self.manufacturer = manufacturer

            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.customJson = customJson

            self.size = size

            self.taxIdentifier = taxIdentifier

            self.identifier = identifier

            self.itemId = itemId

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                tags = try container.decode([String].self, forKey: .tags)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}
