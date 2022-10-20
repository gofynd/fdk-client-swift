

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var countryOfOrigin: String

        public var trader: [Trader1]?

        public var fyndMeta: [String: Any]?

        public var brand: BrandMeta

        public var fyndArticleCode: String

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var uid: String

        public var itemId: Int

        public var expirationDate: String?

        public var quantities: Quantities?

        public var store: StoreMeta

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var trackInventory: Bool?

        public var stage: String?

        public var isSet: Bool?

        public var set: InventorySet?

        public var rawMeta: [String: Any]?

        public var createdBy: UserSerializer?

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var meta: [String: Any]?

        public var addedOnStore: String?

        public var size: String

        public var fragile: Bool

        public var manufacturer: ManufacturerResponse

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var tags: [String]?

        public var isActive: Bool?

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var fyndItemCode: String

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case trader

            case fyndMeta = "fynd_meta"

            case brand

            case fyndArticleCode = "fynd_article_code"

            case taxIdentifier = "tax_identifier"

            case dimension

            case uid

            case itemId = "item_id"

            case expirationDate = "expiration_date"

            case quantities

            case store

            case totalQuantity = "total_quantity"

            case identifier

            case returnConfig = "return_config"

            case trackInventory = "track_inventory"

            case stage

            case isSet = "is_set"

            case set

            case rawMeta = "raw_meta"

            case createdBy = "created_by"

            case weight

            case customJson = "_custom_json"

            case meta

            case addedOnStore = "added_on_store"

            case size

            case fragile

            case manufacturer

            case modifiedBy = "modified_by"

            case price

            case tags

            case isActive = "is_active"

            case company

            case sellerIdentifier = "seller_identifier"

            case fyndItemCode = "fynd_item_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.trader = trader

            self.fyndMeta = fyndMeta

            self.brand = brand

            self.fyndArticleCode = fyndArticleCode

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.uid = uid

            self.itemId = itemId

            self.expirationDate = expirationDate

            self.quantities = quantities

            self.store = store

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.trackInventory = trackInventory

            self.stage = stage

            self.isSet = isSet

            self.set = set

            self.rawMeta = rawMeta

            self.createdBy = createdBy

            self.weight = weight

            self.customJson = customJson

            self.meta = meta

            self.addedOnStore = addedOnStore

            self.size = size

            self.fragile = fragile

            self.manufacturer = manufacturer

            self.modifiedBy = modifiedBy

            self.price = price

            self.tags = tags

            self.isActive = isActive

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.fyndItemCode = fyndItemCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            uid = try container.decode(String.self, forKey: .uid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
        }
    }
}
