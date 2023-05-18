

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndMeta: [String: Any]?

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var totalQuantity: Int

        public var store: StoreMeta

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var company: CompanyMeta

        public var isActive: Bool?

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta

        public var fragile: Bool

        public var uid: String

        public var tags: [String]?

        public var trader: [Trader1]?

        public var stage: String?

        public var createdBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var quantities: Quantities?

        public var meta: [String: Any]?

        public var price: PriceMeta

        public var customJson: [String: Any]?

        public var size: String

        public var dimension: DimensionResponse

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var addedOnStore: String?

        public var fyndItemCode: String

        public var countryOfOrigin: String

        public var fyndArticleCode: String

        public var itemId: Int

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case fyndMeta = "fynd_meta"

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case totalQuantity = "total_quantity"

            case store

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case company

            case isActive = "is_active"

            case weight

            case modifiedBy = "modified_by"

            case brand

            case fragile

            case uid

            case tags

            case trader

            case stage

            case createdBy = "created_by"

            case manufacturer

            case set

            case quantities

            case meta

            case price

            case customJson = "_custom_json"

            case size

            case dimension

            case identifier

            case returnConfig = "return_config"

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case addedOnStore = "added_on_store"

            case fyndItemCode = "fynd_item_code"

            case countryOfOrigin = "country_of_origin"

            case fyndArticleCode = "fynd_article_code"

            case itemId = "item_id"

            case traceId = "trace_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndMeta = fyndMeta

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.totalQuantity = totalQuantity

            self.store = store

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.company = company

            self.isActive = isActive

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.brand = brand

            self.fragile = fragile

            self.uid = uid

            self.tags = tags

            self.trader = trader

            self.stage = stage

            self.createdBy = createdBy

            self.manufacturer = manufacturer

            self.set = set

            self.quantities = quantities

            self.meta = meta

            self.price = price

            self.customJson = customJson

            self.size = size

            self.dimension = dimension

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.addedOnStore = addedOnStore

            self.fyndItemCode = fyndItemCode

            self.countryOfOrigin = countryOfOrigin

            self.fyndArticleCode = fyndArticleCode

            self.itemId = itemId

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            uid = try container.decode(String.self, forKey: .uid)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

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
        public var fyndMeta: [String: Any]?

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var totalQuantity: Int

        public var store: StoreMeta

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var company: CompanyMeta

        public var isActive: Bool?

        public var weight: WeightResponse

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta

        public var fragile: Bool

        public var uid: String

        public var tags: [String]?

        public var trader: [Trader1]?

        public var stage: String?

        public var createdBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var quantities: Quantities?

        public var meta: [String: Any]?

        public var price: PriceMeta

        public var customJson: [String: Any]?

        public var size: String

        public var dimension: DimensionResponse

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var addedOnStore: String?

        public var fyndItemCode: String

        public var countryOfOrigin: String

        public var fyndArticleCode: String

        public var itemId: Int

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case fyndMeta = "fynd_meta"

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case totalQuantity = "total_quantity"

            case store

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case company

            case isActive = "is_active"

            case weight

            case modifiedBy = "modified_by"

            case brand

            case fragile

            case uid

            case tags

            case trader

            case stage

            case createdBy = "created_by"

            case manufacturer

            case set

            case quantities

            case meta

            case price

            case customJson = "_custom_json"

            case size

            case dimension

            case identifier

            case returnConfig = "return_config"

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case addedOnStore = "added_on_store"

            case fyndItemCode = "fynd_item_code"

            case countryOfOrigin = "country_of_origin"

            case fyndArticleCode = "fynd_article_code"

            case itemId = "item_id"

            case traceId = "trace_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndMeta = fyndMeta

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.totalQuantity = totalQuantity

            self.store = store

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.company = company

            self.isActive = isActive

            self.weight = weight

            self.modifiedBy = modifiedBy

            self.brand = brand

            self.fragile = fragile

            self.uid = uid

            self.tags = tags

            self.trader = trader

            self.stage = stage

            self.createdBy = createdBy

            self.manufacturer = manufacturer

            self.set = set

            self.quantities = quantities

            self.meta = meta

            self.price = price

            self.customJson = customJson

            self.size = size

            self.dimension = dimension

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.addedOnStore = addedOnStore

            self.fyndItemCode = fyndItemCode

            self.countryOfOrigin = countryOfOrigin

            self.fyndArticleCode = fyndArticleCode

            self.itemId = itemId

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            uid = try container.decode(String.self, forKey: .uid)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }
}
