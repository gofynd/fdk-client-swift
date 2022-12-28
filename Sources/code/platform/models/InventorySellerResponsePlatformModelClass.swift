

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var tags: [String]?

        public var store: StoreMeta

        public var traceId: String?

        public var price: PriceMeta

        public var modifiedBy: UserSerializer?

        public var size: String

        public var brand: BrandMeta

        public var weight: WeightResponse

        public var dimension: DimensionResponse

        public var fyndItemCode: String

        public var createdBy: UserSerializer?

        public var fragile: Bool

        public var set: InventorySet?

        public var fyndArticleCode: String

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var isSet: Bool?

        public var rawMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var isActive: Bool?

        public var expirationDate: String?

        public var stage: String?

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var addedOnStore: String?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var manufacturer: ManufacturerResponse

        public var meta: [String: Any]?

        public var trader: [Trader1]?

        public var uid: String

        public var company: CompanyMeta

        public var itemId: Int

        public var quantities: Quantities?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case tags

            case store

            case traceId = "trace_id"

            case price

            case modifiedBy = "modified_by"

            case size

            case brand

            case weight

            case dimension

            case fyndItemCode = "fynd_item_code"

            case createdBy = "created_by"

            case fragile

            case set

            case fyndArticleCode = "fynd_article_code"

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case isSet = "is_set"

            case rawMeta = "raw_meta"

            case returnConfig = "return_config"

            case isActive = "is_active"

            case expirationDate = "expiration_date"

            case stage

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case addedOnStore = "added_on_store"

            case totalQuantity = "total_quantity"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case manufacturer

            case meta

            case trader

            case uid

            case company

            case itemId = "item_id"

            case quantities

            case customJson = "_custom_json"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.tags = tags

            self.store = store

            self.traceId = traceId

            self.price = price

            self.modifiedBy = modifiedBy

            self.size = size

            self.brand = brand

            self.weight = weight

            self.dimension = dimension

            self.fyndItemCode = fyndItemCode

            self.createdBy = createdBy

            self.fragile = fragile

            self.set = set

            self.fyndArticleCode = fyndArticleCode

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.isSet = isSet

            self.rawMeta = rawMeta

            self.returnConfig = returnConfig

            self.isActive = isActive

            self.expirationDate = expirationDate

            self.stage = stage

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.addedOnStore = addedOnStore

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.manufacturer = manufacturer

            self.meta = meta

            self.trader = trader

            self.uid = uid

            self.company = company

            self.itemId = itemId

            self.quantities = quantities

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            uid = try container.decode(String.self, forKey: .uid)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
