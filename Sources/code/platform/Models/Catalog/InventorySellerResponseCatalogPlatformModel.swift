

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var traceId: String?

        public var isSet: Bool?

        public var fyndMeta: [String: Any]?

        public var sellerIdentifier: String

        public var createdBy: UserSerializer?

        public var stage: String?

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var fragile: Bool

        public var quantities: Quantities?

        public var expirationDate: String?

        public var uid: String

        public var dimension: DimensionResponse

        public var meta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var rawMeta: [String: Any]?

        public var set: InventorySet?

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var store: StoreMeta

        public var company: CompanyMeta

        public var price: PriceMeta

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var size: String

        public var brand: BrandMeta

        public var manufacturer: ManufacturerResponse

        public var itemId: Int

        public var trackInventory: Bool?

        public var fyndArticleCode: String

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case traceId = "trace_id"

            case isSet = "is_set"

            case fyndMeta = "fynd_meta"

            case sellerIdentifier = "seller_identifier"

            case createdBy = "created_by"

            case stage

            case weight

            case customJson = "_custom_json"

            case tags

            case fragile

            case quantities

            case expirationDate = "expiration_date"

            case uid

            case dimension

            case meta

            case taxIdentifier = "tax_identifier"

            case rawMeta = "raw_meta"

            case set

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case identifier

            case returnConfig = "return_config"

            case store

            case company

            case price

            case trader

            case isActive = "is_active"

            case size

            case brand

            case manufacturer

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case fyndArticleCode = "fynd_article_code"

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.traceId = traceId

            self.isSet = isSet

            self.fyndMeta = fyndMeta

            self.sellerIdentifier = sellerIdentifier

            self.createdBy = createdBy

            self.stage = stage

            self.weight = weight

            self.customJson = customJson

            self.tags = tags

            self.fragile = fragile

            self.quantities = quantities

            self.expirationDate = expirationDate

            self.uid = uid

            self.dimension = dimension

            self.meta = meta

            self.taxIdentifier = taxIdentifier

            self.rawMeta = rawMeta

            self.set = set

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.store = store

            self.company = company

            self.price = price

            self.trader = trader

            self.isActive = isActive

            self.size = size

            self.brand = brand

            self.manufacturer = manufacturer

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.fyndArticleCode = fyndArticleCode

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

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
        public var traceId: String?

        public var isSet: Bool?

        public var fyndMeta: [String: Any]?

        public var sellerIdentifier: String

        public var createdBy: UserSerializer?

        public var stage: String?

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var fragile: Bool

        public var quantities: Quantities?

        public var expirationDate: String?

        public var uid: String

        public var dimension: DimensionResponse

        public var meta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var rawMeta: [String: Any]?

        public var set: InventorySet?

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var store: StoreMeta

        public var company: CompanyMeta

        public var price: PriceMeta

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var size: String

        public var brand: BrandMeta

        public var manufacturer: ManufacturerResponse

        public var itemId: Int

        public var trackInventory: Bool?

        public var fyndArticleCode: String

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case traceId = "trace_id"

            case isSet = "is_set"

            case fyndMeta = "fynd_meta"

            case sellerIdentifier = "seller_identifier"

            case createdBy = "created_by"

            case stage

            case weight

            case customJson = "_custom_json"

            case tags

            case fragile

            case quantities

            case expirationDate = "expiration_date"

            case uid

            case dimension

            case meta

            case taxIdentifier = "tax_identifier"

            case rawMeta = "raw_meta"

            case set

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case identifier

            case returnConfig = "return_config"

            case store

            case company

            case price

            case trader

            case isActive = "is_active"

            case size

            case brand

            case manufacturer

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case fyndArticleCode = "fynd_article_code"

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.traceId = traceId

            self.isSet = isSet

            self.fyndMeta = fyndMeta

            self.sellerIdentifier = sellerIdentifier

            self.createdBy = createdBy

            self.stage = stage

            self.weight = weight

            self.customJson = customJson

            self.tags = tags

            self.fragile = fragile

            self.quantities = quantities

            self.expirationDate = expirationDate

            self.uid = uid

            self.dimension = dimension

            self.meta = meta

            self.taxIdentifier = taxIdentifier

            self.rawMeta = rawMeta

            self.set = set

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.store = store

            self.company = company

            self.price = price

            self.trader = trader

            self.isActive = isActive

            self.size = size

            self.brand = brand

            self.manufacturer = manufacturer

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.fyndArticleCode = fyndArticleCode

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
