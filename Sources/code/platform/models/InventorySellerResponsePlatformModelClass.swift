

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var company: CompanyMeta

        public var identifier: [String: Any]

        public var size: String

        public var rawMeta: [String: Any]?

        public var set: InventorySet?

        public var uid: String

        public var store: StoreMeta

        public var dimension: DimensionResponse

        public var taxIdentifier: [String: Any]?

        public var fragile: Bool

        public var fyndItemCode: String

        public var brand: BrandMeta

        public var sellerIdentifier: String

        public var fyndMeta: [String: Any]?

        public var totalQuantity: Int

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var meta: [String: Any]?

        public var trader: [Trader1]?

        public var stage: String?

        public var expirationDate: String?

        public var addedOnStore: String?

        public var quantities: Quantities?

        public var isActive: Bool?

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var fyndArticleCode: String

        public var weight: WeightResponse

        public var tags: [String]?

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var itemId: Int

        public var returnConfig: ReturnConfig1?

        public enum CodingKeys: String, CodingKey {
            case company

            case identifier

            case size

            case rawMeta = "raw_meta"

            case set

            case uid

            case store

            case dimension

            case taxIdentifier = "tax_identifier"

            case fragile

            case fyndItemCode = "fynd_item_code"

            case brand

            case sellerIdentifier = "seller_identifier"

            case fyndMeta = "fynd_meta"

            case totalQuantity = "total_quantity"

            case customJson = "_custom_json"

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case meta

            case trader

            case stage

            case expirationDate = "expiration_date"

            case addedOnStore = "added_on_store"

            case quantities

            case isActive = "is_active"

            case modifiedBy = "modified_by"

            case price

            case fyndArticleCode = "fynd_article_code"

            case weight

            case tags

            case manufacturer

            case trackInventory = "track_inventory"

            case itemId = "item_id"

            case returnConfig = "return_config"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.company = company

            self.identifier = identifier

            self.size = size

            self.rawMeta = rawMeta

            self.set = set

            self.uid = uid

            self.store = store

            self.dimension = dimension

            self.taxIdentifier = taxIdentifier

            self.fragile = fragile

            self.fyndItemCode = fyndItemCode

            self.brand = brand

            self.sellerIdentifier = sellerIdentifier

            self.fyndMeta = fyndMeta

            self.totalQuantity = totalQuantity

            self.customJson = customJson

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.meta = meta

            self.trader = trader

            self.stage = stage

            self.expirationDate = expirationDate

            self.addedOnStore = addedOnStore

            self.quantities = quantities

            self.isActive = isActive

            self.modifiedBy = modifiedBy

            self.price = price

            self.fyndArticleCode = fyndArticleCode

            self.weight = weight

            self.tags = tags

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.itemId = itemId

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            size = try container.decode(String.self, forKey: .size)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            uid = try container.decode(String.self, forKey: .uid)

            store = try container.decode(StoreMeta.self, forKey: .store)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
