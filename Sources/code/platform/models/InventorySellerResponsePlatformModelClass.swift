

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var tags: [String]?

        public var isSet: Bool?

        public var fyndMeta: [String: Any]?

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var brand: BrandMeta

        public var set: InventorySet?

        public var dimension: DimensionResponse

        public var quantities: Quantities?

        public var fragile: Bool

        public var trader: [Trader1]?

        public var addedOnStore: String?

        public var meta: [String: Any]?

        public var countryOfOrigin: String

        public var price: PriceMeta

        public var expirationDate: String?

        public var uid: String

        public var taxIdentifier: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var store: StoreMeta

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var stage: String?

        public var fyndArticleCode: String

        public var size: String

        public var modifiedBy: UserSerializer?

        public var trackInventory: Bool?

        public var company: CompanyMeta

        public var identifier: [String: Any]

        public var rawMeta: [String: Any]?

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var sellerIdentifier: String

        public var manufacturer: ManufacturerResponse

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case tags

            case isSet = "is_set"

            case fyndMeta = "fynd_meta"

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case brand

            case set

            case dimension

            case quantities

            case fragile

            case trader

            case addedOnStore = "added_on_store"

            case meta

            case countryOfOrigin = "country_of_origin"

            case price

            case expirationDate = "expiration_date"

            case uid

            case taxIdentifier = "tax_identifier"

            case returnConfig = "return_config"

            case store

            case weight

            case customJson = "_custom_json"

            case stage

            case fyndArticleCode = "fynd_article_code"

            case size

            case modifiedBy = "modified_by"

            case trackInventory = "track_inventory"

            case company

            case identifier

            case rawMeta = "raw_meta"

            case isActive = "is_active"

            case createdBy = "created_by"

            case sellerIdentifier = "seller_identifier"

            case manufacturer

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.tags = tags

            self.isSet = isSet

            self.fyndMeta = fyndMeta

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.brand = brand

            self.set = set

            self.dimension = dimension

            self.quantities = quantities

            self.fragile = fragile

            self.trader = trader

            self.addedOnStore = addedOnStore

            self.meta = meta

            self.countryOfOrigin = countryOfOrigin

            self.price = price

            self.expirationDate = expirationDate

            self.uid = uid

            self.taxIdentifier = taxIdentifier

            self.returnConfig = returnConfig

            self.store = store

            self.weight = weight

            self.customJson = customJson

            self.stage = stage

            self.fyndArticleCode = fyndArticleCode

            self.size = size

            self.modifiedBy = modifiedBy

            self.trackInventory = trackInventory

            self.company = company

            self.identifier = identifier

            self.rawMeta = rawMeta

            self.isActive = isActive

            self.createdBy = createdBy

            self.sellerIdentifier = sellerIdentifier

            self.manufacturer = manufacturer

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            size = try container.decode(String.self, forKey: .size)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
