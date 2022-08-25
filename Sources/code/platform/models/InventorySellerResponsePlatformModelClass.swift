

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var quantities: Quantities?

        public var size: String

        public var createdBy: UserSerializer?

        public var stage: String?

        public var sellerIdentifier: String

        public var price: PriceMeta

        public var store: StoreMeta

        public var identifier: [String: Any]

        public var countryOfOrigin: String

        public var fyndMeta: [String: Any]?

        public var weight: WeightResponse

        public var manufacturer: ManufacturerResponse

        public var isActive: Bool?

        public var dimension: DimensionResponse

        public var customJson: [String: Any]?

        public var fyndItemCode: String

        public var addedOnStore: String?

        public var uid: String

        public var meta: [String: Any]?

        public var totalQuantity: Int

        public var set: InventorySet?

        public var company: CompanyMeta

        public var itemId: Int

        public var trackInventory: Bool?

        public var modifiedBy: UserSerializer?

        public var isSet: Bool?

        public var trader: [Trader1]?

        public var fyndArticleCode: String

        public var taxIdentifier: [String: Any]?

        public var brand: BrandMeta

        public var expirationDate: String?

        public var returnConfig: ReturnConfig1?

        public var fragile: Bool

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case quantities

            case size

            case createdBy = "created_by"

            case stage

            case sellerIdentifier = "seller_identifier"

            case price

            case store

            case identifier

            case countryOfOrigin = "country_of_origin"

            case fyndMeta = "fynd_meta"

            case weight

            case manufacturer

            case isActive = "is_active"

            case dimension

            case customJson = "_custom_json"

            case fyndItemCode = "fynd_item_code"

            case addedOnStore = "added_on_store"

            case uid

            case meta

            case totalQuantity = "total_quantity"

            case set

            case company

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case modifiedBy = "modified_by"

            case isSet = "is_set"

            case trader

            case fyndArticleCode = "fynd_article_code"

            case taxIdentifier = "tax_identifier"

            case brand

            case expirationDate = "expiration_date"

            case returnConfig = "return_config"

            case fragile

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.quantities = quantities

            self.size = size

            self.createdBy = createdBy

            self.stage = stage

            self.sellerIdentifier = sellerIdentifier

            self.price = price

            self.store = store

            self.identifier = identifier

            self.countryOfOrigin = countryOfOrigin

            self.fyndMeta = fyndMeta

            self.weight = weight

            self.manufacturer = manufacturer

            self.isActive = isActive

            self.dimension = dimension

            self.customJson = customJson

            self.fyndItemCode = fyndItemCode

            self.addedOnStore = addedOnStore

            self.uid = uid

            self.meta = meta

            self.totalQuantity = totalQuantity

            self.set = set

            self.company = company

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.modifiedBy = modifiedBy

            self.isSet = isSet

            self.trader = trader

            self.fyndArticleCode = fyndArticleCode

            self.taxIdentifier = taxIdentifier

            self.brand = brand

            self.expirationDate = expirationDate

            self.returnConfig = returnConfig

            self.fragile = fragile

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            price = try container.decode(PriceMeta.self, forKey: .price)

            store = try container.decode(StoreMeta.self, forKey: .store)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}
