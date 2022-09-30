

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trackInventory: Bool?

        public var addedOnStore: String?

        public var fyndItemCode: String

        public var size: String

        public var fyndMeta: [String: Any]?

        public var totalQuantity: Int

        public var customJson: [String: Any]?

        public var expirationDate: String?

        public var uid: String

        public var dimension: DimensionResponse

        public var weight: WeightResponse

        public var sellerIdentifier: String

        public var price: PriceMeta

        public var store: StoreMeta

        public var returnConfig: ReturnConfig1?

        public var fyndArticleCode: String

        public var company: CompanyMeta

        public var set: InventorySet?

        public var trader: [Trader1]?

        public var isSet: Bool?

        public var modifiedBy: UserSerializer?

        public var countryOfOrigin: String

        public var itemId: Int

        public var manufacturer: ManufacturerResponse

        public var fragile: Bool

        public var quantities: Quantities?

        public var createdBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var stage: String?

        public var meta: [String: Any]?

        public var identifier: [String: Any]

        public var rawMeta: [String: Any]?

        public var brand: BrandMeta

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case trackInventory = "track_inventory"

            case addedOnStore = "added_on_store"

            case fyndItemCode = "fynd_item_code"

            case size

            case fyndMeta = "fynd_meta"

            case totalQuantity = "total_quantity"

            case customJson = "_custom_json"

            case expirationDate = "expiration_date"

            case uid

            case dimension

            case weight

            case sellerIdentifier = "seller_identifier"

            case price

            case store

            case returnConfig = "return_config"

            case fyndArticleCode = "fynd_article_code"

            case company

            case set

            case trader

            case isSet = "is_set"

            case modifiedBy = "modified_by"

            case countryOfOrigin = "country_of_origin"

            case itemId = "item_id"

            case manufacturer

            case fragile

            case quantities

            case createdBy = "created_by"

            case taxIdentifier = "tax_identifier"

            case stage

            case meta

            case identifier

            case rawMeta = "raw_meta"

            case brand

            case isActive = "is_active"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trackInventory = trackInventory

            self.addedOnStore = addedOnStore

            self.fyndItemCode = fyndItemCode

            self.size = size

            self.fyndMeta = fyndMeta

            self.totalQuantity = totalQuantity

            self.customJson = customJson

            self.expirationDate = expirationDate

            self.uid = uid

            self.dimension = dimension

            self.weight = weight

            self.sellerIdentifier = sellerIdentifier

            self.price = price

            self.store = store

            self.returnConfig = returnConfig

            self.fyndArticleCode = fyndArticleCode

            self.company = company

            self.set = set

            self.trader = trader

            self.isSet = isSet

            self.modifiedBy = modifiedBy

            self.countryOfOrigin = countryOfOrigin

            self.itemId = itemId

            self.manufacturer = manufacturer

            self.fragile = fragile

            self.quantities = quantities

            self.createdBy = createdBy

            self.taxIdentifier = taxIdentifier

            self.stage = stage

            self.meta = meta

            self.identifier = identifier

            self.rawMeta = rawMeta

            self.brand = brand

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            size = try container.decode(String.self, forKey: .size)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            itemId = try container.decode(Int.self, forKey: .itemId)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
