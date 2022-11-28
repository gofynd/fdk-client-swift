

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var store: StoreMeta

        public var expirationDate: String?

        public var size: String

        public var returnConfig: ReturnConfig1?

        public var itemId: Int

        public var stage: String?

        public var addedOnStore: String?

        public var fyndArticleCode: String

        public var fragile: Bool

        public var meta: [String: Any]?

        public var uid: String

        public var countryOfOrigin: String

        public var manufacturer: ManufacturerResponse

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var fyndMeta: [String: Any]?

        public var totalQuantity: Int

        public var brand: BrandMeta

        public var company: CompanyMeta

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var rawMeta: [String: Any]?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var set: InventorySet?

        public var weight: WeightResponse

        public var fyndItemCode: String

        public var dimension: DimensionResponse

        public var taxIdentifier: [String: Any]?

        public var trader: [Trader1]?

        public var quantities: Quantities?

        public enum CodingKeys: String, CodingKey {
            case store

            case expirationDate = "expiration_date"

            case size

            case returnConfig = "return_config"

            case itemId = "item_id"

            case stage

            case addedOnStore = "added_on_store"

            case fyndArticleCode = "fynd_article_code"

            case fragile

            case meta

            case uid

            case countryOfOrigin = "country_of_origin"

            case manufacturer

            case sellerIdentifier = "seller_identifier"

            case identifier

            case fyndMeta = "fynd_meta"

            case totalQuantity = "total_quantity"

            case brand

            case company

            case modifiedBy = "modified_by"

            case price

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case rawMeta = "raw_meta"

            case isSet = "is_set"

            case createdBy = "created_by"

            case set

            case weight

            case fyndItemCode = "fynd_item_code"

            case dimension

            case taxIdentifier = "tax_identifier"

            case trader

            case quantities
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.store = store

            self.expirationDate = expirationDate

            self.size = size

            self.returnConfig = returnConfig

            self.itemId = itemId

            self.stage = stage

            self.addedOnStore = addedOnStore

            self.fyndArticleCode = fyndArticleCode

            self.fragile = fragile

            self.meta = meta

            self.uid = uid

            self.countryOfOrigin = countryOfOrigin

            self.manufacturer = manufacturer

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.fyndMeta = fyndMeta

            self.totalQuantity = totalQuantity

            self.brand = brand

            self.company = company

            self.modifiedBy = modifiedBy

            self.price = price

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.rawMeta = rawMeta

            self.isSet = isSet

            self.createdBy = createdBy

            self.set = set

            self.weight = weight

            self.fyndItemCode = fyndItemCode

            self.dimension = dimension

            self.taxIdentifier = taxIdentifier

            self.trader = trader

            self.quantities = quantities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(quantities, forKey: .quantities)
        }
    }
}
