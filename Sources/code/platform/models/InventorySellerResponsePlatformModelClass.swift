

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fragile: Bool

        public var totalQuantity: Int

        public var sellerIdentifier: String

        public var brand: BrandMeta

        public var returnConfig: ReturnConfig1?

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var store: StoreMeta

        public var quantities: Quantities?

        public var uid: String

        public var tags: [String]?

        public var size: String

        public var rawMeta: [String: Any]?

        public var meta: [String: Any]?

        public var isSet: Bool?

        public var manufacturer: ManufacturerResponse

        public var price: PriceMeta

        public var stage: String?

        public var weight: WeightResponse

        public var identifier: [String: Any]

        public var modifiedBy: UserSerializer?

        public var trackInventory: Bool?

        public var fyndArticleCode: String

        public var trader: [Trader1]?

        public var expirationDate: String?

        public var countryOfOrigin: String

        public var dimension: DimensionResponse

        public var set: InventorySet?

        public var createdBy: UserSerializer?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var fyndMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var itemId: Int

        public var fyndItemCode: String

        public enum CodingKeys: String, CodingKey {
            case fragile

            case totalQuantity = "total_quantity"

            case sellerIdentifier = "seller_identifier"

            case brand

            case returnConfig = "return_config"

            case company

            case addedOnStore = "added_on_store"

            case store

            case quantities

            case uid

            case tags

            case size

            case rawMeta = "raw_meta"

            case meta

            case isSet = "is_set"

            case manufacturer

            case price

            case stage

            case weight

            case identifier

            case modifiedBy = "modified_by"

            case trackInventory = "track_inventory"

            case fyndArticleCode = "fynd_article_code"

            case trader

            case expirationDate = "expiration_date"

            case countryOfOrigin = "country_of_origin"

            case dimension

            case set

            case createdBy = "created_by"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case fyndMeta = "fynd_meta"

            case taxIdentifier = "tax_identifier"

            case itemId = "item_id"

            case fyndItemCode = "fynd_item_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fragile = fragile

            self.totalQuantity = totalQuantity

            self.sellerIdentifier = sellerIdentifier

            self.brand = brand

            self.returnConfig = returnConfig

            self.company = company

            self.addedOnStore = addedOnStore

            self.store = store

            self.quantities = quantities

            self.uid = uid

            self.tags = tags

            self.size = size

            self.rawMeta = rawMeta

            self.meta = meta

            self.isSet = isSet

            self.manufacturer = manufacturer

            self.price = price

            self.stage = stage

            self.weight = weight

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.trackInventory = trackInventory

            self.fyndArticleCode = fyndArticleCode

            self.trader = trader

            self.expirationDate = expirationDate

            self.countryOfOrigin = countryOfOrigin

            self.dimension = dimension

            self.set = set

            self.createdBy = createdBy

            self.customJson = customJson

            self.isActive = isActive

            self.fyndMeta = fyndMeta

            self.taxIdentifier = taxIdentifier

            self.itemId = itemId

            self.fyndItemCode = fyndItemCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
        }
    }
}
