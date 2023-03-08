

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var weight: WeightResponse

        public var trader: [Trader1]?

        public var fyndArticleCode: String

        public var fragile: Bool

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var size: String

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var tags: [String]?

        public var totalQuantity: Int

        public var fyndMeta: [String: Any]?

        public var dimension: DimensionResponse

        public var uid: String

        public var identifier: [String: Any]

        public var fyndItemCode: String

        public var trackInventory: Bool?

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var company: CompanyMeta

        public var itemId: Int

        public var rawMeta: [String: Any]?

        public var addedOnStore: String?

        public var stage: String?

        public var quantities: Quantities?

        public var traceId: String?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case weight

            case trader

            case fyndArticleCode = "fynd_article_code"

            case fragile

            case modifiedBy = "modified_by"

            case price

            case size

            case store

            case customJson = "_custom_json"

            case brand

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case tags

            case totalQuantity = "total_quantity"

            case fyndMeta = "fynd_meta"

            case dimension

            case uid

            case identifier

            case fyndItemCode = "fynd_item_code"

            case trackInventory = "track_inventory"

            case expirationDate = "expiration_date"

            case meta

            case isActive = "is_active"

            case company

            case itemId = "item_id"

            case rawMeta = "raw_meta"

            case addedOnStore = "added_on_store"

            case stage

            case quantities

            case traceId = "trace_id"

            case isSet = "is_set"

            case createdBy = "created_by"

            case taxIdentifier = "tax_identifier"

            case manufacturer

            case set

            case sellerIdentifier = "seller_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.weight = weight

            self.trader = trader

            self.fyndArticleCode = fyndArticleCode

            self.fragile = fragile

            self.modifiedBy = modifiedBy

            self.price = price

            self.size = size

            self.store = store

            self.customJson = customJson

            self.brand = brand

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.tags = tags

            self.totalQuantity = totalQuantity

            self.fyndMeta = fyndMeta

            self.dimension = dimension

            self.uid = uid

            self.identifier = identifier

            self.fyndItemCode = fyndItemCode

            self.trackInventory = trackInventory

            self.expirationDate = expirationDate

            self.meta = meta

            self.isActive = isActive

            self.company = company

            self.itemId = itemId

            self.rawMeta = rawMeta

            self.addedOnStore = addedOnStore

            self.stage = stage

            self.quantities = quantities

            self.traceId = traceId

            self.isSet = isSet

            self.createdBy = createdBy

            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.set = set

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
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

        public var trader: [Trader1]?

        public var fyndArticleCode: String

        public var fragile: Bool

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var size: String

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var tags: [String]?

        public var totalQuantity: Int

        public var fyndMeta: [String: Any]?

        public var dimension: DimensionResponse

        public var uid: String

        public var identifier: [String: Any]

        public var fyndItemCode: String

        public var trackInventory: Bool?

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var isActive: Bool?

        public var company: CompanyMeta

        public var itemId: Int

        public var rawMeta: [String: Any]?

        public var addedOnStore: String?

        public var stage: String?

        public var quantities: Quantities?

        public var traceId: String?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case weight

            case trader

            case fyndArticleCode = "fynd_article_code"

            case fragile

            case modifiedBy = "modified_by"

            case price

            case size

            case store

            case customJson = "_custom_json"

            case brand

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case tags

            case totalQuantity = "total_quantity"

            case fyndMeta = "fynd_meta"

            case dimension

            case uid

            case identifier

            case fyndItemCode = "fynd_item_code"

            case trackInventory = "track_inventory"

            case expirationDate = "expiration_date"

            case meta

            case isActive = "is_active"

            case company

            case itemId = "item_id"

            case rawMeta = "raw_meta"

            case addedOnStore = "added_on_store"

            case stage

            case quantities

            case traceId = "trace_id"

            case isSet = "is_set"

            case createdBy = "created_by"

            case taxIdentifier = "tax_identifier"

            case manufacturer

            case set

            case sellerIdentifier = "seller_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.weight = weight

            self.trader = trader

            self.fyndArticleCode = fyndArticleCode

            self.fragile = fragile

            self.modifiedBy = modifiedBy

            self.price = price

            self.size = size

            self.store = store

            self.customJson = customJson

            self.brand = brand

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.tags = tags

            self.totalQuantity = totalQuantity

            self.fyndMeta = fyndMeta

            self.dimension = dimension

            self.uid = uid

            self.identifier = identifier

            self.fyndItemCode = fyndItemCode

            self.trackInventory = trackInventory

            self.expirationDate = expirationDate

            self.meta = meta

            self.isActive = isActive

            self.company = company

            self.itemId = itemId

            self.rawMeta = rawMeta

            self.addedOnStore = addedOnStore

            self.stage = stage

            self.quantities = quantities

            self.traceId = traceId

            self.isSet = isSet

            self.createdBy = createdBy

            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.set = set

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
