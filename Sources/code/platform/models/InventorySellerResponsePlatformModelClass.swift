

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var store: StoreMeta

        public var totalQuantity: Int

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta

        public var returnConfig: [String: Any]?

        public var fragile: Bool

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var fyndItemCode: String

        public var size: String

        public var uid: String

        public var trader: [Trader1]?

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var dimension: DimensionResponse

        public var price: PriceMeta

        public var isActive: Bool?

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var rawMeta: [String: Any]?

        public var expirationDate: String?

        public var trackInventory: Bool?

        public var createdBy: UserSerializer?

        public var weight: WeightResponse

        public var isSet: Bool?

        public var taxIdentifier: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var addedOnStore: String?

        public var itemId: Int

        public var fyndArticleCode: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case store

            case totalQuantity = "total_quantity"

            case modifiedBy = "modified_by"

            case brand

            case returnConfig = "return_config"

            case fragile

            case meta

            case sellerIdentifier = "seller_identifier"

            case set

            case fyndItemCode = "fynd_item_code"

            case size

            case uid

            case trader

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case dimension

            case price

            case isActive = "is_active"

            case company

            case customJson = "_custom_json"

            case quantities

            case rawMeta = "raw_meta"

            case expirationDate = "expiration_date"

            case trackInventory = "track_inventory"

            case createdBy = "created_by"

            case weight

            case isSet = "is_set"

            case taxIdentifier = "tax_identifier"

            case manufacturer

            case addedOnStore = "added_on_store"

            case itemId = "item_id"

            case fyndArticleCode = "fynd_article_code"

            case identifier
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.store = store

            self.totalQuantity = totalQuantity

            self.modifiedBy = modifiedBy

            self.brand = brand

            self.returnConfig = returnConfig

            self.fragile = fragile

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.fyndItemCode = fyndItemCode

            self.size = size

            self.uid = uid

            self.trader = trader

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.dimension = dimension

            self.price = price

            self.isActive = isActive

            self.company = company

            self.customJson = customJson

            self.quantities = quantities

            self.rawMeta = rawMeta

            self.expirationDate = expirationDate

            self.trackInventory = trackInventory

            self.createdBy = createdBy

            self.weight = weight

            self.isSet = isSet

            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.addedOnStore = addedOnStore

            self.itemId = itemId

            self.fyndArticleCode = fyndArticleCode

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            store = try container.decode(StoreMeta.self, forKey: .store)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

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

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
