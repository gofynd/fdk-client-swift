

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var taxIdentifier: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var size: String

        public var expirationDate: String?

        public var trader: [Trader1]?

        public var tags: [String]?

        public var company: CompanyMeta

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var traceId: String?

        public var quantities: Quantities?

        public var modifiedBy: UserSerializer?

        public var identifier: [String: Any]

        public var customJson: [String: Any]?

        public var set: InventorySet?

        public var uid: String

        public var stage: String?

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var dimension: DimensionResponse

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var trackInventory: Bool?

        public var fragile: Bool

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var isActive: Bool?

        public var brand: BrandMeta

        public var itemId: Int

        public var weight: WeightResponse

        public enum CodingKeys: String, CodingKey {
            case taxIdentifier = "tax_identifier"

            case returnConfig = "return_config"

            case size

            case expirationDate = "expiration_date"

            case trader

            case tags

            case company

            case store

            case meta

            case traceId = "trace_id"

            case quantities

            case modifiedBy = "modified_by"

            case identifier

            case customJson = "_custom_json"

            case set

            case uid

            case stage

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case price

            case sellerIdentifier = "seller_identifier"

            case dimension

            case rawMeta = "raw_meta"

            case manufacturer

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case trackInventory = "track_inventory"

            case fragile

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case isActive = "is_active"

            case brand

            case itemId = "item_id"

            case weight
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.taxIdentifier = taxIdentifier

            self.returnConfig = returnConfig

            self.size = size

            self.expirationDate = expirationDate

            self.trader = trader

            self.tags = tags

            self.company = company

            self.store = store

            self.meta = meta

            self.traceId = traceId

            self.quantities = quantities

            self.modifiedBy = modifiedBy

            self.identifier = identifier

            self.customJson = customJson

            self.set = set

            self.uid = uid

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.dimension = dimension

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.trackInventory = trackInventory

            self.fragile = fragile

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.isActive = isActive

            self.brand = brand

            self.itemId = itemId

            self.weight = weight
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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            weight = try container.decode(WeightResponse.self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(weight, forKey: .weight)
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

        public var returnConfig: ReturnConfig1?

        public var size: String

        public var expirationDate: String?

        public var trader: [Trader1]?

        public var tags: [String]?

        public var company: CompanyMeta

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var traceId: String?

        public var quantities: Quantities?

        public var modifiedBy: UserSerializer?

        public var identifier: [String: Any]

        public var customJson: [String: Any]?

        public var set: InventorySet?

        public var uid: String

        public var stage: String?

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var dimension: DimensionResponse

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var trackInventory: Bool?

        public var fragile: Bool

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var isActive: Bool?

        public var brand: BrandMeta

        public var itemId: Int

        public var weight: WeightResponse

        public enum CodingKeys: String, CodingKey {
            case taxIdentifier = "tax_identifier"

            case returnConfig = "return_config"

            case size

            case expirationDate = "expiration_date"

            case trader

            case tags

            case company

            case store

            case meta

            case traceId = "trace_id"

            case quantities

            case modifiedBy = "modified_by"

            case identifier

            case customJson = "_custom_json"

            case set

            case uid

            case stage

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case price

            case sellerIdentifier = "seller_identifier"

            case dimension

            case rawMeta = "raw_meta"

            case manufacturer

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case trackInventory = "track_inventory"

            case fragile

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case isActive = "is_active"

            case brand

            case itemId = "item_id"

            case weight
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.taxIdentifier = taxIdentifier

            self.returnConfig = returnConfig

            self.size = size

            self.expirationDate = expirationDate

            self.trader = trader

            self.tags = tags

            self.company = company

            self.store = store

            self.meta = meta

            self.traceId = traceId

            self.quantities = quantities

            self.modifiedBy = modifiedBy

            self.identifier = identifier

            self.customJson = customJson

            self.set = set

            self.uid = uid

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.dimension = dimension

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.trackInventory = trackInventory

            self.fragile = fragile

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.isActive = isActive

            self.brand = brand

            self.itemId = itemId

            self.weight = weight
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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            weight = try container.decode(WeightResponse.self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
