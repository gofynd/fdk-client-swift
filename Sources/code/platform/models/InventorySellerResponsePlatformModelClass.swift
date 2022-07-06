

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var isActive: Bool?

        public var returnConfig: [String: Any]?

        public var weight: Weight

        public var set: InventorySet?

        public var price: PriceMeta

        public var modifiedBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var uid: String

        public var fyndItemCode: String

        public var expirationDate: String?

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var trackInventory: Bool?

        public var itemId: Int

        public var brand: BrandMeta

        public var meta: [String: Any]?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var size: String

        public var company: CompanyMeta

        public var totalQuantity: Int

        public var store: StoreMeta

        public var manufacturer: Manufacturer

        public var trader: [Trader1]?

        public var rawMeta: [String: Any]?

        public var dimension: Dimension

        public var quantities: Quantities?

        public var isSet: Bool?

        public var sellerIdentifier: String?

        public var identifier: [String: Any]

        public var fyndMeta: [String: Any]?

        public var addedOnStore: String?

        public var customJson: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case returnConfig = "return_config"

            case weight

            case set

            case price

            case modifiedBy = "modified_by"

            case taxIdentifier = "tax_identifier"

            case uid

            case fyndItemCode = "fynd_item_code"

            case expirationDate = "expiration_date"

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case trackInventory = "track_inventory"

            case itemId = "item_id"

            case brand

            case meta

            case fragile

            case createdBy = "created_by"

            case size

            case company

            case totalQuantity = "total_quantity"

            case store

            case manufacturer

            case trader

            case rawMeta = "raw_meta"

            case dimension

            case quantities

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case fyndMeta = "fynd_meta"

            case addedOnStore = "added_on_store"

            case customJson = "_custom_json"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: Dimension, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: Manufacturer, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String? = nil, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: Weight, customJson: [String: Any]? = nil) {
            self.isActive = isActive

            self.returnConfig = returnConfig

            self.weight = weight

            self.set = set

            self.price = price

            self.modifiedBy = modifiedBy

            self.taxIdentifier = taxIdentifier

            self.uid = uid

            self.fyndItemCode = fyndItemCode

            self.expirationDate = expirationDate

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.trackInventory = trackInventory

            self.itemId = itemId

            self.brand = brand

            self.meta = meta

            self.fragile = fragile

            self.createdBy = createdBy

            self.size = size

            self.company = company

            self.totalQuantity = totalQuantity

            self.store = store

            self.manufacturer = manufacturer

            self.trader = trader

            self.rawMeta = rawMeta

            self.dimension = dimension

            self.quantities = quantities

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.fyndMeta = fyndMeta

            self.addedOnStore = addedOnStore

            self.customJson = customJson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Weight.self, forKey: .weight)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

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

            uid = try container.decode(String.self, forKey: .uid)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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

            dimension = try container.decode(Dimension.self, forKey: .dimension)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(customJson, forKey: .customJson)
        }
    }
}
