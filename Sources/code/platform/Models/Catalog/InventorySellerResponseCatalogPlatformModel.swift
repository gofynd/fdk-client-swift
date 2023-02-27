

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isActive: Bool?

        public var identifier: [String: Any]

        public var fyndMeta: [String: Any]?

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var store: StoreMeta

        public var set: InventorySet?

        public var isSet: Bool?

        public var fragile: Bool

        public var weight: WeightResponse

        public var trackInventory: Bool?

        public var brand: BrandMeta

        public var tags: [String]?

        public var expirationDate: String?

        public var company: CompanyMeta

        public var price: PriceMeta

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var stage: String?

        public var addedOnStore: String?

        public var size: String

        public var modifiedBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var returnConfig: ReturnConfig2?

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var uid: String

        public var trader: [Trader2]?

        public var itemId: Int

        public var traceId: String?

        public var customJson: [String: Any]?

        public var fyndArticleCode: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case identifier

            case fyndMeta = "fynd_meta"

            case dimension

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case meta

            case sellerIdentifier = "seller_identifier"

            case store

            case set

            case isSet = "is_set"

            case fragile

            case weight

            case trackInventory = "track_inventory"

            case brand

            case tags

            case expirationDate = "expiration_date"

            case company

            case price

            case fyndItemCode = "fynd_item_code"

            case quantities

            case stage

            case addedOnStore = "added_on_store"

            case size

            case modifiedBy = "modified_by"

            case rawMeta = "raw_meta"

            case manufacturer

            case returnConfig = "return_config"

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case uid

            case trader

            case itemId = "item_id"

            case traceId = "trace_id"

            case customJson = "_custom_json"

            case fyndArticleCode = "fynd_article_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.identifier = identifier

            self.fyndMeta = fyndMeta

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.store = store

            self.set = set

            self.isSet = isSet

            self.fragile = fragile

            self.weight = weight

            self.trackInventory = trackInventory

            self.brand = brand

            self.tags = tags

            self.expirationDate = expirationDate

            self.company = company

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.stage = stage

            self.addedOnStore = addedOnStore

            self.size = size

            self.modifiedBy = modifiedBy

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.returnConfig = returnConfig

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.trader = trader

            self.itemId = itemId

            self.traceId = traceId

            self.customJson = customJson

            self.fyndArticleCode = fyndArticleCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            store = try container.decode(StoreMeta.self, forKey: .store)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isActive: Bool?

        public var identifier: [String: Any]

        public var fyndMeta: [String: Any]?

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var store: StoreMeta

        public var set: InventorySet?

        public var isSet: Bool?

        public var fragile: Bool

        public var weight: WeightResponse

        public var trackInventory: Bool?

        public var brand: BrandMeta

        public var tags: [String]?

        public var expirationDate: String?

        public var company: CompanyMeta

        public var price: PriceMeta

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var stage: String?

        public var addedOnStore: String?

        public var size: String

        public var modifiedBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var returnConfig: ReturnConfig2?

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var uid: String

        public var trader: [Trader2]?

        public var itemId: Int

        public var traceId: String?

        public var customJson: [String: Any]?

        public var fyndArticleCode: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case identifier

            case fyndMeta = "fynd_meta"

            case dimension

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case meta

            case sellerIdentifier = "seller_identifier"

            case store

            case set

            case isSet = "is_set"

            case fragile

            case weight

            case trackInventory = "track_inventory"

            case brand

            case tags

            case expirationDate = "expiration_date"

            case company

            case price

            case fyndItemCode = "fynd_item_code"

            case quantities

            case stage

            case addedOnStore = "added_on_store"

            case size

            case modifiedBy = "modified_by"

            case rawMeta = "raw_meta"

            case manufacturer

            case returnConfig = "return_config"

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case uid

            case trader

            case itemId = "item_id"

            case traceId = "trace_id"

            case customJson = "_custom_json"

            case fyndArticleCode = "fynd_article_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.identifier = identifier

            self.fyndMeta = fyndMeta

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.store = store

            self.set = set

            self.isSet = isSet

            self.fragile = fragile

            self.weight = weight

            self.trackInventory = trackInventory

            self.brand = brand

            self.tags = tags

            self.expirationDate = expirationDate

            self.company = company

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.stage = stage

            self.addedOnStore = addedOnStore

            self.size = size

            self.modifiedBy = modifiedBy

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.returnConfig = returnConfig

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.trader = trader

            self.itemId = itemId

            self.traceId = traceId

            self.customJson = customJson

            self.fyndArticleCode = fyndArticleCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            store = try container.decode(StoreMeta.self, forKey: .store)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
        }
    }
}
