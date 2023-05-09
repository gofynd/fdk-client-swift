

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trader: [Trader1]?

        public var price: PriceMeta

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var stage: String?

        public var trackInventory: Bool?

        public var weight: WeightResponse

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var store: StoreMeta

        public var tags: [String]?

        public var fyndArticleCode: String

        public var quantities: Quantities?

        public var brand: BrandMeta

        public var createdBy: UserSerializer?

        public var isActive: Bool?

        public var company: CompanyMeta

        public var fyndItemCode: String

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var identifier: [String: Any]

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var itemId: Int

        public var size: String

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var addedOnStore: String?

        public var uid: String

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case trader

            case price

            case rawMeta = "raw_meta"

            case manufacturer

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case stage

            case trackInventory = "track_inventory"

            case weight

            case fragile

            case customJson = "_custom_json"

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case store

            case tags

            case fyndArticleCode = "fynd_article_code"

            case quantities

            case brand

            case createdBy = "created_by"

            case isActive = "is_active"

            case company

            case fyndItemCode = "fynd_item_code"

            case dimension

            case modifiedBy = "modified_by"

            case identifier

            case countryOfOrigin = "country_of_origin"

            case set

            case meta

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case size

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case addedOnStore = "added_on_store"

            case uid

            case isSet = "is_set"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.price = price

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.stage = stage

            self.trackInventory = trackInventory

            self.weight = weight

            self.fragile = fragile

            self.customJson = customJson

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.store = store

            self.tags = tags

            self.fyndArticleCode = fyndArticleCode

            self.quantities = quantities

            self.brand = brand

            self.createdBy = createdBy

            self.isActive = isActive

            self.company = company

            self.fyndItemCode = fyndItemCode

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.identifier = identifier

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.size = size

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.addedOnStore = addedOnStore

            self.uid = uid

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            size = try container.decode(String.self, forKey: .size)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trader: [Trader1]?

        public var price: PriceMeta

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var stage: String?

        public var trackInventory: Bool?

        public var weight: WeightResponse

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var store: StoreMeta

        public var tags: [String]?

        public var fyndArticleCode: String

        public var quantities: Quantities?

        public var brand: BrandMeta

        public var createdBy: UserSerializer?

        public var isActive: Bool?

        public var company: CompanyMeta

        public var fyndItemCode: String

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var identifier: [String: Any]

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var itemId: Int

        public var size: String

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var addedOnStore: String?

        public var uid: String

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case trader

            case price

            case rawMeta = "raw_meta"

            case manufacturer

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case stage

            case trackInventory = "track_inventory"

            case weight

            case fragile

            case customJson = "_custom_json"

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case store

            case tags

            case fyndArticleCode = "fynd_article_code"

            case quantities

            case brand

            case createdBy = "created_by"

            case isActive = "is_active"

            case company

            case fyndItemCode = "fynd_item_code"

            case dimension

            case modifiedBy = "modified_by"

            case identifier

            case countryOfOrigin = "country_of_origin"

            case set

            case meta

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case size

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case addedOnStore = "added_on_store"

            case uid

            case isSet = "is_set"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.price = price

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.stage = stage

            self.trackInventory = trackInventory

            self.weight = weight

            self.fragile = fragile

            self.customJson = customJson

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.store = store

            self.tags = tags

            self.fyndArticleCode = fyndArticleCode

            self.quantities = quantities

            self.brand = brand

            self.createdBy = createdBy

            self.isActive = isActive

            self.company = company

            self.fyndItemCode = fyndItemCode

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.identifier = identifier

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.size = size

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.addedOnStore = addedOnStore

            self.uid = uid

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            size = try container.decode(String.self, forKey: .size)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
