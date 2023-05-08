

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var returnConfig: ReturnConfig1?

        public var fyndItemCode: String

        public var meta: [String: Any]?

        public var store: StoreMeta

        public var totalQuantity: Int

        public var sellerIdentifier: String

        public var company: CompanyMeta

        public var itemId: Int

        public var brand: BrandMeta

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var stage: String?

        public var trackInventory: Bool?

        public var price: PriceMeta

        public var quantities: Quantities?

        public var tags: [String]?

        public var rawMeta: [String: Any]?

        public var fyndArticleCode: String

        public var createdBy: UserSerializer?

        public var trader: [Trader1]?

        public var traceId: String?

        public var taxIdentifier: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var set: InventorySet?

        public var fragile: Bool

        public var size: String

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var identifier: [String: Any]

        public var isActive: Bool?

        public var fyndMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case fyndItemCode = "fynd_item_code"

            case meta

            case store

            case totalQuantity = "total_quantity"

            case sellerIdentifier = "seller_identifier"

            case company

            case itemId = "item_id"

            case brand

            case isSet = "is_set"

            case customJson = "_custom_json"

            case stage

            case trackInventory = "track_inventory"

            case price

            case quantities

            case tags

            case rawMeta = "raw_meta"

            case fyndArticleCode = "fynd_article_code"

            case createdBy = "created_by"

            case trader

            case traceId = "trace_id"

            case taxIdentifier = "tax_identifier"

            case manufacturer

            case uid

            case modifiedBy = "modified_by"

            case set

            case fragile

            case size

            case dimension

            case weight

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case identifier

            case isActive = "is_active"

            case fyndMeta = "fynd_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.fyndItemCode = fyndItemCode

            self.meta = meta

            self.store = store

            self.totalQuantity = totalQuantity

            self.sellerIdentifier = sellerIdentifier

            self.company = company

            self.itemId = itemId

            self.brand = brand

            self.isSet = isSet

            self.customJson = customJson

            self.stage = stage

            self.trackInventory = trackInventory

            self.price = price

            self.quantities = quantities

            self.tags = tags

            self.rawMeta = rawMeta

            self.fyndArticleCode = fyndArticleCode

            self.createdBy = createdBy

            self.trader = trader

            self.traceId = traceId

            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.set = set

            self.fragile = fragile

            self.size = size

            self.dimension = dimension

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.identifier = identifier

            self.isActive = isActive

            self.fyndMeta = fyndMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

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
        public var returnConfig: ReturnConfig1?

        public var fyndItemCode: String

        public var meta: [String: Any]?

        public var store: StoreMeta

        public var totalQuantity: Int

        public var sellerIdentifier: String

        public var company: CompanyMeta

        public var itemId: Int

        public var brand: BrandMeta

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var stage: String?

        public var trackInventory: Bool?

        public var price: PriceMeta

        public var quantities: Quantities?

        public var tags: [String]?

        public var rawMeta: [String: Any]?

        public var fyndArticleCode: String

        public var createdBy: UserSerializer?

        public var trader: [Trader1]?

        public var traceId: String?

        public var taxIdentifier: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var set: InventorySet?

        public var fragile: Bool

        public var size: String

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var identifier: [String: Any]

        public var isActive: Bool?

        public var fyndMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case fyndItemCode = "fynd_item_code"

            case meta

            case store

            case totalQuantity = "total_quantity"

            case sellerIdentifier = "seller_identifier"

            case company

            case itemId = "item_id"

            case brand

            case isSet = "is_set"

            case customJson = "_custom_json"

            case stage

            case trackInventory = "track_inventory"

            case price

            case quantities

            case tags

            case rawMeta = "raw_meta"

            case fyndArticleCode = "fynd_article_code"

            case createdBy = "created_by"

            case trader

            case traceId = "trace_id"

            case taxIdentifier = "tax_identifier"

            case manufacturer

            case uid

            case modifiedBy = "modified_by"

            case set

            case fragile

            case size

            case dimension

            case weight

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case identifier

            case isActive = "is_active"

            case fyndMeta = "fynd_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.fyndItemCode = fyndItemCode

            self.meta = meta

            self.store = store

            self.totalQuantity = totalQuantity

            self.sellerIdentifier = sellerIdentifier

            self.company = company

            self.itemId = itemId

            self.brand = brand

            self.isSet = isSet

            self.customJson = customJson

            self.stage = stage

            self.trackInventory = trackInventory

            self.price = price

            self.quantities = quantities

            self.tags = tags

            self.rawMeta = rawMeta

            self.fyndArticleCode = fyndArticleCode

            self.createdBy = createdBy

            self.trader = trader

            self.traceId = traceId

            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.set = set

            self.fragile = fragile

            self.size = size

            self.dimension = dimension

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.identifier = identifier

            self.isActive = isActive

            self.fyndMeta = fyndMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
        }
    }
}
