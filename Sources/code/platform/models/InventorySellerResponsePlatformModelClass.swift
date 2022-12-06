

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var set: InventorySet?

        public var company: CompanyMeta

        public var trackInventory: Bool?

        public var identifier: [String: Any]

        public var brand: BrandMeta

        public var rawMeta: [String: Any]?

        public var itemId: Int

        public var fyndMeta: [String: Any]?

        public var quantities: Quantities?

        public var fyndArticleCode: String

        public var stage: String?

        public var totalQuantity: Int

        public var fyndItemCode: String

        public var taxIdentifier: [String: Any]?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var manufacturer: ManufacturerResponse

        public var store: StoreMeta

        public var trader: [Trader1]?

        public var dimension: DimensionResponse

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var tags: [String]?

        public var modifiedBy: UserSerializer?

        public var isActive: Bool?

        public var addedOnStore: String?

        public var fragile: Bool

        public var meta: [String: Any]?

        public var createdBy: UserSerializer?

        public var size: String

        public var sellerIdentifier: String

        public var countryOfOrigin: String

        public var price: PriceMeta

        public var expirationDate: String?

        public var weight: WeightResponse

        public enum CodingKeys: String, CodingKey {
            case set

            case company

            case trackInventory = "track_inventory"

            case identifier

            case brand

            case rawMeta = "raw_meta"

            case itemId = "item_id"

            case fyndMeta = "fynd_meta"

            case quantities

            case fyndArticleCode = "fynd_article_code"

            case stage

            case totalQuantity = "total_quantity"

            case fyndItemCode = "fynd_item_code"

            case taxIdentifier = "tax_identifier"

            case customJson = "_custom_json"

            case isSet = "is_set"

            case manufacturer

            case store

            case trader

            case dimension

            case returnConfig = "return_config"

            case uid

            case tags

            case modifiedBy = "modified_by"

            case isActive = "is_active"

            case addedOnStore = "added_on_store"

            case fragile

            case meta

            case createdBy = "created_by"

            case size

            case sellerIdentifier = "seller_identifier"

            case countryOfOrigin = "country_of_origin"

            case price

            case expirationDate = "expiration_date"

            case weight
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.set = set

            self.company = company

            self.trackInventory = trackInventory

            self.identifier = identifier

            self.brand = brand

            self.rawMeta = rawMeta

            self.itemId = itemId

            self.fyndMeta = fyndMeta

            self.quantities = quantities

            self.fyndArticleCode = fyndArticleCode

            self.stage = stage

            self.totalQuantity = totalQuantity

            self.fyndItemCode = fyndItemCode

            self.taxIdentifier = taxIdentifier

            self.customJson = customJson

            self.isSet = isSet

            self.manufacturer = manufacturer

            self.store = store

            self.trader = trader

            self.dimension = dimension

            self.returnConfig = returnConfig

            self.uid = uid

            self.tags = tags

            self.modifiedBy = modifiedBy

            self.isActive = isActive

            self.addedOnStore = addedOnStore

            self.fragile = fragile

            self.meta = meta

            self.createdBy = createdBy

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.price = price

            self.expirationDate = expirationDate

            self.weight = weight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            size = try container.decode(String.self, forKey: .size)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
