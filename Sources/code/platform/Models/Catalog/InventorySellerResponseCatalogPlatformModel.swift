

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trackInventory: Bool?

        public var price: PriceMeta

        public var itemId: Int

        public var fragile: Bool

        public var modifiedBy: UserSerializer?

        public var weight: WeightResponse

        public var fyndItemCode: String

        public var trader: [Trader1]?

        public var size: String

        public var sellerIdentifier: String

        public var tags: [String]?

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var uid: String

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var dimension: DimensionResponse

        public var manufacturer: ManufacturerResponse

        public var store: StoreMeta

        public var fyndArticleCode: String

        public var createdBy: UserSerializer?

        public var traceId: String?

        public var returnConfig: ReturnConfig1?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var stage: String?

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var isActive: Bool?

        public var rawMeta: [String: Any]?

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trackInventory = "track_inventory"

            case price

            case itemId = "item_id"

            case fragile

            case modifiedBy = "modified_by"

            case weight

            case fyndItemCode = "fynd_item_code"

            case trader

            case size

            case sellerIdentifier = "seller_identifier"

            case tags

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case uid

            case countryOfOrigin = "country_of_origin"

            case set

            case dimension

            case manufacturer

            case store

            case fyndArticleCode = "fynd_article_code"

            case createdBy = "created_by"

            case traceId = "trace_id"

            case returnConfig = "return_config"

            case totalQuantity = "total_quantity"

            case identifier

            case company

            case addedOnStore = "added_on_store"

            case stage

            case customJson = "_custom_json"

            case quantities

            case isActive = "is_active"

            case rawMeta = "raw_meta"

            case brand

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trackInventory = trackInventory

            self.price = price

            self.itemId = itemId

            self.fragile = fragile

            self.modifiedBy = modifiedBy

            self.weight = weight

            self.fyndItemCode = fyndItemCode

            self.trader = trader

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.tags = tags

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.dimension = dimension

            self.manufacturer = manufacturer

            self.store = store

            self.fyndArticleCode = fyndArticleCode

            self.createdBy = createdBy

            self.traceId = traceId

            self.returnConfig = returnConfig

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.company = company

            self.addedOnStore = addedOnStore

            self.stage = stage

            self.customJson = customJson

            self.quantities = quantities

            self.isActive = isActive

            self.rawMeta = rawMeta

            self.brand = brand

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            company = try container.decode(CompanyMeta.self, forKey: .company)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

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
        public var trackInventory: Bool?

        public var price: PriceMeta

        public var itemId: Int

        public var fragile: Bool

        public var modifiedBy: UserSerializer?

        public var weight: WeightResponse

        public var fyndItemCode: String

        public var trader: [Trader1]?

        public var size: String

        public var sellerIdentifier: String

        public var tags: [String]?

        public var taxIdentifier: [String: Any]?

        public var isSet: Bool?

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var uid: String

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var dimension: DimensionResponse

        public var manufacturer: ManufacturerResponse

        public var store: StoreMeta

        public var fyndArticleCode: String

        public var createdBy: UserSerializer?

        public var traceId: String?

        public var returnConfig: ReturnConfig1?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var stage: String?

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var isActive: Bool?

        public var rawMeta: [String: Any]?

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trackInventory = "track_inventory"

            case price

            case itemId = "item_id"

            case fragile

            case modifiedBy = "modified_by"

            case weight

            case fyndItemCode = "fynd_item_code"

            case trader

            case size

            case sellerIdentifier = "seller_identifier"

            case tags

            case taxIdentifier = "tax_identifier"

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case uid

            case countryOfOrigin = "country_of_origin"

            case set

            case dimension

            case manufacturer

            case store

            case fyndArticleCode = "fynd_article_code"

            case createdBy = "created_by"

            case traceId = "trace_id"

            case returnConfig = "return_config"

            case totalQuantity = "total_quantity"

            case identifier

            case company

            case addedOnStore = "added_on_store"

            case stage

            case customJson = "_custom_json"

            case quantities

            case isActive = "is_active"

            case rawMeta = "raw_meta"

            case brand

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trackInventory = trackInventory

            self.price = price

            self.itemId = itemId

            self.fragile = fragile

            self.modifiedBy = modifiedBy

            self.weight = weight

            self.fyndItemCode = fyndItemCode

            self.trader = trader

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.tags = tags

            self.taxIdentifier = taxIdentifier

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.dimension = dimension

            self.manufacturer = manufacturer

            self.store = store

            self.fyndArticleCode = fyndArticleCode

            self.createdBy = createdBy

            self.traceId = traceId

            self.returnConfig = returnConfig

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.company = company

            self.addedOnStore = addedOnStore

            self.stage = stage

            self.customJson = customJson

            self.quantities = quantities

            self.isActive = isActive

            self.rawMeta = rawMeta

            self.brand = brand

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            company = try container.decode(CompanyMeta.self, forKey: .company)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
