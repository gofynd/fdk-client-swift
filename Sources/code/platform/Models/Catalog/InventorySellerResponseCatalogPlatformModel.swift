

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fragile: Bool

        public var meta: [String: Any]?

        public var expirationDate: String?

        public var price: PriceMeta

        public var totalQuantity: Int

        public var trader: [Trader1]?

        public var itemId: Int

        public var stage: String?

        public var identifier: [String: Any]

        public var store: StoreMeta

        public var modifiedBy: UserSerializer?

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var fyndArticleCode: String

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var brand: BrandMeta

        public var uid: String

        public var company: CompanyMeta

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var size: String

        public var traceId: String?

        public var countryOfOrigin: String

        public var addedOnStore: String?

        public var customJson: [String: Any]?

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fragile

            case meta

            case expirationDate = "expiration_date"

            case price

            case totalQuantity = "total_quantity"

            case trader

            case itemId = "item_id"

            case stage

            case identifier

            case store

            case modifiedBy = "modified_by"

            case sellerIdentifier = "seller_identifier"

            case set

            case isSet = "is_set"

            case createdBy = "created_by"

            case manufacturer

            case tags

            case fyndArticleCode = "fynd_article_code"

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case brand

            case uid

            case company

            case returnConfig = "return_config"

            case weight

            case taxIdentifier = "tax_identifier"

            case dimension

            case fyndItemCode = "fynd_item_code"

            case quantities

            case size

            case traceId = "trace_id"

            case countryOfOrigin = "country_of_origin"

            case addedOnStore = "added_on_store"

            case customJson = "_custom_json"

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fragile = fragile

            self.meta = meta

            self.expirationDate = expirationDate

            self.price = price

            self.totalQuantity = totalQuantity

            self.trader = trader

            self.itemId = itemId

            self.stage = stage

            self.identifier = identifier

            self.store = store

            self.modifiedBy = modifiedBy

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.isSet = isSet

            self.createdBy = createdBy

            self.manufacturer = manufacturer

            self.tags = tags

            self.fyndArticleCode = fyndArticleCode

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.brand = brand

            self.uid = uid

            self.company = company

            self.returnConfig = returnConfig

            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.size = size

            self.traceId = traceId

            self.countryOfOrigin = countryOfOrigin

            self.addedOnStore = addedOnStore

            self.customJson = customJson

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

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
        public var fragile: Bool

        public var meta: [String: Any]?

        public var expirationDate: String?

        public var price: PriceMeta

        public var totalQuantity: Int

        public var trader: [Trader1]?

        public var itemId: Int

        public var stage: String?

        public var identifier: [String: Any]

        public var store: StoreMeta

        public var modifiedBy: UserSerializer?

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var fyndArticleCode: String

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var brand: BrandMeta

        public var uid: String

        public var company: CompanyMeta

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var size: String

        public var traceId: String?

        public var countryOfOrigin: String

        public var addedOnStore: String?

        public var customJson: [String: Any]?

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fragile

            case meta

            case expirationDate = "expiration_date"

            case price

            case totalQuantity = "total_quantity"

            case trader

            case itemId = "item_id"

            case stage

            case identifier

            case store

            case modifiedBy = "modified_by"

            case sellerIdentifier = "seller_identifier"

            case set

            case isSet = "is_set"

            case createdBy = "created_by"

            case manufacturer

            case tags

            case fyndArticleCode = "fynd_article_code"

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case brand

            case uid

            case company

            case returnConfig = "return_config"

            case weight

            case taxIdentifier = "tax_identifier"

            case dimension

            case fyndItemCode = "fynd_item_code"

            case quantities

            case size

            case traceId = "trace_id"

            case countryOfOrigin = "country_of_origin"

            case addedOnStore = "added_on_store"

            case customJson = "_custom_json"

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fragile = fragile

            self.meta = meta

            self.expirationDate = expirationDate

            self.price = price

            self.totalQuantity = totalQuantity

            self.trader = trader

            self.itemId = itemId

            self.stage = stage

            self.identifier = identifier

            self.store = store

            self.modifiedBy = modifiedBy

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.isSet = isSet

            self.createdBy = createdBy

            self.manufacturer = manufacturer

            self.tags = tags

            self.fyndArticleCode = fyndArticleCode

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.brand = brand

            self.uid = uid

            self.company = company

            self.returnConfig = returnConfig

            self.weight = weight

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.size = size

            self.traceId = traceId

            self.countryOfOrigin = countryOfOrigin

            self.addedOnStore = addedOnStore

            self.customJson = customJson

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}
