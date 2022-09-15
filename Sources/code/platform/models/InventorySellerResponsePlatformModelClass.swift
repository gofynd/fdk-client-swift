

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var countryOfOrigin: String

        public var addedOnStore: String?

        public var stage: String?

        public var customJson: [String: Any]?

        public var company: CompanyMeta

        public var size: String

        public var store: StoreMeta

        public var brand: BrandMeta

        public var set: InventorySet?

        public var createdBy: UserSerializer?

        public var sellerIdentifier: String

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var trader: [Trader1]?

        public var weight: WeightResponse

        public var meta: [String: Any]?

        public var expirationDate: String?

        public var taxIdentifier: [String: Any]?

        public var fyndArticleCode: String

        public var fyndItemCode: String

        public var itemId: Int

        public var fragile: Bool

        public var dimension: DimensionResponse

        public var modifiedBy: UserSerializer?

        public var identifier: [String: Any]

        public var totalQuantity: Int

        public var manufacturer: ManufacturerResponse

        public var isActive: Bool?

        public var price: PriceMeta

        public var trackInventory: Bool?

        public var fyndMeta: [String: Any]?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case countryOfOrigin = "country_of_origin"

            case addedOnStore = "added_on_store"

            case stage

            case customJson = "_custom_json"

            case company

            case size

            case store

            case brand

            case set

            case createdBy = "created_by"

            case sellerIdentifier = "seller_identifier"

            case quantities

            case rawMeta = "raw_meta"

            case returnConfig = "return_config"

            case uid

            case trader

            case weight

            case meta

            case expirationDate = "expiration_date"

            case taxIdentifier = "tax_identifier"

            case fyndArticleCode = "fynd_article_code"

            case fyndItemCode = "fynd_item_code"

            case itemId = "item_id"

            case fragile

            case dimension

            case modifiedBy = "modified_by"

            case identifier

            case totalQuantity = "total_quantity"

            case manufacturer

            case isActive = "is_active"

            case price

            case trackInventory = "track_inventory"

            case fyndMeta = "fynd_meta"

            case isSet = "is_set"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.countryOfOrigin = countryOfOrigin

            self.addedOnStore = addedOnStore

            self.stage = stage

            self.customJson = customJson

            self.company = company

            self.size = size

            self.store = store

            self.brand = brand

            self.set = set

            self.createdBy = createdBy

            self.sellerIdentifier = sellerIdentifier

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.returnConfig = returnConfig

            self.uid = uid

            self.trader = trader

            self.weight = weight

            self.meta = meta

            self.expirationDate = expirationDate

            self.taxIdentifier = taxIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.fyndItemCode = fyndItemCode

            self.itemId = itemId

            self.fragile = fragile

            self.dimension = dimension

            self.modifiedBy = modifiedBy

            self.identifier = identifier

            self.totalQuantity = totalQuantity

            self.manufacturer = manufacturer

            self.isActive = isActive

            self.price = price

            self.trackInventory = trackInventory

            self.fyndMeta = fyndMeta

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            size = try container.decode(String.self, forKey: .size)

            store = try container.decode(StoreMeta.self, forKey: .store)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
