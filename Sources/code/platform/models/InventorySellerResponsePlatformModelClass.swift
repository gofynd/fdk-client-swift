

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var modifiedBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var trackInventory: Bool?

        public var stage: String?

        public var uid: String

        public var trader: [Trader1]?

        public var company: CompanyMeta

        public var itemId: Int

        public var meta: [String: Any]?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var isActive: Bool?

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var fragile: Bool

        public var tags: [String]?

        public var dimension: DimensionResponse

        public var rawMeta: [String: Any]?

        public var countryOfOrigin: String

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var traceId: String?

        public var fyndItemCode: String

        public var weight: WeightResponse

        public var brand: BrandMeta

        public var size: String

        public var fyndMeta: [String: Any]?

        public var addedOnStore: String?

        public var createdBy: UserSerializer?

        public var returnConfig: ReturnConfig2?

        public var set: InventorySet?

        public var price: PriceMeta

        public var fyndArticleCode: String

        public var store: StoreMeta

        public var quantities: Quantities?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case taxIdentifier = "tax_identifier"

            case trackInventory = "track_inventory"

            case stage

            case uid

            case trader

            case company

            case itemId = "item_id"

            case meta

            case customJson = "_custom_json"

            case isSet = "is_set"

            case isActive = "is_active"

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case identifier

            case fragile

            case tags

            case dimension

            case rawMeta = "raw_meta"

            case countryOfOrigin = "country_of_origin"

            case manufacturer

            case expirationDate = "expiration_date"

            case traceId = "trace_id"

            case fyndItemCode = "fynd_item_code"

            case weight

            case brand

            case size

            case fyndMeta = "fynd_meta"

            case addedOnStore = "added_on_store"

            case createdBy = "created_by"

            case returnConfig = "return_config"

            case set

            case price

            case fyndArticleCode = "fynd_article_code"

            case store

            case quantities
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.modifiedBy = modifiedBy

            self.taxIdentifier = taxIdentifier

            self.trackInventory = trackInventory

            self.stage = stage

            self.uid = uid

            self.trader = trader

            self.company = company

            self.itemId = itemId

            self.meta = meta

            self.customJson = customJson

            self.isSet = isSet

            self.isActive = isActive

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.fragile = fragile

            self.tags = tags

            self.dimension = dimension

            self.rawMeta = rawMeta

            self.countryOfOrigin = countryOfOrigin

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.traceId = traceId

            self.fyndItemCode = fyndItemCode

            self.weight = weight

            self.brand = brand

            self.size = size

            self.fyndMeta = fyndMeta

            self.addedOnStore = addedOnStore

            self.createdBy = createdBy

            self.returnConfig = returnConfig

            self.set = set

            self.price = price

            self.fyndArticleCode = fyndArticleCode

            self.store = store

            self.quantities = quantities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            size = try container.decode(String.self, forKey: .size)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantities, forKey: .quantities)
        }
    }
}
