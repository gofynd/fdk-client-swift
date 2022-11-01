

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndItemCode: String

        public var itemId: Int

        public var returnConfig: ReturnConfig1?

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var uid: String

        public var fyndArticleCode: String

        public var taxIdentifier: [String: Any]?

        public var weight: WeightResponse

        public var store: StoreMeta

        public var countryOfOrigin: String

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var customJson: [String: Any]?

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var rawMeta: [String: Any]?

        public var trackInventory: Bool?

        public var isSet: Bool?

        public var identifier: [String: Any]

        public var size: String

        public var createdBy: UserSerializer?

        public var fragile: Bool

        public var brand: BrandMeta

        public var expirationDate: String?

        public var stage: String?

        public var set: InventorySet?

        public var trader: [Trader1]?

        public var sellerIdentifier: String

        public var tags: [String]?

        public var price: PriceMeta

        public var totalQuantity: Int

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case fyndItemCode = "fynd_item_code"

            case itemId = "item_id"

            case returnConfig = "return_config"

            case meta

            case quantities

            case uid

            case fyndArticleCode = "fynd_article_code"

            case taxIdentifier = "tax_identifier"

            case weight

            case store

            case countryOfOrigin = "country_of_origin"

            case dimension

            case modifiedBy = "modified_by"

            case manufacturer

            case customJson = "_custom_json"

            case company

            case addedOnStore = "added_on_store"

            case rawMeta = "raw_meta"

            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case identifier

            case size

            case createdBy = "created_by"

            case fragile

            case brand

            case expirationDate = "expiration_date"

            case stage

            case set

            case trader

            case sellerIdentifier = "seller_identifier"

            case tags

            case price

            case totalQuantity = "total_quantity"

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndItemCode = fyndItemCode

            self.itemId = itemId

            self.returnConfig = returnConfig

            self.meta = meta

            self.quantities = quantities

            self.uid = uid

            self.fyndArticleCode = fyndArticleCode

            self.taxIdentifier = taxIdentifier

            self.weight = weight

            self.store = store

            self.countryOfOrigin = countryOfOrigin

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.customJson = customJson

            self.company = company

            self.addedOnStore = addedOnStore

            self.rawMeta = rawMeta

            self.trackInventory = trackInventory

            self.isSet = isSet

            self.identifier = identifier

            self.size = size

            self.createdBy = createdBy

            self.fragile = fragile

            self.brand = brand

            self.expirationDate = expirationDate

            self.stage = stage

            self.set = set

            self.trader = trader

            self.sellerIdentifier = sellerIdentifier

            self.tags = tags

            self.price = price

            self.totalQuantity = totalQuantity

            self.fyndMeta = fyndMeta

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            store = try container.decode(StoreMeta.self, forKey: .store)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            size = try container.decode(String.self, forKey: .size)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
