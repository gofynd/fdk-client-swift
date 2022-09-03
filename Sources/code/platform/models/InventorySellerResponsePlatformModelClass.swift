

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var meta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var stage: String?

        public var modifiedBy: UserSerializer?

        public var company: CompanyMeta

        public var fyndItemCode: String

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var totalQuantity: Int

        public var uid: String

        public var quantities: Quantities?

        public var sellerIdentifier: String

        public var createdBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var store: StoreMeta

        public var dimension: DimensionResponse

        public var itemId: Int

        public var customJson: [String: Any]?

        public var size: String

        public var identifier: [String: Any]

        public var addedOnStore: String?

        public var isActive: Bool?

        public var brand: BrandMeta

        public var isSet: Bool?

        public var trader: [Trader1]?

        public var set: InventorySet?

        public var price: PriceMeta

        public var expirationDate: String?

        public var returnConfig: ReturnConfig1?

        public var trackInventory: Bool?

        public var fyndArticleCode: String

        public var fragile: Bool

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public enum CodingKeys: String, CodingKey {
            case meta

            case taxIdentifier = "tax_identifier"

            case stage

            case modifiedBy = "modified_by"

            case company

            case fyndItemCode = "fynd_item_code"

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case totalQuantity = "total_quantity"

            case uid

            case quantities

            case sellerIdentifier = "seller_identifier"

            case createdBy = "created_by"

            case rawMeta = "raw_meta"

            case store

            case dimension

            case itemId = "item_id"

            case customJson = "_custom_json"

            case size

            case identifier

            case addedOnStore = "added_on_store"

            case isActive = "is_active"

            case brand

            case isSet = "is_set"

            case trader

            case set

            case price

            case expirationDate = "expiration_date"

            case returnConfig = "return_config"

            case trackInventory = "track_inventory"

            case fyndArticleCode = "fynd_article_code"

            case fragile

            case weight

            case manufacturer
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.meta = meta

            self.taxIdentifier = taxIdentifier

            self.stage = stage

            self.modifiedBy = modifiedBy

            self.company = company

            self.fyndItemCode = fyndItemCode

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.totalQuantity = totalQuantity

            self.uid = uid

            self.quantities = quantities

            self.sellerIdentifier = sellerIdentifier

            self.createdBy = createdBy

            self.rawMeta = rawMeta

            self.store = store

            self.dimension = dimension

            self.itemId = itemId

            self.customJson = customJson

            self.size = size

            self.identifier = identifier

            self.addedOnStore = addedOnStore

            self.isActive = isActive

            self.brand = brand

            self.isSet = isSet

            self.trader = trader

            self.set = set

            self.price = price

            self.expirationDate = expirationDate

            self.returnConfig = returnConfig

            self.trackInventory = trackInventory

            self.fyndArticleCode = fyndArticleCode

            self.fragile = fragile

            self.weight = weight

            self.manufacturer = manufacturer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
        }
    }
}
