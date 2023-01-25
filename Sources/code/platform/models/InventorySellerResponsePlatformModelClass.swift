

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var totalQuantity: Int

        public var quantities: Quantities?

        public var store: StoreMeta

        public var manufacturer: ManufacturerResponse

        public var customJson: [String: Any]?

        public var size: String

        public var isSet: Bool?

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var sellerIdentifier: String

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var trader: [Trader1]?

        public var fyndItemCode: String

        public var fyndArticleCode: String

        public var fyndMeta: [String: Any]?

        public var price: PriceMeta

        public var stage: String?

        public var fragile: Bool

        public var itemId: Int

        public var countryOfOrigin: String

        public var expirationDate: String?

        public var addedOnStore: String?

        public var traceId: String?

        public var tags: [String]?

        public var set: InventorySet?

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var meta: [String: Any]?

        public var uid: String

        public var identifier: [String: Any]

        public var taxIdentifier: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public enum CodingKeys: String, CodingKey {
            case totalQuantity = "total_quantity"

            case quantities

            case store

            case manufacturer

            case customJson = "_custom_json"

            case size

            case isSet = "is_set"

            case brand

            case rawMeta = "raw_meta"

            case sellerIdentifier = "seller_identifier"

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case company

            case createdBy = "created_by"

            case trader

            case fyndItemCode = "fynd_item_code"

            case fyndArticleCode = "fynd_article_code"

            case fyndMeta = "fynd_meta"

            case price

            case stage

            case fragile

            case itemId = "item_id"

            case countryOfOrigin = "country_of_origin"

            case expirationDate = "expiration_date"

            case addedOnStore = "added_on_store"

            case traceId = "trace_id"

            case tags

            case set

            case dimension

            case weight

            case meta

            case uid

            case identifier

            case taxIdentifier = "tax_identifier"

            case returnConfig = "return_config"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.totalQuantity = totalQuantity

            self.quantities = quantities

            self.store = store

            self.manufacturer = manufacturer

            self.customJson = customJson

            self.size = size

            self.isSet = isSet

            self.brand = brand

            self.rawMeta = rawMeta

            self.sellerIdentifier = sellerIdentifier

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.company = company

            self.createdBy = createdBy

            self.trader = trader

            self.fyndItemCode = fyndItemCode

            self.fyndArticleCode = fyndArticleCode

            self.fyndMeta = fyndMeta

            self.price = price

            self.stage = stage

            self.fragile = fragile

            self.itemId = itemId

            self.countryOfOrigin = countryOfOrigin

            self.expirationDate = expirationDate

            self.addedOnStore = addedOnStore

            self.traceId = traceId

            self.tags = tags

            self.set = set

            self.dimension = dimension

            self.weight = weight

            self.meta = meta

            self.uid = uid

            self.identifier = identifier

            self.taxIdentifier = taxIdentifier

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            itemId = try container.decode(Int.self, forKey: .itemId)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                traceId = try container.decode(String.self, forKey: .traceId)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
