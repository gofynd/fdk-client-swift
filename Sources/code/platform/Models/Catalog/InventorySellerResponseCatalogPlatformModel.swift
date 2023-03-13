

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var expirationDate: String?

        public var weight: WeightResponse

        public var company: CompanyMeta

        public var store: StoreMeta

        public var manufacturer: ManufacturerResponse

        public var identifier: [String: Any]

        public var itemId: Int

        public var countryOfOrigin: String

        public var size: String

        public var brand: BrandMeta

        public var isActive: Bool?

        public var set: InventorySet?

        public var price: PriceMeta

        public var rawMeta: [String: Any]?

        public var stage: String?

        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var modifiedBy: UserSerializer?

        public var traceId: String?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var addedOnStore: String?

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var fyndMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var fyndArticleCode: String

        public var fyndItemCode: String

        public var tags: [String]?

        public var trackInventory: Bool?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var dimension: DimensionResponse

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case weight

            case company

            case store

            case manufacturer

            case identifier

            case itemId = "item_id"

            case countryOfOrigin = "country_of_origin"

            case size

            case brand

            case isActive = "is_active"

            case set

            case price

            case rawMeta = "raw_meta"

            case stage

            case taxIdentifier = "tax_identifier"

            case meta

            case sellerIdentifier = "seller_identifier"

            case modifiedBy = "modified_by"

            case traceId = "trace_id"

            case fragile

            case createdBy = "created_by"

            case addedOnStore = "added_on_store"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case quantities

            case fyndMeta = "fynd_meta"

            case returnConfig = "return_config"

            case uid

            case fyndArticleCode = "fynd_article_code"

            case fyndItemCode = "fynd_item_code"

            case tags

            case trackInventory = "track_inventory"

            case trader

            case totalQuantity = "total_quantity"

            case dimension
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.expirationDate = expirationDate

            self.weight = weight

            self.company = company

            self.store = store

            self.manufacturer = manufacturer

            self.identifier = identifier

            self.itemId = itemId

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.brand = brand

            self.isActive = isActive

            self.set = set

            self.price = price

            self.rawMeta = rawMeta

            self.stage = stage

            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.modifiedBy = modifiedBy

            self.traceId = traceId

            self.fragile = fragile

            self.createdBy = createdBy

            self.addedOnStore = addedOnStore

            self.isSet = isSet

            self.customJson = customJson

            self.quantities = quantities

            self.fyndMeta = fyndMeta

            self.returnConfig = returnConfig

            self.uid = uid

            self.fyndArticleCode = fyndArticleCode

            self.fyndItemCode = fyndItemCode

            self.tags = tags

            self.trackInventory = trackInventory

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            store = try container.decode(StoreMeta.self, forKey: .store)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var expirationDate: String?

        public var weight: WeightResponse

        public var company: CompanyMeta

        public var store: StoreMeta

        public var manufacturer: ManufacturerResponse

        public var identifier: [String: Any]

        public var itemId: Int

        public var countryOfOrigin: String

        public var size: String

        public var brand: BrandMeta

        public var isActive: Bool?

        public var set: InventorySet?

        public var price: PriceMeta

        public var rawMeta: [String: Any]?

        public var stage: String?

        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var modifiedBy: UserSerializer?

        public var traceId: String?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var addedOnStore: String?

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var fyndMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var fyndArticleCode: String

        public var fyndItemCode: String

        public var tags: [String]?

        public var trackInventory: Bool?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var dimension: DimensionResponse

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case weight

            case company

            case store

            case manufacturer

            case identifier

            case itemId = "item_id"

            case countryOfOrigin = "country_of_origin"

            case size

            case brand

            case isActive = "is_active"

            case set

            case price

            case rawMeta = "raw_meta"

            case stage

            case taxIdentifier = "tax_identifier"

            case meta

            case sellerIdentifier = "seller_identifier"

            case modifiedBy = "modified_by"

            case traceId = "trace_id"

            case fragile

            case createdBy = "created_by"

            case addedOnStore = "added_on_store"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case quantities

            case fyndMeta = "fynd_meta"

            case returnConfig = "return_config"

            case uid

            case fyndArticleCode = "fynd_article_code"

            case fyndItemCode = "fynd_item_code"

            case tags

            case trackInventory = "track_inventory"

            case trader

            case totalQuantity = "total_quantity"

            case dimension
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.expirationDate = expirationDate

            self.weight = weight

            self.company = company

            self.store = store

            self.manufacturer = manufacturer

            self.identifier = identifier

            self.itemId = itemId

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.brand = brand

            self.isActive = isActive

            self.set = set

            self.price = price

            self.rawMeta = rawMeta

            self.stage = stage

            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.modifiedBy = modifiedBy

            self.traceId = traceId

            self.fragile = fragile

            self.createdBy = createdBy

            self.addedOnStore = addedOnStore

            self.isSet = isSet

            self.customJson = customJson

            self.quantities = quantities

            self.fyndMeta = fyndMeta

            self.returnConfig = returnConfig

            self.uid = uid

            self.fyndArticleCode = fyndArticleCode

            self.fyndItemCode = fyndItemCode

            self.tags = tags

            self.trackInventory = trackInventory

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            store = try container.decode(StoreMeta.self, forKey: .store)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
