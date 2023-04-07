

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var sellerIdentifier: String

        public var stage: String?

        public var quantities: Quantities?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var tags: [String]?

        public var trader: [Trader1]?

        public var brand: BrandMeta

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var size: String

        public var itemId: Int

        public var taxIdentifier: [String: Any]?

        public var price: PriceMeta

        public var createdBy: UserSerializer?

        public var company: CompanyMeta

        public var totalQuantity: Int

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var modifiedBy: UserSerializer?

        public var traceId: String?

        public var identifier: [String: Any]

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var fragile: Bool

        public var fyndItemCode: String

        public var uid: String

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var fyndArticleCode: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case stage

            case quantities

            case addedOnStore = "added_on_store"

            case dimension

            case weight

            case tags

            case trader

            case brand

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case size

            case itemId = "item_id"

            case taxIdentifier = "tax_identifier"

            case price

            case createdBy = "created_by"

            case company

            case totalQuantity = "total_quantity"

            case manufacturer

            case expirationDate = "expiration_date"

            case modifiedBy = "modified_by"

            case traceId = "trace_id"

            case identifier

            case countryOfOrigin = "country_of_origin"

            case set

            case fragile

            case fyndItemCode = "fynd_item_code"

            case uid

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case store

            case fyndArticleCode = "fynd_article_code"

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.sellerIdentifier = sellerIdentifier

            self.stage = stage

            self.quantities = quantities

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.weight = weight

            self.tags = tags

            self.trader = trader

            self.brand = brand

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta

            self.isSet = isSet

            self.customJson = customJson

            self.size = size

            self.itemId = itemId

            self.taxIdentifier = taxIdentifier

            self.price = price

            self.createdBy = createdBy

            self.company = company

            self.totalQuantity = totalQuantity

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.modifiedBy = modifiedBy

            self.traceId = traceId

            self.identifier = identifier

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.fragile = fragile

            self.fyndItemCode = fyndItemCode

            self.uid = uid

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.store = store

            self.fyndArticleCode = fyndArticleCode

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            uid = try container.decode(String.self, forKey: .uid)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

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
        public var sellerIdentifier: String

        public var stage: String?

        public var quantities: Quantities?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var tags: [String]?

        public var trader: [Trader1]?

        public var brand: BrandMeta

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var size: String

        public var itemId: Int

        public var taxIdentifier: [String: Any]?

        public var price: PriceMeta

        public var createdBy: UserSerializer?

        public var company: CompanyMeta

        public var totalQuantity: Int

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var modifiedBy: UserSerializer?

        public var traceId: String?

        public var identifier: [String: Any]

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var fragile: Bool

        public var fyndItemCode: String

        public var uid: String

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var fyndArticleCode: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case stage

            case quantities

            case addedOnStore = "added_on_store"

            case dimension

            case weight

            case tags

            case trader

            case brand

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case size

            case itemId = "item_id"

            case taxIdentifier = "tax_identifier"

            case price

            case createdBy = "created_by"

            case company

            case totalQuantity = "total_quantity"

            case manufacturer

            case expirationDate = "expiration_date"

            case modifiedBy = "modified_by"

            case traceId = "trace_id"

            case identifier

            case countryOfOrigin = "country_of_origin"

            case set

            case fragile

            case fyndItemCode = "fynd_item_code"

            case uid

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case store

            case fyndArticleCode = "fynd_article_code"

            case meta
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.sellerIdentifier = sellerIdentifier

            self.stage = stage

            self.quantities = quantities

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.weight = weight

            self.tags = tags

            self.trader = trader

            self.brand = brand

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta

            self.isSet = isSet

            self.customJson = customJson

            self.size = size

            self.itemId = itemId

            self.taxIdentifier = taxIdentifier

            self.price = price

            self.createdBy = createdBy

            self.company = company

            self.totalQuantity = totalQuantity

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.modifiedBy = modifiedBy

            self.traceId = traceId

            self.identifier = identifier

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.fragile = fragile

            self.fyndItemCode = fyndItemCode

            self.uid = uid

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.store = store

            self.fyndArticleCode = fyndArticleCode

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            size = try container.decode(String.self, forKey: .size)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            uid = try container.decode(String.self, forKey: .uid)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
