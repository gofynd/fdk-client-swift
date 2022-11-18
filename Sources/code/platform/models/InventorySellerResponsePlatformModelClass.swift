

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var returnConfig: ReturnConfig1?

        public var fyndMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var set: InventorySet?

        public var stage: String?

        public var sellerIdentifier: String

        public var dimension: DimensionResponse

        public var quantities: Quantities?

        public var meta: [String: Any]?

        public var weight: WeightResponse

        public var fyndItemCode: String

        public var store: StoreMeta

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var itemId: Int

        public var rawMeta: [String: Any]?

        public var price: PriceMeta

        public var brand: BrandMeta

        public var isSet: Bool?

        public var uid: String

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var fyndArticleCode: String

        public var modifiedBy: UserSerializer?

        public var tags: [String]?

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var expirationDate: String?

        public var isActive: Bool?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var size: String

        public var addedOnStore: String?

        public var trackInventory: Bool?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case fyndMeta = "fynd_meta"

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case set

            case stage

            case sellerIdentifier = "seller_identifier"

            case dimension

            case quantities

            case meta

            case weight

            case fyndItemCode = "fynd_item_code"

            case store

            case company

            case manufacturer

            case itemId = "item_id"

            case rawMeta = "raw_meta"

            case price

            case brand

            case isSet = "is_set"

            case uid

            case fragile

            case customJson = "_custom_json"

            case fyndArticleCode = "fynd_article_code"

            case modifiedBy = "modified_by"

            case tags

            case createdBy = "created_by"

            case identifier

            case expirationDate = "expiration_date"

            case isActive = "is_active"

            case trader

            case totalQuantity = "total_quantity"

            case size

            case addedOnStore = "added_on_store"

            case trackInventory = "track_inventory"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.fyndMeta = fyndMeta

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.set = set

            self.stage = stage

            self.sellerIdentifier = sellerIdentifier

            self.dimension = dimension

            self.quantities = quantities

            self.meta = meta

            self.weight = weight

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.company = company

            self.manufacturer = manufacturer

            self.itemId = itemId

            self.rawMeta = rawMeta

            self.price = price

            self.brand = brand

            self.isSet = isSet

            self.uid = uid

            self.fragile = fragile

            self.customJson = customJson

            self.fyndArticleCode = fyndArticleCode

            self.modifiedBy = modifiedBy

            self.tags = tags

            self.createdBy = createdBy

            self.identifier = identifier

            self.expirationDate = expirationDate

            self.isActive = isActive

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.size = size

            self.addedOnStore = addedOnStore

            self.trackInventory = trackInventory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            size = try container.decode(String.self, forKey: .size)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
        }
    }
}
