

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trader: [Trader1]?

        public var uid: String

        public var fyndArticleCode: String

        public var customJson: [String: Any]?

        public var addedOnStore: String?

        public var set: InventorySet?

        public var price: PriceMeta

        public var fyndItemCode: String

        public var sellerIdentifier: String

        public var dimension: DimensionResponse

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var store: StoreMeta

        public var returnConfig: ReturnConfig1?

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var quantities: Quantities?

        public var tags: [String]?

        public var company: CompanyMeta

        public var rawMeta: [String: Any]?

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var stage: String?

        public var size: String

        public var weight: WeightResponse

        public var fragile: Bool

        public var itemId: Int

        public var totalQuantity: Int

        public var isActive: Bool?

        public var manufacturer: ManufacturerResponse

        public var brand: BrandMeta

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case trader

            case uid

            case fyndArticleCode = "fynd_article_code"

            case customJson = "_custom_json"

            case addedOnStore = "added_on_store"

            case set

            case price

            case fyndItemCode = "fynd_item_code"

            case sellerIdentifier = "seller_identifier"

            case dimension

            case meta

            case identifier

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case store

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case quantities

            case tags

            case company

            case rawMeta = "raw_meta"

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case stage

            case size

            case weight

            case fragile

            case itemId = "item_id"

            case totalQuantity = "total_quantity"

            case isActive = "is_active"

            case manufacturer

            case brand

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case modifiedBy = "modified_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.uid = uid

            self.fyndArticleCode = fyndArticleCode

            self.customJson = customJson

            self.addedOnStore = addedOnStore

            self.set = set

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.sellerIdentifier = sellerIdentifier

            self.dimension = dimension

            self.meta = meta

            self.identifier = identifier

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.store = store

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.quantities = quantities

            self.tags = tags

            self.company = company

            self.rawMeta = rawMeta

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.stage = stage

            self.size = size

            self.weight = weight

            self.fragile = fragile

            self.itemId = itemId

            self.totalQuantity = totalQuantity

            self.isActive = isActive

            self.manufacturer = manufacturer

            self.brand = brand

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.modifiedBy = modifiedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            itemId = try container.decode(Int.self, forKey: .itemId)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)
        }
    }
}
