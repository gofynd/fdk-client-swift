

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var dimension: DimensionResponse

        public var store: StoreMeta

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var weight: WeightResponse

        public var brand: BrandMeta

        public var createdBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var trackInventory: Bool?

        public var price: PriceMeta

        public var quantities: Quantities?

        public var returnConfig: ReturnConfig1?

        public var isActive: Bool?

        public var size: String

        public var fyndItemCode: String

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var customJson: [String: Any]?

        public var stage: String?

        public var itemId: Int

        public var trader: [Trader1]?

        public var identifier: [String: Any]

        public var company: CompanyMeta

        public var fyndMeta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var uid: String

        public var tags: [String]?

        public var isSet: Bool?

        public var fyndArticleCode: String

        public var fragile: Bool

        public var manufacturer: ManufacturerResponse

        public enum CodingKeys: String, CodingKey {
            case dimension

            case store

            case expirationDate = "expiration_date"

            case meta

            case sellerIdentifier = "seller_identifier"

            case set

            case weight

            case brand

            case createdBy = "created_by"

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case trackInventory = "track_inventory"

            case price

            case quantities

            case returnConfig = "return_config"

            case isActive = "is_active"

            case size

            case fyndItemCode = "fynd_item_code"

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case customJson = "_custom_json"

            case stage

            case itemId = "item_id"

            case trader

            case identifier

            case company

            case fyndMeta = "fynd_meta"

            case modifiedBy = "modified_by"

            case rawMeta = "raw_meta"

            case uid

            case tags

            case isSet = "is_set"

            case fyndArticleCode = "fynd_article_code"

            case fragile

            case manufacturer
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.store = store

            self.expirationDate = expirationDate

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.weight = weight

            self.brand = brand

            self.createdBy = createdBy

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.trackInventory = trackInventory

            self.price = price

            self.quantities = quantities

            self.returnConfig = returnConfig

            self.isActive = isActive

            self.size = size

            self.fyndItemCode = fyndItemCode

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.customJson = customJson

            self.stage = stage

            self.itemId = itemId

            self.trader = trader

            self.identifier = identifier

            self.company = company

            self.fyndMeta = fyndMeta

            self.modifiedBy = modifiedBy

            self.rawMeta = rawMeta

            self.uid = uid

            self.tags = tags

            self.isSet = isSet

            self.fyndArticleCode = fyndArticleCode

            self.fragile = fragile

            self.manufacturer = manufacturer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
        }
    }
}
