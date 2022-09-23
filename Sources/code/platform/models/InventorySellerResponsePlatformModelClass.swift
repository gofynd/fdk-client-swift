

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var size: String

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var expirationDate: String?

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var trackInventory: Bool?

        public var quantities: Quantities?

        public var meta: [String: Any]?

        public var stage: String?

        public var price: PriceMeta

        public var manufacturer: ManufacturerResponse

        public var fyndItemCode: String

        public var customJson: [String: Any]?

        public var addedOnStore: String?

        public var set: InventorySet?

        public var fragile: Bool

        public var brand: BrandMeta

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var returnConfig: ReturnConfig1?

        public var uid: String

        public var modifiedBy: UserSerializer?

        public var dimension: DimensionResponse

        public var fyndArticleCode: String

        public var fyndMeta: [String: Any]?

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var isActive: Bool?

        public var weight: WeightResponse

        public var trader: [Trader1]?

        public var store: StoreMeta

        public var totalQuantity: Int

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case company

            case createdBy = "created_by"

            case expirationDate = "expiration_date"

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case trackInventory = "track_inventory"

            case quantities

            case meta

            case stage

            case price

            case manufacturer

            case fyndItemCode = "fynd_item_code"

            case customJson = "_custom_json"

            case addedOnStore = "added_on_store"

            case set

            case fragile

            case brand

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case returnConfig = "return_config"

            case uid

            case modifiedBy = "modified_by"

            case dimension

            case fyndArticleCode = "fynd_article_code"

            case fyndMeta = "fynd_meta"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case isActive = "is_active"

            case weight

            case trader

            case store

            case totalQuantity = "total_quantity"

            case itemId = "item_id"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.size = size

            self.company = company

            self.createdBy = createdBy

            self.expirationDate = expirationDate

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.trackInventory = trackInventory

            self.quantities = quantities

            self.meta = meta

            self.stage = stage

            self.price = price

            self.manufacturer = manufacturer

            self.fyndItemCode = fyndItemCode

            self.customJson = customJson

            self.addedOnStore = addedOnStore

            self.set = set

            self.fragile = fragile

            self.brand = brand

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.returnConfig = returnConfig

            self.uid = uid

            self.modifiedBy = modifiedBy

            self.dimension = dimension

            self.fyndArticleCode = fyndArticleCode

            self.fyndMeta = fyndMeta

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.isActive = isActive

            self.weight = weight

            self.trader = trader

            self.store = store

            self.totalQuantity = totalQuantity

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
