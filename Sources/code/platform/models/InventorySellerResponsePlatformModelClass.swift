

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var taxIdentifier: [String: Any]?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var uid: String

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var expirationDate: String?

        public var set: InventorySet?

        public var tags: [String]?

        public var createdBy: UserSerializer?

        public var itemId: Int

        public var company: CompanyMeta

        public var fyndArticleCode: String

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var trader: [Trader1]?

        public var isActive: Bool?

        public var fyndItemCode: String

        public var addedOnStore: String?

        public var isSet: Bool?

        public var customJson: [String: Any]?

        public var size: String

        public var stage: String?

        public var countryOfOrigin: String

        public var weight: WeightResponse

        public var meta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var quantities: Quantities?

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta

        public var dimension: DimensionResponse

        public var price: PriceMeta

        public enum CodingKeys: String, CodingKey {
            case taxIdentifier = "tax_identifier"

            case fragile

            case rawMeta = "raw_meta"

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case uid

            case identifier

            case returnConfig = "return_config"

            case expirationDate = "expiration_date"

            case set

            case tags

            case createdBy = "created_by"

            case itemId = "item_id"

            case company

            case fyndArticleCode = "fynd_article_code"

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case store

            case trader

            case isActive = "is_active"

            case fyndItemCode = "fynd_item_code"

            case addedOnStore = "added_on_store"

            case isSet = "is_set"

            case customJson = "_custom_json"

            case size

            case stage

            case countryOfOrigin = "country_of_origin"

            case weight

            case meta

            case manufacturer

            case quantities

            case modifiedBy = "modified_by"

            case brand

            case dimension

            case price
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.taxIdentifier = taxIdentifier

            self.fragile = fragile

            self.rawMeta = rawMeta

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.uid = uid

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.expirationDate = expirationDate

            self.set = set

            self.tags = tags

            self.createdBy = createdBy

            self.itemId = itemId

            self.company = company

            self.fyndArticleCode = fyndArticleCode

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.store = store

            self.trader = trader

            self.isActive = isActive

            self.fyndItemCode = fyndItemCode

            self.addedOnStore = addedOnStore

            self.isSet = isSet

            self.customJson = customJson

            self.size = size

            self.stage = stage

            self.countryOfOrigin = countryOfOrigin

            self.weight = weight

            self.meta = meta

            self.manufacturer = manufacturer

            self.quantities = quantities

            self.modifiedBy = modifiedBy

            self.brand = brand

            self.dimension = dimension

            self.price = price
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            price = try container.decode(PriceMeta.self, forKey: .price)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(price, forKey: .price)
        }
    }
}
