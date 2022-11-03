

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var addedOnStore: String?

        public var manufacturer: ManufacturerResponse

        public var stage: String?

        public var sellerIdentifier: String

        public var uid: String

        public var fragile: Bool

        public var expirationDate: String?

        public var identifier: [String: Any]

        public var quantities: Quantities?

        public var meta: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var createdBy: UserSerializer?

        public var countryOfOrigin: String

        public var company: CompanyMeta

        public var set: InventorySet?

        public var trackInventory: Bool?

        public var fyndItemCode: String

        public var brand: BrandMeta

        public var customJson: [String: Any]?

        public var dimension: DimensionResponse

        public var itemId: Int

        public var isSet: Bool?

        public var returnConfig: ReturnConfig1?

        public var modifiedBy: UserSerializer?

        public var weight: WeightResponse

        public var fyndArticleCode: String

        public var isActive: Bool?

        public var totalQuantity: Int

        public var size: String

        public var rawMeta: [String: Any]?

        public var taxIdentifier: [String: Any]?

        public var price: PriceMeta

        public var store: StoreMeta

        public var trader: [Trader1]?

        public enum CodingKeys: String, CodingKey {
            case addedOnStore = "added_on_store"

            case manufacturer

            case stage

            case sellerIdentifier = "seller_identifier"

            case uid

            case fragile

            case expirationDate = "expiration_date"

            case identifier

            case quantities

            case meta

            case fyndMeta = "fynd_meta"

            case createdBy = "created_by"

            case countryOfOrigin = "country_of_origin"

            case company

            case set

            case trackInventory = "track_inventory"

            case fyndItemCode = "fynd_item_code"

            case brand

            case customJson = "_custom_json"

            case dimension

            case itemId = "item_id"

            case isSet = "is_set"

            case returnConfig = "return_config"

            case modifiedBy = "modified_by"

            case weight

            case fyndArticleCode = "fynd_article_code"

            case isActive = "is_active"

            case totalQuantity = "total_quantity"

            case size

            case rawMeta = "raw_meta"

            case taxIdentifier = "tax_identifier"

            case price

            case store

            case trader
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.addedOnStore = addedOnStore

            self.manufacturer = manufacturer

            self.stage = stage

            self.sellerIdentifier = sellerIdentifier

            self.uid = uid

            self.fragile = fragile

            self.expirationDate = expirationDate

            self.identifier = identifier

            self.quantities = quantities

            self.meta = meta

            self.fyndMeta = fyndMeta

            self.createdBy = createdBy

            self.countryOfOrigin = countryOfOrigin

            self.company = company

            self.set = set

            self.trackInventory = trackInventory

            self.fyndItemCode = fyndItemCode

            self.brand = brand

            self.customJson = customJson

            self.dimension = dimension

            self.itemId = itemId

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.modifiedBy = modifiedBy

            self.weight = weight

            self.fyndArticleCode = fyndArticleCode

            self.isActive = isActive

            self.totalQuantity = totalQuantity

            self.size = size

            self.rawMeta = rawMeta

            self.taxIdentifier = taxIdentifier

            self.price = price

            self.store = store

            self.trader = trader
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            uid = try container.decode(String.self, forKey: .uid)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            itemId = try container.decode(Int.self, forKey: .itemId)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            size = try container.decode(String.self, forKey: .size)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(trader, forKey: .trader)
        }
    }
}
