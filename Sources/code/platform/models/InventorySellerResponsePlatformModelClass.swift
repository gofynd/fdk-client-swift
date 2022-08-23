

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trackInventory: Bool?

        public var isSet: Bool?

        public var itemId: Int

        public var brand: BrandMeta

        public var uid: String

        public var expirationDate: String?

        public var fyndMeta: [String: Any]?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var manufacturer: ManufacturerResponse

        public var totalQuantity: Int

        public var fyndArticleCode: String

        public var returnConfig: ReturnConfig1?

        public var trader: [Trader1]?

        public var stage: String?

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var modifiedBy: UserSerializer?

        public var addedOnStore: String?

        public var isActive: Bool?

        public var countryOfOrigin: String

        public var fyndItemCode: String

        public var dimension: DimensionResponse

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var size: String

        public var fragile: Bool

        public var identifier: [String: Any]

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var price: PriceMeta

        public var weight: WeightResponse

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case trackInventory = "track_inventory"

            case isSet = "is_set"

            case itemId = "item_id"

            case brand

            case uid

            case expirationDate = "expiration_date"

            case fyndMeta = "fynd_meta"

            case meta

            case sellerIdentifier = "seller_identifier"

            case set

            case manufacturer

            case totalQuantity = "total_quantity"

            case fyndArticleCode = "fynd_article_code"

            case returnConfig = "return_config"

            case trader

            case stage

            case company

            case createdBy = "created_by"

            case modifiedBy = "modified_by"

            case addedOnStore = "added_on_store"

            case isActive = "is_active"

            case countryOfOrigin = "country_of_origin"

            case fyndItemCode = "fynd_item_code"

            case dimension

            case customJson = "_custom_json"

            case quantities

            case size

            case fragile

            case identifier

            case store

            case taxIdentifier = "tax_identifier"

            case price

            case weight

            case rawMeta = "raw_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trackInventory = trackInventory

            self.isSet = isSet

            self.itemId = itemId

            self.brand = brand

            self.uid = uid

            self.expirationDate = expirationDate

            self.fyndMeta = fyndMeta

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.manufacturer = manufacturer

            self.totalQuantity = totalQuantity

            self.fyndArticleCode = fyndArticleCode

            self.returnConfig = returnConfig

            self.trader = trader

            self.stage = stage

            self.company = company

            self.createdBy = createdBy

            self.modifiedBy = modifiedBy

            self.addedOnStore = addedOnStore

            self.isActive = isActive

            self.countryOfOrigin = countryOfOrigin

            self.fyndItemCode = fyndItemCode

            self.dimension = dimension

            self.customJson = customJson

            self.quantities = quantities

            self.size = size

            self.fragile = fragile

            self.identifier = identifier

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.price = price

            self.weight = weight

            self.rawMeta = rawMeta
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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                stage = try container.decode(String.self, forKey: .stage)

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

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            size = try container.decode(String.self, forKey: .size)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
        }
    }
}
