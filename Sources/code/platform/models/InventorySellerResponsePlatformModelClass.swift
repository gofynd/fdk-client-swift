

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var tags: [String]?

        public var createdBy: UserSerializer?

        public var stage: String?

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var rawMeta: [String: Any]?

        public var isSet: Bool?

        public var fragile: Bool

        public var sellerIdentifier: String

        public var size: String

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var store: StoreMeta

        public var itemId: Int

        public var traceId: String?

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var isActive: Bool?

        public var returnConfig: ReturnConfig1?

        public var brand: BrandMeta

        public var quantities: Quantities?

        public var set: InventorySet?

        public var fyndArticleCode: String

        public var uid: String

        public var identifier: [String: Any]

        public var meta: [String: Any]?

        public var fyndItemCode: String

        public var company: CompanyMeta

        public var trader: [Trader1]?

        public var countryOfOrigin: String

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public enum CodingKeys: String, CodingKey {
            case tags

            case createdBy = "created_by"

            case stage

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case rawMeta = "raw_meta"

            case isSet = "is_set"

            case fragile

            case sellerIdentifier = "seller_identifier"

            case size

            case weight

            case manufacturer

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case store

            case itemId = "item_id"

            case traceId = "trace_id"

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case price

            case isActive = "is_active"

            case returnConfig = "return_config"

            case brand

            case quantities

            case set

            case fyndArticleCode = "fynd_article_code"

            case uid

            case identifier

            case meta

            case fyndItemCode = "fynd_item_code"

            case company

            case trader

            case countryOfOrigin = "country_of_origin"

            case addedOnStore = "added_on_store"

            case dimension
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.tags = tags

            self.createdBy = createdBy

            self.stage = stage

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.rawMeta = rawMeta

            self.isSet = isSet

            self.fragile = fragile

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.weight = weight

            self.manufacturer = manufacturer

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.store = store

            self.itemId = itemId

            self.traceId = traceId

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.price = price

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.brand = brand

            self.quantities = quantities

            self.set = set

            self.fyndArticleCode = fyndArticleCode

            self.uid = uid

            self.identifier = identifier

            self.meta = meta

            self.fyndItemCode = fyndItemCode

            self.company = company

            self.trader = trader

            self.countryOfOrigin = countryOfOrigin

            self.addedOnStore = addedOnStore

            self.dimension = dimension
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            size = try container.decode(String.self, forKey: .size)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
