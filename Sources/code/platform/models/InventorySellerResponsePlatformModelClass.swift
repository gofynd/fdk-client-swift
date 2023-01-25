

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var dimension: DimensionResponse

        public var trackInventory: Bool?

        public var manufacturer: ManufacturerResponse

        public var expirationDate: String?

        public var brand: BrandMeta

        public var customJson: [String: Any]?

        public var stage: String?

        public var modifiedBy: UserSerializer?

        public var uid: String

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var price: PriceMeta

        public var totalQuantity: Int

        public var fyndArticleCode: String

        public var itemId: Int

        public var store: StoreMeta

        public var identifier: [String: Any]

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var isActive: Bool?

        public var addedOnStore: String?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var traceId: String?

        public var size: String

        public var isSet: Bool?

        public var tags: [String]?

        public var set: InventorySet?

        public var createdBy: UserSerializer?

        public var meta: [String: Any]?

        public var fragile: Bool

        public var trader: [Trader1]?

        public var taxIdentifier: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case dimension

            case trackInventory = "track_inventory"

            case manufacturer

            case expirationDate = "expiration_date"

            case brand

            case customJson = "_custom_json"

            case stage

            case modifiedBy = "modified_by"

            case uid

            case company

            case sellerIdentifier = "seller_identifier"

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case weight

            case price

            case totalQuantity = "total_quantity"

            case fyndArticleCode = "fynd_article_code"

            case itemId = "item_id"

            case store

            case identifier

            case quantities

            case rawMeta = "raw_meta"

            case isActive = "is_active"

            case addedOnStore = "added_on_store"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case traceId = "trace_id"

            case size

            case isSet = "is_set"

            case tags

            case set

            case createdBy = "created_by"

            case meta

            case fragile

            case trader

            case taxIdentifier = "tax_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.trackInventory = trackInventory

            self.manufacturer = manufacturer

            self.expirationDate = expirationDate

            self.brand = brand

            self.customJson = customJson

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.weight = weight

            self.price = price

            self.totalQuantity = totalQuantity

            self.fyndArticleCode = fyndArticleCode

            self.itemId = itemId

            self.store = store

            self.identifier = identifier

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.isActive = isActive

            self.addedOnStore = addedOnStore

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.traceId = traceId

            self.size = size

            self.isSet = isSet

            self.tags = tags

            self.set = set

            self.createdBy = createdBy

            self.meta = meta

            self.fragile = fragile

            self.trader = trader

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            uid = try container.decode(String.self, forKey: .uid)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            price = try container.decode(PriceMeta.self, forKey: .price)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            store = try container.decode(StoreMeta.self, forKey: .store)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
