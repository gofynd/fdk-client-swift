

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isSet: Bool?

        public var fyndItemCode: String

        public var brand: BrandMeta

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public var traceId: String?

        public var meta: [String: Any]?

        public var fragile: Bool

        public var manufacturer: ManufacturerResponse

        public var addedOnStore: String?

        public var store: StoreMeta

        public var identifier: [String: Any]

        public var isActive: Bool?

        public var expirationDate: String?

        public var price: PriceMeta

        public var weight: WeightResponse

        public var sellerIdentifier: String

        public var taxIdentifier: [String: Any]?

        public var trackInventory: Bool?

        public var countryOfOrigin: String

        public var size: String

        public var fyndMeta: [String: Any]?

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var stage: String?

        public var quantities: Quantities?

        public var customJson: [String: Any]?

        public var createdBy: UserSerializer?

        public var fyndArticleCode: String

        public var tags: [String]?

        public var itemId: Int

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var uid: String

        public var set: InventorySet?

        public var company: CompanyMeta

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case fyndItemCode = "fynd_item_code"

            case brand

            case trader

            case rawMeta = "raw_meta"

            case traceId = "trace_id"

            case meta

            case fragile

            case manufacturer

            case addedOnStore = "added_on_store"

            case store

            case identifier

            case isActive = "is_active"

            case expirationDate = "expiration_date"

            case price

            case weight

            case sellerIdentifier = "seller_identifier"

            case taxIdentifier = "tax_identifier"

            case trackInventory = "track_inventory"

            case countryOfOrigin = "country_of_origin"

            case size

            case fyndMeta = "fynd_meta"

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case stage

            case quantities

            case customJson = "_custom_json"

            case createdBy = "created_by"

            case fyndArticleCode = "fynd_article_code"

            case tags

            case itemId = "item_id"

            case dimension

            case modifiedBy = "modified_by"

            case uid

            case set

            case company
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isSet = isSet

            self.fyndItemCode = fyndItemCode

            self.brand = brand

            self.trader = trader

            self.rawMeta = rawMeta

            self.traceId = traceId

            self.meta = meta

            self.fragile = fragile

            self.manufacturer = manufacturer

            self.addedOnStore = addedOnStore

            self.store = store

            self.identifier = identifier

            self.isActive = isActive

            self.expirationDate = expirationDate

            self.price = price

            self.weight = weight

            self.sellerIdentifier = sellerIdentifier

            self.taxIdentifier = taxIdentifier

            self.trackInventory = trackInventory

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.fyndMeta = fyndMeta

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.stage = stage

            self.quantities = quantities

            self.customJson = customJson

            self.createdBy = createdBy

            self.fyndArticleCode = fyndArticleCode

            self.tags = tags

            self.itemId = itemId

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.set = set

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
