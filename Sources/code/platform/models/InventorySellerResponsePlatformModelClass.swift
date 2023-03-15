

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var modifiedBy: UserSerializer?

        public var tags: [String]?

        public var brand: BrandMeta

        public var customJson: [String: Any]?

        public var size: String

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var uid: String

        public var fyndItemCode: String

        public var weight: WeightResponse

        public var createdBy: UserSerializer?

        public var isSet: Bool?

        public var set: InventorySet?

        public var quantities: Quantities?

        public var fyndArticleCode: String

        public var manufacturer: ManufacturerResponse

        public var company: CompanyMeta

        public var stage: String?

        public var itemId: Int

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var taxIdentifier: [String: Any]?

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var countryOfOrigin: String

        public var fyndMeta: [String: Any]?

        public var expirationDate: String?

        public var fragile: Bool

        public var price: PriceMeta

        public var traceId: String?

        public var addedOnStore: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedBy = "modified_by"

            case tags

            case brand

            case customJson = "_custom_json"

            case size

            case store

            case meta

            case uid

            case fyndItemCode = "fynd_item_code"

            case weight

            case createdBy = "created_by"

            case isSet = "is_set"

            case set

            case quantities

            case fyndArticleCode = "fynd_article_code"

            case manufacturer

            case company

            case stage

            case itemId = "item_id"

            case dimension

            case totalQuantity = "total_quantity"

            case trader

            case rawMeta = "raw_meta"

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case taxIdentifier = "tax_identifier"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case fyndMeta = "fynd_meta"

            case expirationDate = "expiration_date"

            case fragile

            case price

            case traceId = "trace_id"

            case addedOnStore = "added_on_store"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.modifiedBy = modifiedBy

            self.tags = tags

            self.brand = brand

            self.customJson = customJson

            self.size = size

            self.store = store

            self.meta = meta

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.weight = weight

            self.createdBy = createdBy

            self.isSet = isSet

            self.set = set

            self.quantities = quantities

            self.fyndArticleCode = fyndArticleCode

            self.manufacturer = manufacturer

            self.company = company

            self.stage = stage

            self.itemId = itemId

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.trader = trader

            self.rawMeta = rawMeta

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.taxIdentifier = taxIdentifier

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.fyndMeta = fyndMeta

            self.expirationDate = expirationDate

            self.fragile = fragile

            self.price = price

            self.traceId = traceId

            self.addedOnStore = addedOnStore
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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
        }
    }
}
