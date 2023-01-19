

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isActive: Bool?

        public var customJson: [String: Any]?

        public var traceId: String?

        public var fragile: Bool

        public var expirationDate: String?

        public var tags: [String]?

        public var price: PriceMeta

        public var company: CompanyMeta

        public var stage: String?

        public var rawMeta: [String: Any]?

        public var store: StoreMeta

        public var fyndItemCode: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var quantities: Quantities?

        public var countryOfOrigin: String

        public var size: String

        public var set: InventorySet?

        public var totalQuantity: Int

        public var dimension: DimensionResponse

        public var addedOnStore: String?

        public var meta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var isSet: Bool?

        public var returnConfig: ReturnConfig1?

        public var createdBy: UserSerializer?

        public var fyndArticleCode: String

        public var identifier: [String: Any]

        public var trader: [Trader1]?

        public var trackInventory: Bool?

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var weight: WeightResponse

        public var brand: BrandMeta

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case customJson = "_custom_json"

            case traceId = "trace_id"

            case fragile

            case expirationDate = "expiration_date"

            case tags

            case price

            case company

            case stage

            case rawMeta = "raw_meta"

            case store

            case fyndItemCode = "fynd_item_code"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case quantities

            case countryOfOrigin = "country_of_origin"

            case size

            case set

            case totalQuantity = "total_quantity"

            case dimension

            case addedOnStore = "added_on_store"

            case meta

            case manufacturer

            case isSet = "is_set"

            case returnConfig = "return_config"

            case createdBy = "created_by"

            case fyndArticleCode = "fynd_article_code"

            case identifier

            case trader

            case trackInventory = "track_inventory"

            case uid

            case modifiedBy = "modified_by"

            case taxIdentifier = "tax_identifier"

            case fyndMeta = "fynd_meta"

            case weight

            case brand
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.customJson = customJson

            self.traceId = traceId

            self.fragile = fragile

            self.expirationDate = expirationDate

            self.tags = tags

            self.price = price

            self.company = company

            self.stage = stage

            self.rawMeta = rawMeta

            self.store = store

            self.fyndItemCode = fyndItemCode

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.quantities = quantities

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.set = set

            self.totalQuantity = totalQuantity

            self.dimension = dimension

            self.addedOnStore = addedOnStore

            self.meta = meta

            self.manufacturer = manufacturer

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.createdBy = createdBy

            self.fyndArticleCode = fyndArticleCode

            self.identifier = identifier

            self.trader = trader

            self.trackInventory = trackInventory

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.taxIdentifier = taxIdentifier

            self.fyndMeta = fyndMeta

            self.weight = weight

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            brand = try container.decode(BrandMeta.self, forKey: .brand)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
