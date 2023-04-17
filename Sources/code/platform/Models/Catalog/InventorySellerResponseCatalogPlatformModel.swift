

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var set: InventorySet?

        public var brand: BrandMeta

        public var stage: String?

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var customJson: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var taxIdentifier: [String: Any]?

        public var trader: [Trader1]?

        public var dimension: DimensionResponse

        public var tags: [String]?

        public var isSet: Bool?

        public var fyndArticleCode: String

        public var identifier: [String: Any]

        public var meta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var fyndItemCode: String

        public var trackInventory: Bool?

        public var store: StoreMeta

        public var company: CompanyMeta

        public var weight: WeightResponse

        public var isActive: Bool?

        public var price: PriceMeta

        public var expirationDate: String?

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var size: String

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case set

            case brand

            case stage

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case uid

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case manufacturer

            case taxIdentifier = "tax_identifier"

            case trader

            case dimension

            case tags

            case isSet = "is_set"

            case fyndArticleCode = "fynd_article_code"

            case identifier

            case meta

            case returnConfig = "return_config"

            case fyndItemCode = "fynd_item_code"

            case trackInventory = "track_inventory"

            case store

            case company

            case weight

            case isActive = "is_active"

            case price

            case expirationDate = "expiration_date"

            case rawMeta = "raw_meta"

            case quantities

            case fyndMeta = "fynd_meta"

            case fragile

            case size

            case traceId = "trace_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.set = set

            self.brand = brand

            self.stage = stage

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.manufacturer = manufacturer

            self.taxIdentifier = taxIdentifier

            self.trader = trader

            self.dimension = dimension

            self.tags = tags

            self.isSet = isSet

            self.fyndArticleCode = fyndArticleCode

            self.identifier = identifier

            self.meta = meta

            self.returnConfig = returnConfig

            self.fyndItemCode = fyndItemCode

            self.trackInventory = trackInventory

            self.store = store

            self.company = company

            self.weight = weight

            self.isActive = isActive

            self.price = price

            self.expirationDate = expirationDate

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.size = size

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var set: InventorySet?

        public var brand: BrandMeta

        public var stage: String?

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var customJson: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var taxIdentifier: [String: Any]?

        public var trader: [Trader1]?

        public var dimension: DimensionResponse

        public var tags: [String]?

        public var isSet: Bool?

        public var fyndArticleCode: String

        public var identifier: [String: Any]

        public var meta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var fyndItemCode: String

        public var trackInventory: Bool?

        public var store: StoreMeta

        public var company: CompanyMeta

        public var weight: WeightResponse

        public var isActive: Bool?

        public var price: PriceMeta

        public var expirationDate: String?

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var size: String

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case set

            case brand

            case stage

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case uid

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case manufacturer

            case taxIdentifier = "tax_identifier"

            case trader

            case dimension

            case tags

            case isSet = "is_set"

            case fyndArticleCode = "fynd_article_code"

            case identifier

            case meta

            case returnConfig = "return_config"

            case fyndItemCode = "fynd_item_code"

            case trackInventory = "track_inventory"

            case store

            case company

            case weight

            case isActive = "is_active"

            case price

            case expirationDate = "expiration_date"

            case rawMeta = "raw_meta"

            case quantities

            case fyndMeta = "fynd_meta"

            case fragile

            case size

            case traceId = "trace_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.set = set

            self.brand = brand

            self.stage = stage

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.manufacturer = manufacturer

            self.taxIdentifier = taxIdentifier

            self.trader = trader

            self.dimension = dimension

            self.tags = tags

            self.isSet = isSet

            self.fyndArticleCode = fyndArticleCode

            self.identifier = identifier

            self.meta = meta

            self.returnConfig = returnConfig

            self.fyndItemCode = fyndItemCode

            self.trackInventory = trackInventory

            self.store = store

            self.company = company

            self.weight = weight

            self.isActive = isActive

            self.price = price

            self.expirationDate = expirationDate

            self.rawMeta = rawMeta

            self.quantities = quantities

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.size = size

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }
}
