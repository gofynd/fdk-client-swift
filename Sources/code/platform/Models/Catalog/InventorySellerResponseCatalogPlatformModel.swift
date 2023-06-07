

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var returnConfig: ReturnConfig1?

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var tags: [String]?

        public var countryOfOrigin: String

        public var itemId: Int

        public var createdBy: UserSerializer?

        public var uid: String

        public var size: String

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var quantities: Quantities?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var trackInventory: Bool?

        public var price: PriceMeta

        public var fyndItemCode: String

        public var taxIdentifier: [String: Any]?

        public var fragile: Bool

        public var identifier: [String: Any]

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var stage: String?

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var store: StoreMeta

        public var traceId: String?

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case brand

            case rawMeta = "raw_meta"

            case tags

            case countryOfOrigin = "country_of_origin"

            case itemId = "item_id"

            case createdBy = "created_by"

            case uid

            case size

            case weight

            case addedOnStore = "added_on_store"

            case company

            case quantities

            case trader

            case totalQuantity = "total_quantity"

            case trackInventory = "track_inventory"

            case price

            case fyndItemCode = "fynd_item_code"

            case taxIdentifier = "tax_identifier"

            case fragile

            case identifier

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case stage

            case dimension

            case expirationDate = "expiration_date"

            case store

            case traceId = "trace_id"

            case set

            case meta

            case manufacturer

            case isActive = "is_active"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.brand = brand

            self.rawMeta = rawMeta

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.itemId = itemId

            self.createdBy = createdBy

            self.uid = uid

            self.size = size

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.company = company

            self.quantities = quantities

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.trackInventory = trackInventory

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.taxIdentifier = taxIdentifier

            self.fragile = fragile

            self.identifier = identifier

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.stage = stage

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.store = store

            self.traceId = traceId

            self.set = set

            self.meta = meta

            self.manufacturer = manufacturer

            self.isActive = isActive

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            size = try container.decode(String.self, forKey: .size)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
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

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var tags: [String]?

        public var countryOfOrigin: String

        public var itemId: Int

        public var createdBy: UserSerializer?

        public var uid: String

        public var size: String

        public var weight: WeightResponse

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var quantities: Quantities?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var trackInventory: Bool?

        public var price: PriceMeta

        public var fyndItemCode: String

        public var taxIdentifier: [String: Any]?

        public var fragile: Bool

        public var identifier: [String: Any]

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var stage: String?

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var store: StoreMeta

        public var traceId: String?

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case brand

            case rawMeta = "raw_meta"

            case tags

            case countryOfOrigin = "country_of_origin"

            case itemId = "item_id"

            case createdBy = "created_by"

            case uid

            case size

            case weight

            case addedOnStore = "added_on_store"

            case company

            case quantities

            case trader

            case totalQuantity = "total_quantity"

            case trackInventory = "track_inventory"

            case price

            case fyndItemCode = "fynd_item_code"

            case taxIdentifier = "tax_identifier"

            case fragile

            case identifier

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case stage

            case dimension

            case expirationDate = "expiration_date"

            case store

            case traceId = "trace_id"

            case set

            case meta

            case manufacturer

            case isActive = "is_active"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.brand = brand

            self.rawMeta = rawMeta

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.itemId = itemId

            self.createdBy = createdBy

            self.uid = uid

            self.size = size

            self.weight = weight

            self.addedOnStore = addedOnStore

            self.company = company

            self.quantities = quantities

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.trackInventory = trackInventory

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.taxIdentifier = taxIdentifier

            self.fragile = fragile

            self.identifier = identifier

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.stage = stage

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.store = store

            self.traceId = traceId

            self.set = set

            self.meta = meta

            self.manufacturer = manufacturer

            self.isActive = isActive

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            size = try container.decode(String.self, forKey: .size)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
