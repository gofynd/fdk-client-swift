

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var totalQuantity: Int

        public var store: StoreMeta

        public var dimension: DimensionResponse

        public var addedOnStore: String?

        public var meta: [String: Any]?

        public var fyndArticleCode: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var trader: [Trader1]?

        public var quantities: Quantities?

        public var uid: String

        public var fyndMeta: [String: Any]?

        public var brand: BrandMeta

        public var isActive: Bool?

        public var fragile: Bool

        public var sellerIdentifier: String

        public var traceId: String?

        public var taxIdentifier: [String: Any]?

        public var customJson: [String: Any]?

        public var countryOfOrigin: String

        public var fyndItemCode: String

        public var modifiedBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var createdBy: UserSerializer?

        public var tags: [String]?

        public var returnConfig: ReturnConfig1?

        public var size: String

        public var stage: String?

        public var price: PriceMeta

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var itemId: Int

        public var identifier: [String: Any]

        public var expirationDate: String?

        public var weight: WeightResponse

        public var company: CompanyMeta

        public enum CodingKeys: String, CodingKey {
            case totalQuantity = "total_quantity"

            case store

            case dimension

            case addedOnStore = "added_on_store"

            case meta

            case fyndArticleCode = "fynd_article_code"

            case set

            case isSet = "is_set"

            case trader

            case quantities

            case uid

            case fyndMeta = "fynd_meta"

            case brand

            case isActive = "is_active"

            case fragile

            case sellerIdentifier = "seller_identifier"

            case traceId = "trace_id"

            case taxIdentifier = "tax_identifier"

            case customJson = "_custom_json"

            case countryOfOrigin = "country_of_origin"

            case fyndItemCode = "fynd_item_code"

            case modifiedBy = "modified_by"

            case rawMeta = "raw_meta"

            case createdBy = "created_by"

            case tags

            case returnConfig = "return_config"

            case size

            case stage

            case price

            case manufacturer

            case trackInventory = "track_inventory"

            case itemId = "item_id"

            case identifier

            case expirationDate = "expiration_date"

            case weight

            case company
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.totalQuantity = totalQuantity

            self.store = store

            self.dimension = dimension

            self.addedOnStore = addedOnStore

            self.meta = meta

            self.fyndArticleCode = fyndArticleCode

            self.set = set

            self.isSet = isSet

            self.trader = trader

            self.quantities = quantities

            self.uid = uid

            self.fyndMeta = fyndMeta

            self.brand = brand

            self.isActive = isActive

            self.fragile = fragile

            self.sellerIdentifier = sellerIdentifier

            self.traceId = traceId

            self.taxIdentifier = taxIdentifier

            self.customJson = customJson

            self.countryOfOrigin = countryOfOrigin

            self.fyndItemCode = fyndItemCode

            self.modifiedBy = modifiedBy

            self.rawMeta = rawMeta

            self.createdBy = createdBy

            self.tags = tags

            self.returnConfig = returnConfig

            self.size = size

            self.stage = stage

            self.price = price

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.itemId = itemId

            self.identifier = identifier

            self.expirationDate = expirationDate

            self.weight = weight

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            company = try container.decode(CompanyMeta.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var totalQuantity: Int

        public var store: StoreMeta

        public var dimension: DimensionResponse

        public var addedOnStore: String?

        public var meta: [String: Any]?

        public var fyndArticleCode: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var trader: [Trader1]?

        public var quantities: Quantities?

        public var uid: String

        public var fyndMeta: [String: Any]?

        public var brand: BrandMeta

        public var isActive: Bool?

        public var fragile: Bool

        public var sellerIdentifier: String

        public var traceId: String?

        public var taxIdentifier: [String: Any]?

        public var customJson: [String: Any]?

        public var countryOfOrigin: String

        public var fyndItemCode: String

        public var modifiedBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var createdBy: UserSerializer?

        public var tags: [String]?

        public var returnConfig: ReturnConfig1?

        public var size: String

        public var stage: String?

        public var price: PriceMeta

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var itemId: Int

        public var identifier: [String: Any]

        public var expirationDate: String?

        public var weight: WeightResponse

        public var company: CompanyMeta

        public enum CodingKeys: String, CodingKey {
            case totalQuantity = "total_quantity"

            case store

            case dimension

            case addedOnStore = "added_on_store"

            case meta

            case fyndArticleCode = "fynd_article_code"

            case set

            case isSet = "is_set"

            case trader

            case quantities

            case uid

            case fyndMeta = "fynd_meta"

            case brand

            case isActive = "is_active"

            case fragile

            case sellerIdentifier = "seller_identifier"

            case traceId = "trace_id"

            case taxIdentifier = "tax_identifier"

            case customJson = "_custom_json"

            case countryOfOrigin = "country_of_origin"

            case fyndItemCode = "fynd_item_code"

            case modifiedBy = "modified_by"

            case rawMeta = "raw_meta"

            case createdBy = "created_by"

            case tags

            case returnConfig = "return_config"

            case size

            case stage

            case price

            case manufacturer

            case trackInventory = "track_inventory"

            case itemId = "item_id"

            case identifier

            case expirationDate = "expiration_date"

            case weight

            case company
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.totalQuantity = totalQuantity

            self.store = store

            self.dimension = dimension

            self.addedOnStore = addedOnStore

            self.meta = meta

            self.fyndArticleCode = fyndArticleCode

            self.set = set

            self.isSet = isSet

            self.trader = trader

            self.quantities = quantities

            self.uid = uid

            self.fyndMeta = fyndMeta

            self.brand = brand

            self.isActive = isActive

            self.fragile = fragile

            self.sellerIdentifier = sellerIdentifier

            self.traceId = traceId

            self.taxIdentifier = taxIdentifier

            self.customJson = customJson

            self.countryOfOrigin = countryOfOrigin

            self.fyndItemCode = fyndItemCode

            self.modifiedBy = modifiedBy

            self.rawMeta = rawMeta

            self.createdBy = createdBy

            self.tags = tags

            self.returnConfig = returnConfig

            self.size = size

            self.stage = stage

            self.price = price

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.itemId = itemId

            self.identifier = identifier

            self.expirationDate = expirationDate

            self.weight = weight

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            company = try container.decode(CompanyMeta.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
