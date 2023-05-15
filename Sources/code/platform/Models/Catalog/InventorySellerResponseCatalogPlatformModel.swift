

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var identifier: [String: Any]

        public var expirationDate: String?

        public var size: String

        public var manufacturer: ManufacturerResponse

        public var fragile: Bool

        public var weight: WeightResponse

        public var quantities: Quantities?

        public var fyndMeta: [String: Any]?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var traceId: String?

        public var tags: [String]?

        public var price: PriceMeta

        public var uid: String

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var itemId: Int

        public var fyndItemCode: String

        public var createdBy: UserSerializer?

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var rawMeta: [String: Any]?

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var countryOfOrigin: String

        public var stage: String?

        public var set: InventorySet?

        public var returnConfig: ReturnConfig1?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case expirationDate = "expiration_date"

            case size

            case manufacturer

            case fragile

            case weight

            case quantities

            case fyndMeta = "fynd_meta"

            case addedOnStore = "added_on_store"

            case company

            case trader

            case sellerIdentifier = "seller_identifier"

            case traceId = "trace_id"

            case tags

            case price

            case uid

            case dimension

            case totalQuantity = "total_quantity"

            case itemId = "item_id"

            case fyndItemCode = "fynd_item_code"

            case createdBy = "created_by"

            case store

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case rawMeta = "raw_meta"

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case brand

            case countryOfOrigin = "country_of_origin"

            case stage

            case set

            case returnConfig = "return_config"

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.identifier = identifier

            self.expirationDate = expirationDate

            self.size = size

            self.manufacturer = manufacturer

            self.fragile = fragile

            self.weight = weight

            self.quantities = quantities

            self.fyndMeta = fyndMeta

            self.addedOnStore = addedOnStore

            self.company = company

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.traceId = traceId

            self.tags = tags

            self.price = price

            self.uid = uid

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.itemId = itemId

            self.fyndItemCode = fyndItemCode

            self.createdBy = createdBy

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.rawMeta = rawMeta

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.customJson = customJson

            self.brand = brand

            self.countryOfOrigin = countryOfOrigin

            self.stage = stage

            self.set = set

            self.returnConfig = returnConfig

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var identifier: [String: Any]

        public var expirationDate: String?

        public var size: String

        public var manufacturer: ManufacturerResponse

        public var fragile: Bool

        public var weight: WeightResponse

        public var quantities: Quantities?

        public var fyndMeta: [String: Any]?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var traceId: String?

        public var tags: [String]?

        public var price: PriceMeta

        public var uid: String

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var itemId: Int

        public var fyndItemCode: String

        public var createdBy: UserSerializer?

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var rawMeta: [String: Any]?

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var countryOfOrigin: String

        public var stage: String?

        public var set: InventorySet?

        public var returnConfig: ReturnConfig1?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case expirationDate = "expiration_date"

            case size

            case manufacturer

            case fragile

            case weight

            case quantities

            case fyndMeta = "fynd_meta"

            case addedOnStore = "added_on_store"

            case company

            case trader

            case sellerIdentifier = "seller_identifier"

            case traceId = "trace_id"

            case tags

            case price

            case uid

            case dimension

            case totalQuantity = "total_quantity"

            case itemId = "item_id"

            case fyndItemCode = "fynd_item_code"

            case createdBy = "created_by"

            case store

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case rawMeta = "raw_meta"

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case brand

            case countryOfOrigin = "country_of_origin"

            case stage

            case set

            case returnConfig = "return_config"

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.identifier = identifier

            self.expirationDate = expirationDate

            self.size = size

            self.manufacturer = manufacturer

            self.fragile = fragile

            self.weight = weight

            self.quantities = quantities

            self.fyndMeta = fyndMeta

            self.addedOnStore = addedOnStore

            self.company = company

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.traceId = traceId

            self.tags = tags

            self.price = price

            self.uid = uid

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.itemId = itemId

            self.fyndItemCode = fyndItemCode

            self.createdBy = createdBy

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.rawMeta = rawMeta

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.customJson = customJson

            self.brand = brand

            self.countryOfOrigin = countryOfOrigin

            self.stage = stage

            self.set = set

            self.returnConfig = returnConfig

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
