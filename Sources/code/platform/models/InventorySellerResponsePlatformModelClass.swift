

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var set: InventorySet?

        public var modifiedBy: UserSerializer?

        public var customJson: [String: Any]?

        public var itemId: Int

        public var rawMeta: [String: Any]?

        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var brand: BrandMeta

        public var price: PriceMeta

        public var addedOnStore: String?

        public var taxIdentifier: [String: Any]?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var trader: [Trader1]?

        public var returnConfig: ReturnConfig1?

        public var totalQuantity: Int

        public var expirationDate: String?

        public var weight: WeightResponse

        public var stage: String?

        public var quantities: Quantities?

        public var uid: String

        public var manufacturer: ManufacturerResponse

        public var size: String

        public var identifier: [String: Any]

        public var fyndMeta: [String: Any]?

        public var fragile: Bool

        public var traceId: String?

        public var sellerIdentifier: String

        public var fyndItemCode: String

        public var tags: [String]?

        public var fyndArticleCode: String

        public var isActive: Bool?

        public var meta: [String: Any]?

        public var isSet: Bool?

        public var trackInventory: Bool?

        public var store: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case set

            case modifiedBy = "modified_by"

            case customJson = "_custom_json"

            case itemId = "item_id"

            case rawMeta = "raw_meta"

            case dimension

            case countryOfOrigin = "country_of_origin"

            case brand

            case price

            case addedOnStore = "added_on_store"

            case taxIdentifier = "tax_identifier"

            case company

            case createdBy = "created_by"

            case trader

            case returnConfig = "return_config"

            case totalQuantity = "total_quantity"

            case expirationDate = "expiration_date"

            case weight

            case stage

            case quantities

            case uid

            case manufacturer

            case size

            case identifier

            case fyndMeta = "fynd_meta"

            case fragile

            case traceId = "trace_id"

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"

            case tags

            case fyndArticleCode = "fynd_article_code"

            case isActive = "is_active"

            case meta

            case isSet = "is_set"

            case trackInventory = "track_inventory"

            case store
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.set = set

            self.modifiedBy = modifiedBy

            self.customJson = customJson

            self.itemId = itemId

            self.rawMeta = rawMeta

            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.brand = brand

            self.price = price

            self.addedOnStore = addedOnStore

            self.taxIdentifier = taxIdentifier

            self.company = company

            self.createdBy = createdBy

            self.trader = trader

            self.returnConfig = returnConfig

            self.totalQuantity = totalQuantity

            self.expirationDate = expirationDate

            self.weight = weight

            self.stage = stage

            self.quantities = quantities

            self.uid = uid

            self.manufacturer = manufacturer

            self.size = size

            self.identifier = identifier

            self.fyndMeta = fyndMeta

            self.fragile = fragile

            self.traceId = traceId

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode

            self.tags = tags

            self.fyndArticleCode = fyndArticleCode

            self.isActive = isActive

            self.meta = meta

            self.isSet = isSet

            self.trackInventory = trackInventory

            self.store = store
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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

            uid = try container.decode(String.self, forKey: .uid)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            size = try container.decode(String.self, forKey: .size)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(store, forKey: .store)
        }
    }
}
