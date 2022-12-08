

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var price: PriceMeta

        public var trader: [Trader1]?

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var rawMeta: [String: Any]?

        public var isSet: Bool?

        public var returnConfig: ReturnConfig1?

        public var createdBy: UserSerializer?

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var stage: String?

        public var meta: [String: Any]?

        public var brand: BrandMeta

        public var store: StoreMeta

        public var set: InventorySet?

        public var taxIdentifier: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var identifier: [String: Any]

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var modifiedBy: UserSerializer?

        public var expirationDate: String?

        public var countryOfOrigin: String

        public var uid: String

        public var totalQuantity: Int

        public var isActive: Bool?

        public var itemId: Int

        public var fyndArticleCode: String

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case manufacturer

            case trackInventory = "track_inventory"

            case price

            case trader

            case company

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"

            case isSet = "is_set"

            case returnConfig = "return_config"

            case createdBy = "created_by"

            case fyndItemCode = "fynd_item_code"

            case quantities

            case addedOnStore = "added_on_store"

            case dimension

            case weight

            case stage

            case meta

            case brand

            case store

            case set

            case taxIdentifier = "tax_identifier"

            case fyndMeta = "fynd_meta"

            case identifier

            case fragile

            case customJson = "_custom_json"

            case tags

            case modifiedBy = "modified_by"

            case expirationDate = "expiration_date"

            case countryOfOrigin = "country_of_origin"

            case uid

            case totalQuantity = "total_quantity"

            case isActive = "is_active"

            case itemId = "item_id"

            case fyndArticleCode = "fynd_article_code"

            case size
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.price = price

            self.trader = trader

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.createdBy = createdBy

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.weight = weight

            self.stage = stage

            self.meta = meta

            self.brand = brand

            self.store = store

            self.set = set

            self.taxIdentifier = taxIdentifier

            self.fyndMeta = fyndMeta

            self.identifier = identifier

            self.fragile = fragile

            self.customJson = customJson

            self.tags = tags

            self.modifiedBy = modifiedBy

            self.expirationDate = expirationDate

            self.countryOfOrigin = countryOfOrigin

            self.uid = uid

            self.totalQuantity = totalQuantity

            self.isActive = isActive

            self.itemId = itemId

            self.fyndArticleCode = fyndArticleCode

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            uid = try container.decode(String.self, forKey: .uid)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
