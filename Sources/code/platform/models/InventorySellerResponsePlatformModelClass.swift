

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var dimension: DimensionResponse

        public var countryOfOrigin: String

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var size: String

        public var brand: BrandMeta

        public var manufacturer: ManufacturerResponse

        public var traceId: String?

        public var fyndMeta: [String: Any]?

        public var weight: WeightResponse

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var quantities: Quantities?

        public var returnConfig: ReturnConfig1?

        public var fragile: Bool

        public var addedOnStore: String?

        public var identifier: [String: Any]

        public var fyndArticleCode: String

        public var taxIdentifier: [String: Any]?

        public var fyndItemCode: String

        public var tags: [String]?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var rawMeta: [String: Any]?

        public var stage: String?

        public var company: CompanyMeta

        public var expirationDate: String?

        public var isActive: Bool?

        public var meta: [String: Any]?

        public var store: StoreMeta

        public var price: PriceMeta

        public var itemId: Int

        public var customJson: [String: Any]?

        public var sellerIdentifier: String

        public var set: InventorySet?

        public enum CodingKeys: String, CodingKey {
            case dimension

            case countryOfOrigin = "country_of_origin"

            case uid

            case modifiedBy = "modified_by"

            case size

            case brand

            case manufacturer

            case traceId = "trace_id"

            case fyndMeta = "fynd_meta"

            case weight

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case createdBy = "created_by"

            case quantities

            case returnConfig = "return_config"

            case fragile

            case addedOnStore = "added_on_store"

            case identifier

            case fyndArticleCode = "fynd_article_code"

            case taxIdentifier = "tax_identifier"

            case fyndItemCode = "fynd_item_code"

            case tags

            case trader

            case totalQuantity = "total_quantity"

            case rawMeta = "raw_meta"

            case stage

            case company

            case expirationDate = "expiration_date"

            case isActive = "is_active"

            case meta

            case store

            case price

            case itemId = "item_id"

            case customJson = "_custom_json"

            case sellerIdentifier = "seller_identifier"

            case set
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.size = size

            self.brand = brand

            self.manufacturer = manufacturer

            self.traceId = traceId

            self.fyndMeta = fyndMeta

            self.weight = weight

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.createdBy = createdBy

            self.quantities = quantities

            self.returnConfig = returnConfig

            self.fragile = fragile

            self.addedOnStore = addedOnStore

            self.identifier = identifier

            self.fyndArticleCode = fyndArticleCode

            self.taxIdentifier = taxIdentifier

            self.fyndItemCode = fyndItemCode

            self.tags = tags

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.rawMeta = rawMeta

            self.stage = stage

            self.company = company

            self.expirationDate = expirationDate

            self.isActive = isActive

            self.meta = meta

            self.store = store

            self.price = price

            self.itemId = itemId

            self.customJson = customJson

            self.sellerIdentifier = sellerIdentifier

            self.set = set
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)
        }
    }
}
