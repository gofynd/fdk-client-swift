

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var manufacturer: ManufacturerResponse

        public var tags: [String]?

        public var customJson: [String: Any]?

        public var price: PriceMeta

        public var uid: String

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var itemId: Int

        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var fyndItemCode: String

        public var trader: [Trader2]?

        public var fyndArticleCode: String

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var isSet: Bool?

        public var traceId: String?

        public var trackInventory: Bool?

        public var fragile: Bool

        public var addedOnStore: String?

        public var returnConfig: ReturnConfig2?

        public var taxIdentifier: [String: Any]?

        public var quantities: Quantities?

        public var set: InventorySet?

        public var stage: String?

        public var sellerIdentifier: String

        public var size: String

        public var modifiedBy: UserSerializer?

        public var weight: WeightResponse

        public var isActive: Bool?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var totalQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case manufacturer

            case tags

            case customJson = "_custom_json"

            case price

            case uid

            case store

            case meta

            case identifier

            case itemId = "item_id"

            case dimension

            case countryOfOrigin = "country_of_origin"

            case fyndItemCode = "fynd_item_code"

            case trader

            case fyndArticleCode = "fynd_article_code"

            case brand

            case rawMeta = "raw_meta"

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case isSet = "is_set"

            case traceId = "trace_id"

            case trackInventory = "track_inventory"

            case fragile

            case addedOnStore = "added_on_store"

            case returnConfig = "return_config"

            case taxIdentifier = "tax_identifier"

            case quantities

            case set

            case stage

            case sellerIdentifier = "seller_identifier"

            case size

            case modifiedBy = "modified_by"

            case weight

            case isActive = "is_active"

            case company

            case createdBy = "created_by"

            case totalQuantity = "total_quantity"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.manufacturer = manufacturer

            self.tags = tags

            self.customJson = customJson

            self.price = price

            self.uid = uid

            self.store = store

            self.meta = meta

            self.identifier = identifier

            self.itemId = itemId

            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.fyndItemCode = fyndItemCode

            self.trader = trader

            self.fyndArticleCode = fyndArticleCode

            self.brand = brand

            self.rawMeta = rawMeta

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.isSet = isSet

            self.traceId = traceId

            self.trackInventory = trackInventory

            self.fragile = fragile

            self.addedOnStore = addedOnStore

            self.returnConfig = returnConfig

            self.taxIdentifier = taxIdentifier

            self.quantities = quantities

            self.set = set

            self.stage = stage

            self.sellerIdentifier = sellerIdentifier

            self.size = size

            self.modifiedBy = modifiedBy

            self.weight = weight

            self.isActive = isActive

            self.company = company

            self.createdBy = createdBy

            self.totalQuantity = totalQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            uid = try container.decode(String.self, forKey: .uid)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            size = try container.decode(String.self, forKey: .size)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        }
    }
}
