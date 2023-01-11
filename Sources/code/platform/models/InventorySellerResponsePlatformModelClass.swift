

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var modifiedBy: UserSerializer?

        public var createdBy: UserSerializer?

        public var addedOnStore: String?

        public var size: String

        public var itemId: Int

        public var expirationDate: String?

        public var customJson: [String: Any]?

        public var company: CompanyMeta

        public var dimension: DimensionResponse

        public var tags: [String]?

        public var rawMeta: [String: Any]?

        public var uid: String

        public var totalQuantity: Int

        public var countryOfOrigin: String

        public var price: PriceMeta

        public var trader: [Trader1]?

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var isSet: Bool?

        public var traceId: String?

        public var trackInventory: Bool?

        public var manufacturer: ManufacturerResponse

        public var quantities: Quantities?

        public var returnConfig: ReturnConfig1?

        public var fragile: Bool

        public var set: InventorySet?

        public var store: StoreMeta

        public var weight: WeightResponse

        public var fyndMeta: [String: Any]?

        public var stage: String?

        public var isActive: Bool?

        public var sellerIdentifier: String

        public var brand: BrandMeta

        public var taxIdentifier: [String: Any]?

        public var fyndArticleCode: String

        public var fyndItemCode: String

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case addedOnStore = "added_on_store"

            case size

            case itemId = "item_id"

            case expirationDate = "expiration_date"

            case customJson = "_custom_json"

            case company

            case dimension

            case tags

            case rawMeta = "raw_meta"

            case uid

            case totalQuantity = "total_quantity"

            case countryOfOrigin = "country_of_origin"

            case price

            case trader

            case meta

            case identifier

            case isSet = "is_set"

            case traceId = "trace_id"

            case trackInventory = "track_inventory"

            case manufacturer

            case quantities

            case returnConfig = "return_config"

            case fragile

            case set

            case store

            case weight

            case fyndMeta = "fynd_meta"

            case stage

            case isActive = "is_active"

            case sellerIdentifier = "seller_identifier"

            case brand

            case taxIdentifier = "tax_identifier"

            case fyndArticleCode = "fynd_article_code"

            case fyndItemCode = "fynd_item_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.addedOnStore = addedOnStore

            self.size = size

            self.itemId = itemId

            self.expirationDate = expirationDate

            self.customJson = customJson

            self.company = company

            self.dimension = dimension

            self.tags = tags

            self.rawMeta = rawMeta

            self.uid = uid

            self.totalQuantity = totalQuantity

            self.countryOfOrigin = countryOfOrigin

            self.price = price

            self.trader = trader

            self.meta = meta

            self.identifier = identifier

            self.isSet = isSet

            self.traceId = traceId

            self.trackInventory = trackInventory

            self.manufacturer = manufacturer

            self.quantities = quantities

            self.returnConfig = returnConfig

            self.fragile = fragile

            self.set = set

            self.store = store

            self.weight = weight

            self.fyndMeta = fyndMeta

            self.stage = stage

            self.isActive = isActive

            self.sellerIdentifier = sellerIdentifier

            self.brand = brand

            self.taxIdentifier = taxIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.fyndItemCode = fyndItemCode
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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            uid = try container.decode(String.self, forKey: .uid)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
        }
    }
}
