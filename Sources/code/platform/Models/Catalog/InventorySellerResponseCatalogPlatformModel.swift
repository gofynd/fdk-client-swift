

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var size: String

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var fyndItemCode: String

        public var trader: [Trader1]?

        public var uid: String

        public var dimension: DimensionResponse

        public var brand: BrandMeta

        public var expirationDate: String?

        public var isSet: Bool?

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var countryOfOrigin: String

        public var taxIdentifier: [String: Any]?

        public var price: PriceMeta

        public var itemId: Int

        public var stage: String?

        public var createdBy: UserSerializer?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var traceId: String?

        public var fyndArticleCode: String

        public var store: StoreMeta

        public var fyndMeta: [String: Any]?

        public var sellerIdentifier: String

        public var trackInventory: Bool?

        public var set: InventorySet?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var addedOnStore: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case fyndItemCode = "fynd_item_code"

            case trader

            case uid

            case dimension

            case brand

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case meta

            case identifier

            case weight

            case manufacturer

            case tags

            case countryOfOrigin = "country_of_origin"

            case taxIdentifier = "tax_identifier"

            case price

            case itemId = "item_id"

            case stage

            case createdBy = "created_by"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case traceId = "trace_id"

            case fyndArticleCode = "fynd_article_code"

            case store

            case fyndMeta = "fynd_meta"

            case sellerIdentifier = "seller_identifier"

            case trackInventory = "track_inventory"

            case set

            case modifiedBy = "modified_by"

            case company

            case fragile

            case rawMeta = "raw_meta"

            case quantities

            case addedOnStore = "added_on_store"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.size = size

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.fyndItemCode = fyndItemCode

            self.trader = trader

            self.uid = uid

            self.dimension = dimension

            self.brand = brand

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.meta = meta

            self.identifier = identifier

            self.weight = weight

            self.manufacturer = manufacturer

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.taxIdentifier = taxIdentifier

            self.price = price

            self.itemId = itemId

            self.stage = stage

            self.createdBy = createdBy

            self.customJson = customJson

            self.isActive = isActive

            self.traceId = traceId

            self.fyndArticleCode = fyndArticleCode

            self.store = store

            self.fyndMeta = fyndMeta

            self.sellerIdentifier = sellerIdentifier

            self.trackInventory = trackInventory

            self.set = set

            self.modifiedBy = modifiedBy

            self.company = company

            self.fragile = fragile

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.addedOnStore = addedOnStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var size: String

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var fyndItemCode: String

        public var trader: [Trader1]?

        public var uid: String

        public var dimension: DimensionResponse

        public var brand: BrandMeta

        public var expirationDate: String?

        public var isSet: Bool?

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var countryOfOrigin: String

        public var taxIdentifier: [String: Any]?

        public var price: PriceMeta

        public var itemId: Int

        public var stage: String?

        public var createdBy: UserSerializer?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var traceId: String?

        public var fyndArticleCode: String

        public var store: StoreMeta

        public var fyndMeta: [String: Any]?

        public var sellerIdentifier: String

        public var trackInventory: Bool?

        public var set: InventorySet?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var addedOnStore: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case fyndItemCode = "fynd_item_code"

            case trader

            case uid

            case dimension

            case brand

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case meta

            case identifier

            case weight

            case manufacturer

            case tags

            case countryOfOrigin = "country_of_origin"

            case taxIdentifier = "tax_identifier"

            case price

            case itemId = "item_id"

            case stage

            case createdBy = "created_by"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case traceId = "trace_id"

            case fyndArticleCode = "fynd_article_code"

            case store

            case fyndMeta = "fynd_meta"

            case sellerIdentifier = "seller_identifier"

            case trackInventory = "track_inventory"

            case set

            case modifiedBy = "modified_by"

            case company

            case fragile

            case rawMeta = "raw_meta"

            case quantities

            case addedOnStore = "added_on_store"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.size = size

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.fyndItemCode = fyndItemCode

            self.trader = trader

            self.uid = uid

            self.dimension = dimension

            self.brand = brand

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.meta = meta

            self.identifier = identifier

            self.weight = weight

            self.manufacturer = manufacturer

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.taxIdentifier = taxIdentifier

            self.price = price

            self.itemId = itemId

            self.stage = stage

            self.createdBy = createdBy

            self.customJson = customJson

            self.isActive = isActive

            self.traceId = traceId

            self.fyndArticleCode = fyndArticleCode

            self.store = store

            self.fyndMeta = fyndMeta

            self.sellerIdentifier = sellerIdentifier

            self.trackInventory = trackInventory

            self.set = set

            self.modifiedBy = modifiedBy

            self.company = company

            self.fragile = fragile

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.addedOnStore = addedOnStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
        }
    }
}
