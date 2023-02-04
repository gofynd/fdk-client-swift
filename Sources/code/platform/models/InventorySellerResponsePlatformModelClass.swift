

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trackInventory: Bool?

        public var countryOfOrigin: String

        public var totalQuantity: Int

        public var customJson: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var identifier: [String: Any]

        public var traceId: String?

        public var stage: String?

        public var meta: [String: Any]?

        public var store: StoreMeta

        public var sellerIdentifier: String

        public var brand: BrandMeta

        public var trader: [Trader1]?

        public var uid: String

        public var fyndMeta: [String: Any]?

        public var price: PriceMeta

        public var isSet: Bool?

        public var fragile: Bool

        public var manufacturer: ManufacturerResponse

        public var rawMeta: [String: Any]?

        public var size: String

        public var quantities: Quantities?

        public var modifiedBy: UserSerializer?

        public var fyndArticleCode: String

        public var set: InventorySet?

        public var fyndItemCode: String

        public var itemId: Int

        public var dimension: DimensionResponse

        public var createdBy: UserSerializer?

        public var tags: [String]?

        public var weight: WeightResponse

        public var isActive: Bool?

        public var returnConfig: ReturnConfig2?

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case trackInventory = "track_inventory"

            case countryOfOrigin = "country_of_origin"

            case totalQuantity = "total_quantity"

            case customJson = "_custom_json"

            case taxIdentifier = "tax_identifier"

            case identifier

            case traceId = "trace_id"

            case stage

            case meta

            case store

            case sellerIdentifier = "seller_identifier"

            case brand

            case trader

            case uid

            case fyndMeta = "fynd_meta"

            case price

            case isSet = "is_set"

            case fragile

            case manufacturer

            case rawMeta = "raw_meta"

            case size

            case quantities

            case modifiedBy = "modified_by"

            case fyndArticleCode = "fynd_article_code"

            case set

            case fyndItemCode = "fynd_item_code"

            case itemId = "item_id"

            case dimension

            case createdBy = "created_by"

            case tags

            case weight

            case isActive = "is_active"

            case returnConfig = "return_config"

            case company

            case addedOnStore = "added_on_store"

            case expirationDate = "expiration_date"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trackInventory = trackInventory

            self.countryOfOrigin = countryOfOrigin

            self.totalQuantity = totalQuantity

            self.customJson = customJson

            self.taxIdentifier = taxIdentifier

            self.identifier = identifier

            self.traceId = traceId

            self.stage = stage

            self.meta = meta

            self.store = store

            self.sellerIdentifier = sellerIdentifier

            self.brand = brand

            self.trader = trader

            self.uid = uid

            self.fyndMeta = fyndMeta

            self.price = price

            self.isSet = isSet

            self.fragile = fragile

            self.manufacturer = manufacturer

            self.rawMeta = rawMeta

            self.size = size

            self.quantities = quantities

            self.modifiedBy = modifiedBy

            self.fyndArticleCode = fyndArticleCode

            self.set = set

            self.fyndItemCode = fyndItemCode

            self.itemId = itemId

            self.dimension = dimension

            self.createdBy = createdBy

            self.tags = tags

            self.weight = weight

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.company = company

            self.addedOnStore = addedOnStore

            self.expirationDate = expirationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }
}
