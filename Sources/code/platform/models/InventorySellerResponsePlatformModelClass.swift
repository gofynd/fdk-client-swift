

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isSet: Bool?

        public var fyndMeta: [String: Any]?

        public var price: PriceMeta

        public var fyndItemCode: String

        public var modifiedBy: UserSerializer?

        public var addedOnStore: String?

        public var returnConfig: ReturnConfig1?

        public var trader: [Trader1]?

        public var uid: String

        public var fragile: Bool

        public var fyndArticleCode: String

        public var isActive: Bool?

        public var brand: BrandMeta

        public var stage: String?

        public var set: InventorySet?

        public var quantities: Quantities?

        public var size: String

        public var countryOfOrigin: String

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var store: StoreMeta

        public var company: CompanyMeta

        public var itemId: Int

        public var dimension: DimensionResponse

        public var manufacturer: ManufacturerResponse

        public var taxIdentifier: [String: Any]?

        public var tags: [String]?

        public var weight: WeightResponse

        public var totalQuantity: Int

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var rawMeta: [String: Any]?

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case fyndMeta = "fynd_meta"

            case price

            case fyndItemCode = "fynd_item_code"

            case modifiedBy = "modified_by"

            case addedOnStore = "added_on_store"

            case returnConfig = "return_config"

            case trader

            case uid

            case fragile

            case fyndArticleCode = "fynd_article_code"

            case isActive = "is_active"

            case brand

            case stage

            case set

            case quantities

            case size

            case countryOfOrigin = "country_of_origin"

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case meta

            case store

            case company

            case itemId = "item_id"

            case dimension

            case manufacturer

            case taxIdentifier = "tax_identifier"

            case tags

            case weight

            case totalQuantity = "total_quantity"

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case rawMeta = "raw_meta"

            case createdBy = "created_by"

            case identifier
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isSet = isSet

            self.fyndMeta = fyndMeta

            self.price = price

            self.fyndItemCode = fyndItemCode

            self.modifiedBy = modifiedBy

            self.addedOnStore = addedOnStore

            self.returnConfig = returnConfig

            self.trader = trader

            self.uid = uid

            self.fragile = fragile

            self.fyndArticleCode = fyndArticleCode

            self.isActive = isActive

            self.brand = brand

            self.stage = stage

            self.set = set

            self.quantities = quantities

            self.size = size

            self.countryOfOrigin = countryOfOrigin

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.meta = meta

            self.store = store

            self.company = company

            self.itemId = itemId

            self.dimension = dimension

            self.manufacturer = manufacturer

            self.taxIdentifier = taxIdentifier

            self.tags = tags

            self.weight = weight

            self.totalQuantity = totalQuantity

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.rawMeta = rawMeta

            self.createdBy = createdBy

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            uid = try container.decode(String.self, forKey: .uid)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
