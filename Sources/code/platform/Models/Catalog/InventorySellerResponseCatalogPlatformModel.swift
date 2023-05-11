

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var returnConfig: ReturnConfig1?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var identifier: [String: Any]

        public var set: InventorySet?

        public var trackInventory: Bool?

        public var addedOnStore: String?

        public var tags: [String]?

        public var expirationDate: String?

        public var dimension: DimensionResponse

        public var meta: [String: Any]?

        public var fyndArticleCode: String

        public var brand: BrandMeta

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var fyndItemCode: String

        public var store: StoreMeta

        public var quantities: Quantities?

        public var size: String

        public var stage: String?

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public var totalQuantity: Int

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var uid: String

        public var itemId: Int

        public var rawMeta: [String: Any]?

        public var price: PriceMeta

        public var trader: [Trader1]?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case fragile

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case identifier

            case set

            case trackInventory = "track_inventory"

            case addedOnStore = "added_on_store"

            case tags

            case expirationDate = "expiration_date"

            case dimension

            case meta

            case fyndArticleCode = "fynd_article_code"

            case brand

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case company

            case fyndItemCode = "fynd_item_code"

            case store

            case quantities

            case size

            case stage

            case weight

            case manufacturer

            case totalQuantity = "total_quantity"

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case uid

            case itemId = "item_id"

            case rawMeta = "raw_meta"

            case price

            case trader
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.fragile = fragile

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.identifier = identifier

            self.set = set

            self.trackInventory = trackInventory

            self.addedOnStore = addedOnStore

            self.tags = tags

            self.expirationDate = expirationDate

            self.dimension = dimension

            self.meta = meta

            self.fyndArticleCode = fyndArticleCode

            self.brand = brand

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.company = company

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.quantities = quantities

            self.size = size

            self.stage = stage

            self.weight = weight

            self.manufacturer = manufacturer

            self.totalQuantity = totalQuantity

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.uid = uid

            self.itemId = itemId

            self.rawMeta = rawMeta

            self.price = price

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(trader, forKey: .trader)
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

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var identifier: [String: Any]

        public var set: InventorySet?

        public var trackInventory: Bool?

        public var addedOnStore: String?

        public var tags: [String]?

        public var expirationDate: String?

        public var dimension: DimensionResponse

        public var meta: [String: Any]?

        public var fyndArticleCode: String

        public var brand: BrandMeta

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var fyndItemCode: String

        public var store: StoreMeta

        public var quantities: Quantities?

        public var size: String

        public var stage: String?

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public var totalQuantity: Int

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var uid: String

        public var itemId: Int

        public var rawMeta: [String: Any]?

        public var price: PriceMeta

        public var trader: [Trader1]?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case fragile

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case identifier

            case set

            case trackInventory = "track_inventory"

            case addedOnStore = "added_on_store"

            case tags

            case expirationDate = "expiration_date"

            case dimension

            case meta

            case fyndArticleCode = "fynd_article_code"

            case brand

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case company

            case fyndItemCode = "fynd_item_code"

            case store

            case quantities

            case size

            case stage

            case weight

            case manufacturer

            case totalQuantity = "total_quantity"

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case uid

            case itemId = "item_id"

            case rawMeta = "raw_meta"

            case price

            case trader
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.fragile = fragile

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.identifier = identifier

            self.set = set

            self.trackInventory = trackInventory

            self.addedOnStore = addedOnStore

            self.tags = tags

            self.expirationDate = expirationDate

            self.dimension = dimension

            self.meta = meta

            self.fyndArticleCode = fyndArticleCode

            self.brand = brand

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.company = company

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.quantities = quantities

            self.size = size

            self.stage = stage

            self.weight = weight

            self.manufacturer = manufacturer

            self.totalQuantity = totalQuantity

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.uid = uid

            self.itemId = itemId

            self.rawMeta = rawMeta

            self.price = price

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(trader, forKey: .trader)
        }
    }
}
