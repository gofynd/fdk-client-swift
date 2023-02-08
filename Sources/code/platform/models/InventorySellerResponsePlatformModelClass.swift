

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var store: StoreMeta

        public var itemId: Int

        public var countryOfOrigin: String

        public var isSet: Bool?

        public var addedOnStore: String?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var taxIdentifier: [String: Any]?

        public var fyndArticleCode: String

        public var customJson: [String: Any]?

        public var size: String

        public var price: PriceMeta

        public var tags: [String]?

        public var stage: String?

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var brand: BrandMeta

        public var traceId: String?

        public var weight: WeightResponse

        public var expirationDate: String?

        public var dimension: DimensionResponse

        public var identifier: [String: Any]

        public var fragile: Bool

        public var manufacturer: ManufacturerResponse

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig3?

        public var modifiedBy: UserSerializer?

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var uid: String

        public var createdBy: UserSerializer?

        public var quantities: Quantities?

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var rawMeta: [String: Any]?

        public var trader: [Trader2]?

        public enum CodingKeys: String, CodingKey {
            case store

            case itemId = "item_id"

            case countryOfOrigin = "country_of_origin"

            case isSet = "is_set"

            case addedOnStore = "added_on_store"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case taxIdentifier = "tax_identifier"

            case fyndArticleCode = "fynd_article_code"

            case customJson = "_custom_json"

            case size

            case price

            case tags

            case stage

            case set

            case meta

            case brand

            case traceId = "trace_id"

            case weight

            case expirationDate = "expiration_date"

            case dimension

            case identifier

            case fragile

            case manufacturer

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case modifiedBy = "modified_by"

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case uid

            case createdBy = "created_by"

            case quantities

            case company

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"

            case trader
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig3? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.store = store

            self.itemId = itemId

            self.countryOfOrigin = countryOfOrigin

            self.isSet = isSet

            self.addedOnStore = addedOnStore

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.taxIdentifier = taxIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.customJson = customJson

            self.size = size

            self.price = price

            self.tags = tags

            self.stage = stage

            self.set = set

            self.meta = meta

            self.brand = brand

            self.traceId = traceId

            self.weight = weight

            self.expirationDate = expirationDate

            self.dimension = dimension

            self.identifier = identifier

            self.fragile = fragile

            self.manufacturer = manufacturer

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.modifiedBy = modifiedBy

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.uid = uid

            self.createdBy = createdBy

            self.quantities = quantities

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode(StoreMeta.self, forKey: .store)

            itemId = try container.decode(Int.self, forKey: .itemId)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig3.self, forKey: .returnConfig)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)
        }
    }
}
