

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var meta: [String: Any]?

        public var trackInventory: Bool?

        public var customJson: [String: Any]?

        public var uid: String

        public var identifier: [String: Any]

        public var addedOnStore: String?

        public var modifiedBy: UserSerializer?

        public var expirationDate: String?

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var trader: [Trader1]?

        public var quantities: Quantities?

        public var fragile: Bool

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var totalQuantity: Int

        public var company: CompanyMeta

        public var size: String

        public var returnConfig: ReturnConfig1?

        public var manufacturer: ManufacturerResponse

        public var countryOfOrigin: String

        public var fyndMeta: [String: Any]?

        public var set: InventorySet?

        public var taxIdentifier: [String: Any]?

        public var itemId: Int

        public var fyndItemCode: String

        public var brand: BrandMeta

        public var createdBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var store: StoreMeta

        public var isActive: Bool?

        public var weight: WeightResponse

        public var stage: String?

        public var dimension: DimensionResponse

        public enum CodingKeys: String, CodingKey {
            case meta

            case trackInventory = "track_inventory"

            case customJson = "_custom_json"

            case uid

            case identifier

            case addedOnStore = "added_on_store"

            case modifiedBy = "modified_by"

            case expirationDate = "expiration_date"

            case price

            case sellerIdentifier = "seller_identifier"

            case trader

            case quantities

            case fragile

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case totalQuantity = "total_quantity"

            case company

            case size

            case returnConfig = "return_config"

            case manufacturer

            case countryOfOrigin = "country_of_origin"

            case fyndMeta = "fynd_meta"

            case set

            case taxIdentifier = "tax_identifier"

            case itemId = "item_id"

            case fyndItemCode = "fynd_item_code"

            case brand

            case createdBy = "created_by"

            case rawMeta = "raw_meta"

            case store

            case isActive = "is_active"

            case weight

            case stage

            case dimension
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.meta = meta

            self.trackInventory = trackInventory

            self.customJson = customJson

            self.uid = uid

            self.identifier = identifier

            self.addedOnStore = addedOnStore

            self.modifiedBy = modifiedBy

            self.expirationDate = expirationDate

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.trader = trader

            self.quantities = quantities

            self.fragile = fragile

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.totalQuantity = totalQuantity

            self.company = company

            self.size = size

            self.returnConfig = returnConfig

            self.manufacturer = manufacturer

            self.countryOfOrigin = countryOfOrigin

            self.fyndMeta = fyndMeta

            self.set = set

            self.taxIdentifier = taxIdentifier

            self.itemId = itemId

            self.fyndItemCode = fyndItemCode

            self.brand = brand

            self.createdBy = createdBy

            self.rawMeta = rawMeta

            self.store = store

            self.isActive = isActive

            self.weight = weight

            self.stage = stage

            self.dimension = dimension
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

            uid = try container.decode(String.self, forKey: .uid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            size = try container.decode(String.self, forKey: .size)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(dimension, forKey: .dimension)
        }
    }
}
