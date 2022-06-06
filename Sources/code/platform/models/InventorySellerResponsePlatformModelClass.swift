

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var taxIdentifier: [String: Any]?

        public var manufacturer: Manufacturer

        public var rawMeta: [String: Any]?

        public var customJson: [String: Any]?

        public var addedOnStore: String?

        public var fyndMeta: [String: Any]?

        public var meta: [String: Any]?

        public var fyndArticleCode: String

        public var brand: BrandMeta

        public var trader: [Trader1]?

        public var store: StoreMeta

        public var countryOfOrigin: String

        public var isActive: Bool?

        public var createdBy: UserSerializer?

        public var fragile: Bool

        public var price: PriceMeta

        public var size: String

        public var expirationDate: String?

        public var identifier: [String: Any]

        public var isSet: Bool?

        public var weight: Weight

        public var set: InventorySet?

        public var uid: String

        public var trackInventory: Bool?

        public var totalQuantity: Int

        public var fyndItemCode: String

        public var company: CompanyMeta

        public var itemId: Int

        public var modifiedBy: UserSerializer?

        public var sellerIdentifier: String?

        public var quantities: Quantities?

        public var dimension: Dimension

        public var returnConfig: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case taxIdentifier = "tax_identifier"

            case manufacturer

            case rawMeta = "raw_meta"

            case customJson = "_custom_json"

            case addedOnStore = "added_on_store"

            case fyndMeta = "fynd_meta"

            case meta

            case fyndArticleCode = "fynd_article_code"

            case brand

            case trader

            case store

            case countryOfOrigin = "country_of_origin"

            case isActive = "is_active"

            case createdBy = "created_by"

            case fragile

            case price

            case size

            case expirationDate = "expiration_date"

            case identifier

            case isSet = "is_set"

            case weight

            case set

            case uid

            case trackInventory = "track_inventory"

            case totalQuantity = "total_quantity"

            case fyndItemCode = "fynd_item_code"

            case company

            case itemId = "item_id"

            case modifiedBy = "modified_by"

            case sellerIdentifier = "seller_identifier"

            case quantities

            case dimension

            case returnConfig = "return_config"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: Dimension, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: Manufacturer, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String? = nil, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: Weight, customJson: [String: Any]? = nil) {
            self.taxIdentifier = taxIdentifier

            self.manufacturer = manufacturer

            self.rawMeta = rawMeta

            self.customJson = customJson

            self.addedOnStore = addedOnStore

            self.fyndMeta = fyndMeta

            self.meta = meta

            self.fyndArticleCode = fyndArticleCode

            self.brand = brand

            self.trader = trader

            self.store = store

            self.countryOfOrigin = countryOfOrigin

            self.isActive = isActive

            self.createdBy = createdBy

            self.fragile = fragile

            self.price = price

            self.size = size

            self.expirationDate = expirationDate

            self.identifier = identifier

            self.isSet = isSet

            self.weight = weight

            self.set = set

            self.uid = uid

            self.trackInventory = trackInventory

            self.totalQuantity = totalQuantity

            self.fyndItemCode = fyndItemCode

            self.company = company

            self.itemId = itemId

            self.modifiedBy = modifiedBy

            self.sellerIdentifier = sellerIdentifier

            self.quantities = quantities

            self.dimension = dimension

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            price = try container.decode(PriceMeta.self, forKey: .price)

            size = try container.decode(String.self, forKey: .size)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(Dimension.self, forKey: .dimension)

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
