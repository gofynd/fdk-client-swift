

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isSet: Bool?

        public var expirationDate: String?

        public var modifiedBy: UserSerializer?

        public var meta: [String: Any]?

        public var trader: [Trader1]?

        public var addedOnStore: String?

        public var createdBy: UserSerializer?

        public var brand: BrandMeta

        public var isActive: Bool?

        public var quantities: Quantities?

        public var manufacturer: ManufacturerResponse

        public var company: CompanyMeta

        public var rawMeta: [String: Any]?

        public var totalQuantity: Int

        public var fragile: Bool

        public var price: PriceMeta

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var fyndItemCode: String

        public var stage: String?

        public var returnConfig: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var size: String

        public var uid: String

        public var set: InventorySet?

        public var itemId: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var trackInventory: Bool?

        public var customJson: [String: Any]?

        public var weight: WeightResponse

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case modifiedBy = "modified_by"

            case meta

            case trader

            case addedOnStore = "added_on_store"

            case createdBy = "created_by"

            case brand

            case isActive = "is_active"

            case quantities

            case manufacturer

            case company

            case rawMeta = "raw_meta"

            case totalQuantity = "total_quantity"

            case fragile

            case price

            case store

            case taxIdentifier = "tax_identifier"

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case fyndItemCode = "fynd_item_code"

            case stage

            case returnConfig = "return_config"

            case fyndMeta = "fynd_meta"

            case size

            case uid

            case set

            case itemId = "item_id"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case trackInventory = "track_inventory"

            case customJson = "_custom_json"

            case weight
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.isSet = isSet

            self.expirationDate = expirationDate

            self.modifiedBy = modifiedBy

            self.meta = meta

            self.trader = trader

            self.addedOnStore = addedOnStore

            self.createdBy = createdBy

            self.brand = brand

            self.isActive = isActive

            self.quantities = quantities

            self.manufacturer = manufacturer

            self.company = company

            self.rawMeta = rawMeta

            self.totalQuantity = totalQuantity

            self.fragile = fragile

            self.price = price

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.fyndItemCode = fyndItemCode

            self.stage = stage

            self.returnConfig = returnConfig

            self.fyndMeta = fyndMeta

            self.size = size

            self.uid = uid

            self.set = set

            self.itemId = itemId

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.trackInventory = trackInventory

            self.customJson = customJson

            self.weight = weight
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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            price = try container.decode(PriceMeta.self, forKey: .price)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(weight, forKey: .weight)
        }
    }
}
