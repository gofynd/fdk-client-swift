

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var uid: String

        public var returnConfig: ReturnConfig1?

        public var quantities: Quantities?

        public var weight: WeightResponse

        public var createdBy: UserSerializer?

        public var fyndArticleCode: String

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var store: StoreMeta

        public var stage: String?

        public var fragile: Bool

        public var expirationDate: String?

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var manufacturer: ManufacturerResponse

        public var sellerIdentifier: String

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var traceId: String?

        public var price: PriceMeta

        public var isSet: Bool?

        public var brand: BrandMeta

        public var isActive: Bool?

        public var set: InventorySet?

        public var size: String

        public var countryOfOrigin: String

        public var meta: [String: Any]?

        public var tags: [String]?

        public var itemId: Int

        public var trackInventory: Bool?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var fyndMeta: [String: Any]?

        public var trader: [Trader1]?

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case uid

            case returnConfig = "return_config"

            case quantities

            case weight

            case createdBy = "created_by"

            case fyndArticleCode = "fynd_article_code"

            case company

            case customJson = "_custom_json"

            case modifiedBy = "modified_by"

            case store

            case stage

            case fragile

            case expirationDate = "expiration_date"

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case manufacturer

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case traceId = "trace_id"

            case price

            case isSet = "is_set"

            case brand

            case isActive = "is_active"

            case set

            case size

            case countryOfOrigin = "country_of_origin"

            case meta

            case tags

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case addedOnStore = "added_on_store"

            case dimension

            case fyndMeta = "fynd_meta"

            case trader

            case identifier
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.returnConfig = returnConfig

            self.quantities = quantities

            self.weight = weight

            self.createdBy = createdBy

            self.fyndArticleCode = fyndArticleCode

            self.company = company

            self.customJson = customJson

            self.modifiedBy = modifiedBy

            self.store = store

            self.stage = stage

            self.fragile = fragile

            self.expirationDate = expirationDate

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.manufacturer = manufacturer

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.traceId = traceId

            self.price = price

            self.isSet = isSet

            self.brand = brand

            self.isActive = isActive

            self.set = set

            self.size = size

            self.countryOfOrigin = countryOfOrigin

            self.meta = meta

            self.tags = tags

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.fyndMeta = fyndMeta

            self.trader = trader

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            size = try container.decode(String.self, forKey: .size)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
