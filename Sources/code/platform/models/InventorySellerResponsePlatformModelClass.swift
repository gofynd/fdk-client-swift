

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var brand: BrandMeta

        public var traceId: String?

        public var totalQuantity: Int

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var trackInventory: Bool?

        public var company: CompanyMeta

        public var rawMeta: [String: Any]?

        public var fragile: Bool

        public var size: String

        public var store: StoreMeta

        public var fyndItemCode: String

        public var fyndMeta: [String: Any]?

        public var customJson: [String: Any]?

        public var weight: WeightResponse

        public var expirationDate: String?

        public var trader: [Trader1]?

        public var itemId: Int

        public var tags: [String]?

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var quantities: Quantities?

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var set: InventorySet?

        public var stage: String?

        public var price: PriceMeta

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var addedOnStore: String?

        public enum CodingKeys: String, CodingKey {
            case brand

            case traceId = "trace_id"

            case totalQuantity = "total_quantity"

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case trackInventory = "track_inventory"

            case company

            case rawMeta = "raw_meta"

            case fragile

            case size

            case store

            case fyndItemCode = "fynd_item_code"

            case fyndMeta = "fynd_meta"

            case customJson = "_custom_json"

            case weight

            case expirationDate = "expiration_date"

            case trader

            case itemId = "item_id"

            case tags

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case quantities

            case isActive = "is_active"

            case createdBy = "created_by"

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case set

            case stage

            case price

            case meta

            case identifier

            case manufacturer

            case uid

            case addedOnStore = "added_on_store"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.brand = brand

            self.traceId = traceId

            self.totalQuantity = totalQuantity

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.trackInventory = trackInventory

            self.company = company

            self.rawMeta = rawMeta

            self.fragile = fragile

            self.size = size

            self.store = store

            self.fyndItemCode = fyndItemCode

            self.fyndMeta = fyndMeta

            self.customJson = customJson

            self.weight = weight

            self.expirationDate = expirationDate

            self.trader = trader

            self.itemId = itemId

            self.tags = tags

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.quantities = quantities

            self.isActive = isActive

            self.createdBy = createdBy

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.set = set

            self.stage = stage

            self.price = price

            self.meta = meta

            self.identifier = identifier

            self.manufacturer = manufacturer

            self.uid = uid

            self.addedOnStore = addedOnStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
        }
    }
}
