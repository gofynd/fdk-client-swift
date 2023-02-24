

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trackInventory: Bool?

        public var returnConfig: ReturnConfig1?

        public var rawMeta: [String: Any]?

        public var itemId: Int

        public var addedOnStore: String?

        public var identifier: [String: Any]

        public var manufacturer: ManufacturerResponse

        public var isSet: Bool?

        public var stage: String?

        public var fragile: Bool

        public var taxIdentifier: [String: Any]?

        public var meta: [String: Any]?

        public var dimension: DimensionResponse

        public var fyndItemCode: String

        public var fyndArticleCode: String

        public var size: String

        public var uid: String

        public var brand: BrandMeta

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var weight: WeightResponse

        public var totalQuantity: Int

        public var quantities: Quantities?

        public var set: InventorySet?

        public var tags: [String]?

        public var company: CompanyMeta

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var customJson: [String: Any]?

        public var expirationDate: String?

        public var trader: [Trader1]?

        public var traceId: String?

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var isActive: Bool?

        public var store: StoreMeta

        public enum CodingKeys: String, CodingKey {
            case trackInventory = "track_inventory"

            case returnConfig = "return_config"

            case rawMeta = "raw_meta"

            case itemId = "item_id"

            case addedOnStore = "added_on_store"

            case identifier

            case manufacturer

            case isSet = "is_set"

            case stage

            case fragile

            case taxIdentifier = "tax_identifier"

            case meta

            case dimension

            case fyndItemCode = "fynd_item_code"

            case fyndArticleCode = "fynd_article_code"

            case size

            case uid

            case brand

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case weight

            case totalQuantity = "total_quantity"

            case quantities

            case set

            case tags

            case company

            case price

            case sellerIdentifier = "seller_identifier"

            case customJson = "_custom_json"

            case expirationDate = "expiration_date"

            case trader

            case traceId = "trace_id"

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case isActive = "is_active"

            case store
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trackInventory = trackInventory

            self.returnConfig = returnConfig

            self.rawMeta = rawMeta

            self.itemId = itemId

            self.addedOnStore = addedOnStore

            self.identifier = identifier

            self.manufacturer = manufacturer

            self.isSet = isSet

            self.stage = stage

            self.fragile = fragile

            self.taxIdentifier = taxIdentifier

            self.meta = meta

            self.dimension = dimension

            self.fyndItemCode = fyndItemCode

            self.fyndArticleCode = fyndArticleCode

            self.size = size

            self.uid = uid

            self.brand = brand

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.weight = weight

            self.totalQuantity = totalQuantity

            self.quantities = quantities

            self.set = set

            self.tags = tags

            self.company = company

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.customJson = customJson

            self.expirationDate = expirationDate

            self.trader = trader

            self.traceId = traceId

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.isActive = isActive

            self.store = store
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(store, forKey: .store)
        }
    }
}
