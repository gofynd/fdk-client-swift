

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var identifier: [String: Any]

        public var meta: [String: Any]?

        public var uid: String

        public var brand: BrandMeta

        public var countryOfOrigin: String

        public var quantities: Quantities?

        public var sellerIdentifier: String

        public var modifiedBy: UserSerializer?

        public var expirationDate: String?

        public var set: InventorySet?

        public var fyndItemCode: String

        public var isSet: Bool?

        public var weight: WeightResponse

        public var price: PriceMeta

        public var addedOnStore: String?

        public var size: String

        public var traceId: String?

        public var company: CompanyMeta

        public var returnConfig: ReturnConfig3?

        public var totalQuantity: Int

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var createdBy: UserSerializer?

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var stage: String?

        public var fyndArticleCode: String

        public var manufacturer: ManufacturerResponse

        public var rawMeta: [String: Any]?

        public var fragile: Bool

        public var itemId: Int

        public var trader: [Trader2]?

        public var tags: [String]?

        public var fyndMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case meta

            case uid

            case brand

            case countryOfOrigin = "country_of_origin"

            case quantities

            case sellerIdentifier = "seller_identifier"

            case modifiedBy = "modified_by"

            case expirationDate = "expiration_date"

            case set

            case fyndItemCode = "fynd_item_code"

            case isSet = "is_set"

            case weight

            case price

            case addedOnStore = "added_on_store"

            case size

            case traceId = "trace_id"

            case company

            case returnConfig = "return_config"

            case totalQuantity = "total_quantity"

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case dimension

            case createdBy = "created_by"

            case store

            case customJson = "_custom_json"

            case stage

            case fyndArticleCode = "fynd_article_code"

            case manufacturer

            case rawMeta = "raw_meta"

            case fragile

            case itemId = "item_id"

            case trader

            case tags

            case fyndMeta = "fynd_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig3? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.identifier = identifier

            self.meta = meta

            self.uid = uid

            self.brand = brand

            self.countryOfOrigin = countryOfOrigin

            self.quantities = quantities

            self.sellerIdentifier = sellerIdentifier

            self.modifiedBy = modifiedBy

            self.expirationDate = expirationDate

            self.set = set

            self.fyndItemCode = fyndItemCode

            self.isSet = isSet

            self.weight = weight

            self.price = price

            self.addedOnStore = addedOnStore

            self.size = size

            self.traceId = traceId

            self.company = company

            self.returnConfig = returnConfig

            self.totalQuantity = totalQuantity

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.createdBy = createdBy

            self.store = store

            self.customJson = customJson

            self.stage = stage

            self.fyndArticleCode = fyndArticleCode

            self.manufacturer = manufacturer

            self.rawMeta = rawMeta

            self.fragile = fragile

            self.itemId = itemId

            self.trader = trader

            self.tags = tags

            self.fyndMeta = fyndMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                returnConfig = try container.decode(ReturnConfig3.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
        }
    }
}
