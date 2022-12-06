

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var uid: String

        public var sellerIdentifier: String

        public var fyndMeta: [String: Any]?

        public var identifier: [String: Any]

        public var itemId: Int

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var modifiedBy: UserSerializer?

        public var totalQuantity: Int

        public var price: PriceMeta

        public var stage: String?

        public var expirationDate: String?

        public var fragile: Bool

        public var addedOnStore: String?

        public var meta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var brand: BrandMeta

        public var fyndItemCode: String

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var taxIdentifier: [String: Any]?

        public var set: InventorySet?

        public var store: StoreMeta

        public var size: String

        public var tags: [String]?

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var createdBy: UserSerializer?

        public var trader: [Trader1]?

        public var customJson: [String: Any]?

        public var isSet: Bool?

        public var isActive: Bool?

        public var rawMeta: [String: Any]?

        public var quantities: Quantities?

        public enum CodingKeys: String, CodingKey {
            case uid

            case sellerIdentifier = "seller_identifier"

            case fyndMeta = "fynd_meta"

            case identifier

            case itemId = "item_id"

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case modifiedBy = "modified_by"

            case totalQuantity = "total_quantity"

            case price

            case stage

            case expirationDate = "expiration_date"

            case fragile

            case addedOnStore = "added_on_store"

            case meta

            case returnConfig = "return_config"

            case brand

            case fyndItemCode = "fynd_item_code"

            case company

            case manufacturer

            case trackInventory = "track_inventory"

            case taxIdentifier = "tax_identifier"

            case set

            case store

            case size

            case tags

            case dimension

            case weight

            case createdBy = "created_by"

            case trader

            case customJson = "_custom_json"

            case isSet = "is_set"

            case isActive = "is_active"

            case rawMeta = "raw_meta"

            case quantities
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.sellerIdentifier = sellerIdentifier

            self.fyndMeta = fyndMeta

            self.identifier = identifier

            self.itemId = itemId

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.modifiedBy = modifiedBy

            self.totalQuantity = totalQuantity

            self.price = price

            self.stage = stage

            self.expirationDate = expirationDate

            self.fragile = fragile

            self.addedOnStore = addedOnStore

            self.meta = meta

            self.returnConfig = returnConfig

            self.brand = brand

            self.fyndItemCode = fyndItemCode

            self.company = company

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.taxIdentifier = taxIdentifier

            self.set = set

            self.store = store

            self.size = size

            self.tags = tags

            self.dimension = dimension

            self.weight = weight

            self.createdBy = createdBy

            self.trader = trader

            self.customJson = customJson

            self.isSet = isSet

            self.isActive = isActive

            self.rawMeta = rawMeta

            self.quantities = quantities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            price = try container.decode(PriceMeta.self, forKey: .price)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            size = try container.decode(String.self, forKey: .size)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)
        }
    }
}
