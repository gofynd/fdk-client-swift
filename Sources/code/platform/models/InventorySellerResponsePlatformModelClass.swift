

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var expirationDate: String?

        public var dimension: DimensionResponse

        public var size: String

        public var taxIdentifier: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var trackInventory: Bool?

        public var fragile: Bool

        public var sellerIdentifier: String

        public var meta: [String: Any]?

        public var addedOnStore: String?

        public var trader: [Trader1]?

        public var uid: String

        public var weight: WeightResponse

        public var price: PriceMeta

        public var customJson: [String: Any]?

        public var returnConfig: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var brand: BrandMeta

        public var set: InventorySet?

        public var fyndArticleCode: String

        public var rawMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var totalQuantity: Int

        public var isActive: Bool?

        public var store: StoreMeta

        public var itemId: Int

        public var quantities: Quantities?

        public var stage: String?

        public var isSet: Bool?

        public var fyndItemCode: String

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case dimension

            case size

            case taxIdentifier = "tax_identifier"

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case trackInventory = "track_inventory"

            case fragile

            case sellerIdentifier = "seller_identifier"

            case meta

            case addedOnStore = "added_on_store"

            case trader

            case uid

            case weight

            case price

            case customJson = "_custom_json"

            case returnConfig = "return_config"

            case modifiedBy = "modified_by"

            case company

            case createdBy = "created_by"

            case identifier

            case brand

            case set

            case fyndArticleCode = "fynd_article_code"

            case rawMeta = "raw_meta"

            case manufacturer

            case totalQuantity = "total_quantity"

            case isActive = "is_active"

            case store

            case itemId = "item_id"

            case quantities

            case stage

            case isSet = "is_set"

            case fyndItemCode = "fynd_item_code"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.expirationDate = expirationDate

            self.dimension = dimension

            self.size = size

            self.taxIdentifier = taxIdentifier

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.trackInventory = trackInventory

            self.fragile = fragile

            self.sellerIdentifier = sellerIdentifier

            self.meta = meta

            self.addedOnStore = addedOnStore

            self.trader = trader

            self.uid = uid

            self.weight = weight

            self.price = price

            self.customJson = customJson

            self.returnConfig = returnConfig

            self.modifiedBy = modifiedBy

            self.company = company

            self.createdBy = createdBy

            self.identifier = identifier

            self.brand = brand

            self.set = set

            self.fyndArticleCode = fyndArticleCode

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.totalQuantity = totalQuantity

            self.isActive = isActive

            self.store = store

            self.itemId = itemId

            self.quantities = quantities

            self.stage = stage

            self.isSet = isSet

            self.fyndItemCode = fyndItemCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
        }
    }
}
