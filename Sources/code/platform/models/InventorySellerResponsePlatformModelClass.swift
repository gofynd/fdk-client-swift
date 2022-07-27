

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var set: InventorySet?

        public var company: CompanyMeta

        public var addedOnStore: String?

        public var size: String

        public var taxIdentifier: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var customJson: [String: Any]?

        public var stage: String?

        public var trader: [Trader1]?

        public var fyndArticleCode: String

        public var fyndItemCode: String

        public var uid: String

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var weight: WeightResponse

        public var countryOfOrigin: String

        public var brand: BrandMeta

        public var modifiedBy: UserSerializer?

        public var store: StoreMeta

        public var itemId: Int

        public var isActive: Bool?

        public var quantities: Quantities?

        public var totalQuantity: Int

        public var identifier: [String: Any]

        public var rawMeta: [String: Any]?

        public var meta: [String: Any]?

        public var createdBy: UserSerializer?

        public var fragile: Bool

        public var fyndMeta: [String: Any]?

        public var trackInventory: Bool?

        public var expirationDate: String?

        public var dimension: DimensionResponse

        public var price: PriceMeta

        public var returnConfig: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case set

            case company

            case addedOnStore = "added_on_store"

            case size

            case taxIdentifier = "tax_identifier"

            case manufacturer

            case customJson = "_custom_json"

            case stage

            case trader

            case fyndArticleCode = "fynd_article_code"

            case fyndItemCode = "fynd_item_code"

            case uid

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case weight

            case countryOfOrigin = "country_of_origin"

            case brand

            case modifiedBy = "modified_by"

            case store

            case itemId = "item_id"

            case isActive = "is_active"

            case quantities

            case totalQuantity = "total_quantity"

            case identifier

            case rawMeta = "raw_meta"

            case meta

            case createdBy = "created_by"

            case fragile

            case fyndMeta = "fynd_meta"

            case trackInventory = "track_inventory"

            case expirationDate = "expiration_date"

            case dimension

            case price

            case returnConfig = "return_config"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.set = set

            self.company = company

            self.addedOnStore = addedOnStore

            self.size = size

            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.customJson = customJson

            self.stage = stage

            self.trader = trader

            self.fyndArticleCode = fyndArticleCode

            self.fyndItemCode = fyndItemCode

            self.uid = uid

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.weight = weight

            self.countryOfOrigin = countryOfOrigin

            self.brand = brand

            self.modifiedBy = modifiedBy

            self.store = store

            self.itemId = itemId

            self.isActive = isActive

            self.quantities = quantities

            self.totalQuantity = totalQuantity

            self.identifier = identifier

            self.rawMeta = rawMeta

            self.meta = meta

            self.createdBy = createdBy

            self.fragile = fragile

            self.fyndMeta = fyndMeta

            self.trackInventory = trackInventory

            self.expirationDate = expirationDate

            self.dimension = dimension

            self.price = price

            self.returnConfig = returnConfig
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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            itemId = try container.decode(Int.self, forKey: .itemId)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
