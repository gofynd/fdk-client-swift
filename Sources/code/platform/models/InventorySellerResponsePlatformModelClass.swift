

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var expirationDate: String?

        public var tags: [String]?

        public var stage: String?

        public var meta: [String: Any]?

        public var uid: String

        public var fyndItemCode: String

        public var returnConfig: ReturnConfig1?

        public var customJson: [String: Any]?

        public var sellerIdentifier: String

        public var weight: WeightResponse

        public var size: String

        public var totalQuantity: Int

        public var taxIdentifier: [String: Any]?

        public var brand: BrandMeta

        public var isActive: Bool?

        public var dimension: DimensionResponse

        public var quantities: Quantities?

        public var company: CompanyMeta

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var identifier: [String: Any]

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var store: StoreMeta

        public var isSet: Bool?

        public var traceId: String?

        public var rawMeta: [String: Any]?

        public var trader: [Trader1]?

        public var addedOnStore: String?

        public var fragile: Bool

        public var itemId: Int

        public var manufacturer: ManufacturerResponse

        public var fyndArticleCode: String

        public var trackInventory: Bool?

        public var price: PriceMeta

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case tags

            case stage

            case meta

            case uid

            case fyndItemCode = "fynd_item_code"

            case returnConfig = "return_config"

            case customJson = "_custom_json"

            case sellerIdentifier = "seller_identifier"

            case weight

            case size

            case totalQuantity = "total_quantity"

            case taxIdentifier = "tax_identifier"

            case brand

            case isActive = "is_active"

            case dimension

            case quantities

            case company

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case set

            case identifier

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case store

            case isSet = "is_set"

            case traceId = "trace_id"

            case rawMeta = "raw_meta"

            case trader

            case addedOnStore = "added_on_store"

            case fragile

            case itemId = "item_id"

            case manufacturer

            case fyndArticleCode = "fynd_article_code"

            case trackInventory = "track_inventory"

            case price
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.expirationDate = expirationDate

            self.tags = tags

            self.stage = stage

            self.meta = meta

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.returnConfig = returnConfig

            self.customJson = customJson

            self.sellerIdentifier = sellerIdentifier

            self.weight = weight

            self.size = size

            self.totalQuantity = totalQuantity

            self.taxIdentifier = taxIdentifier

            self.brand = brand

            self.isActive = isActive

            self.dimension = dimension

            self.quantities = quantities

            self.company = company

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.identifier = identifier

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.store = store

            self.isSet = isSet

            self.traceId = traceId

            self.rawMeta = rawMeta

            self.trader = trader

            self.addedOnStore = addedOnStore

            self.fragile = fragile

            self.itemId = itemId

            self.manufacturer = manufacturer

            self.fyndArticleCode = fyndArticleCode

            self.trackInventory = trackInventory

            self.price = price
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            size = try container.decode(String.self, forKey: .size)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            itemId = try container.decode(Int.self, forKey: .itemId)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}
