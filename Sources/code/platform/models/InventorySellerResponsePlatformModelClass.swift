

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var expirationDate: String?

        public var itemId: Int

        public var set: InventorySet?

        public var countryOfOrigin: String

        public var traceId: String?

        public var createdBy: UserSerializer?

        public var returnConfig: ReturnConfig1?

        public var trackInventory: Bool?

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var isSet: Bool?

        public var weight: WeightResponse

        public var isActive: Bool?

        public var sellerIdentifier: String

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var tags: [String]?

        public var uid: String

        public var fragile: Bool

        public var brand: BrandMeta

        public var stage: String?

        public var manufacturer: ManufacturerResponse

        public var price: PriceMeta

        public var fyndItemCode: String

        public var size: String

        public var addedOnStore: String?

        public var fyndArticleCode: String

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case itemId = "item_id"

            case set

            case countryOfOrigin = "country_of_origin"

            case traceId = "trace_id"

            case createdBy = "created_by"

            case returnConfig = "return_config"

            case trackInventory = "track_inventory"

            case store

            case meta

            case quantities

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case isSet = "is_set"

            case weight

            case isActive = "is_active"

            case sellerIdentifier = "seller_identifier"

            case modifiedBy = "modified_by"

            case company

            case tags

            case uid

            case fragile

            case brand

            case stage

            case manufacturer

            case price

            case fyndItemCode = "fynd_item_code"

            case size

            case addedOnStore = "added_on_store"

            case fyndArticleCode = "fynd_article_code"

            case totalQuantity = "total_quantity"

            case identifier

            case taxIdentifier = "tax_identifier"

            case dimension

            case trader

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.expirationDate = expirationDate

            self.itemId = itemId

            self.set = set

            self.countryOfOrigin = countryOfOrigin

            self.traceId = traceId

            self.createdBy = createdBy

            self.returnConfig = returnConfig

            self.trackInventory = trackInventory

            self.store = store

            self.meta = meta

            self.quantities = quantities

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.isSet = isSet

            self.weight = weight

            self.isActive = isActive

            self.sellerIdentifier = sellerIdentifier

            self.modifiedBy = modifiedBy

            self.company = company

            self.tags = tags

            self.uid = uid

            self.fragile = fragile

            self.brand = brand

            self.stage = stage

            self.manufacturer = manufacturer

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.size = size

            self.addedOnStore = addedOnStore

            self.fyndArticleCode = fyndArticleCode

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.trader = trader

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            size = try container.decode(String.self, forKey: .size)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}
