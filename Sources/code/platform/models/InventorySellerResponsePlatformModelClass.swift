

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var uid: String

        public var taxIdentifier: [String: Any]?

        public var company: CompanyMeta

        public var rawMeta: [String: Any]?

        public var totalQuantity: Int

        public var brand: BrandMeta

        public var fyndMeta: [String: Any]?

        public var trader: [Trader1]?

        public var fyndArticleCode: String

        public var weight: WeightResponse

        public var itemId: Int

        public var fragile: Bool

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var createdBy: UserSerializer?

        public var dimension: DimensionResponse

        public var traceId: String?

        public var size: String

        public var store: StoreMeta

        public var quantities: Quantities?

        public var sellerIdentifier: String

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var tags: [String]?

        public var price: PriceMeta

        public var manufacturer: ManufacturerResponse

        public var set: InventorySet?

        public var trackInventory: Bool?

        public var meta: [String: Any]?

        public var isSet: Bool?

        public var modifiedBy: UserSerializer?

        public var expirationDate: String?

        public var addedOnStore: String?

        public var countryOfOrigin: String

        public var fyndItemCode: String

        public var stage: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case taxIdentifier = "tax_identifier"

            case company

            case rawMeta = "raw_meta"

            case totalQuantity = "total_quantity"

            case brand

            case fyndMeta = "fynd_meta"

            case trader

            case fyndArticleCode = "fynd_article_code"

            case weight

            case itemId = "item_id"

            case fragile

            case identifier

            case returnConfig = "return_config"

            case createdBy = "created_by"

            case dimension

            case traceId = "trace_id"

            case size

            case store

            case quantities

            case sellerIdentifier = "seller_identifier"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case tags

            case price

            case manufacturer

            case set

            case trackInventory = "track_inventory"

            case meta

            case isSet = "is_set"

            case modifiedBy = "modified_by"

            case expirationDate = "expiration_date"

            case addedOnStore = "added_on_store"

            case countryOfOrigin = "country_of_origin"

            case fyndItemCode = "fynd_item_code"

            case stage
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.taxIdentifier = taxIdentifier

            self.company = company

            self.rawMeta = rawMeta

            self.totalQuantity = totalQuantity

            self.brand = brand

            self.fyndMeta = fyndMeta

            self.trader = trader

            self.fyndArticleCode = fyndArticleCode

            self.weight = weight

            self.itemId = itemId

            self.fragile = fragile

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.createdBy = createdBy

            self.dimension = dimension

            self.traceId = traceId

            self.size = size

            self.store = store

            self.quantities = quantities

            self.sellerIdentifier = sellerIdentifier

            self.customJson = customJson

            self.isActive = isActive

            self.tags = tags

            self.price = price

            self.manufacturer = manufacturer

            self.set = set

            self.trackInventory = trackInventory

            self.meta = meta

            self.isSet = isSet

            self.modifiedBy = modifiedBy

            self.expirationDate = expirationDate

            self.addedOnStore = addedOnStore

            self.countryOfOrigin = countryOfOrigin

            self.fyndItemCode = fyndItemCode

            self.stage = stage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(stage, forKey: .stage)
        }
    }
}
