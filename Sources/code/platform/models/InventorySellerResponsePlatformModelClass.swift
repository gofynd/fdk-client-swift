

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var uid: String

        public var countryOfOrigin: String

        public var manufacturer: ManufacturerResponse

        public var stage: String?

        public var dimension: DimensionResponse

        public var totalQuantity: Int

        public var itemId: Int

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var createdBy: UserSerializer?

        public var isSet: Bool?

        public var returnConfig: ReturnConfig1?

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var identifier: [String: Any]

        public var fragile: Bool

        public var fyndMeta: [String: Any]?

        public var weight: WeightResponse

        public var set: InventorySet?

        public var isActive: Bool?

        public var expirationDate: String?

        public var store: StoreMeta

        public var size: String

        public var brand: BrandMeta

        public var trader: [Trader1]?

        public var company: CompanyMeta

        public var fyndItemCode: String

        public var fyndArticleCode: String

        public var rawMeta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var sellerIdentifier: String

        public var price: PriceMeta

        public var addedOnStore: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case countryOfOrigin = "country_of_origin"

            case manufacturer

            case stage

            case dimension

            case totalQuantity = "total_quantity"

            case itemId = "item_id"

            case meta

            case quantities

            case createdBy = "created_by"

            case isSet = "is_set"

            case returnConfig = "return_config"

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case identifier

            case fragile

            case fyndMeta = "fynd_meta"

            case weight

            case set

            case isActive = "is_active"

            case expirationDate = "expiration_date"

            case store

            case size

            case brand

            case trader

            case company

            case fyndItemCode = "fynd_item_code"

            case fyndArticleCode = "fynd_article_code"

            case rawMeta = "raw_meta"

            case modifiedBy = "modified_by"

            case taxIdentifier = "tax_identifier"

            case sellerIdentifier = "seller_identifier"

            case price

            case addedOnStore = "added_on_store"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.manufacturer = manufacturer

            self.stage = stage

            self.dimension = dimension

            self.totalQuantity = totalQuantity

            self.itemId = itemId

            self.meta = meta

            self.quantities = quantities

            self.createdBy = createdBy

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.identifier = identifier

            self.fragile = fragile

            self.fyndMeta = fyndMeta

            self.weight = weight

            self.set = set

            self.isActive = isActive

            self.expirationDate = expirationDate

            self.store = store

            self.size = size

            self.brand = brand

            self.trader = trader

            self.company = company

            self.fyndItemCode = fyndItemCode

            self.fyndArticleCode = fyndArticleCode

            self.rawMeta = rawMeta

            self.modifiedBy = modifiedBy

            self.taxIdentifier = taxIdentifier

            self.sellerIdentifier = sellerIdentifier

            self.price = price

            self.addedOnStore = addedOnStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
        }
    }
}
