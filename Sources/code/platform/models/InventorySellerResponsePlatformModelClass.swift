

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var dimension: Dimension

        public var countryOfOrigin: String

        public var createdBy: UserSerializer?

        public var isSet: Bool?

        public var price: PriceMeta

        public var manufacturer: Manufacturer

        public var fragile: Bool

        public var set: InventorySet?

        public var identifier: [String: Any]

        public var fyndArticleCode: String

        public var fyndMeta: [String: Any]?

        public var weight: Weight

        public var rawMeta: [String: Any]?

        public var uid: String

        public var company: CompanyMeta

        public var size: String

        public var sellerIdentifier: String?

        public var trader: [Trader1]?

        public var addedOnStore: String?

        public var brand: BrandMeta

        public var itemId: Int

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var trackInventory: Bool?

        public var isActive: Bool?

        public var returnConfig: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var taxIdentifier: [String: Any]?

        public var store: StoreMeta

        public var fyndItemCode: String

        public var meta: [String: Any]?

        public var expirationDate: String?

        public var totalQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case dimension

            case countryOfOrigin = "country_of_origin"

            case createdBy = "created_by"

            case isSet = "is_set"

            case price

            case manufacturer

            case fragile

            case set

            case identifier

            case fyndArticleCode = "fynd_article_code"

            case fyndMeta = "fynd_meta"

            case weight

            case rawMeta = "raw_meta"

            case uid

            case company

            case size

            case sellerIdentifier = "seller_identifier"

            case trader

            case addedOnStore = "added_on_store"

            case brand

            case itemId = "item_id"

            case customJson = "_custom_json"

            case quantities

            case trackInventory = "track_inventory"

            case isActive = "is_active"

            case returnConfig = "return_config"

            case modifiedBy = "modified_by"

            case taxIdentifier = "tax_identifier"

            case store

            case fyndItemCode = "fynd_item_code"

            case meta

            case expirationDate = "expiration_date"

            case totalQuantity = "total_quantity"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: Dimension, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: Manufacturer, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String? = nil, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: Weight, customJson: [String: Any]? = nil) {
            self.dimension = dimension

            self.countryOfOrigin = countryOfOrigin

            self.createdBy = createdBy

            self.isSet = isSet

            self.price = price

            self.manufacturer = manufacturer

            self.fragile = fragile

            self.set = set

            self.identifier = identifier

            self.fyndArticleCode = fyndArticleCode

            self.fyndMeta = fyndMeta

            self.weight = weight

            self.rawMeta = rawMeta

            self.uid = uid

            self.company = company

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.trader = trader

            self.addedOnStore = addedOnStore

            self.brand = brand

            self.itemId = itemId

            self.customJson = customJson

            self.quantities = quantities

            self.trackInventory = trackInventory

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.modifiedBy = modifiedBy

            self.taxIdentifier = taxIdentifier

            self.store = store

            self.fyndItemCode = fyndItemCode

            self.meta = meta

            self.expirationDate = expirationDate

            self.totalQuantity = totalQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dimension = try container.decode(Dimension.self, forKey: .dimension)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

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

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Weight.self, forKey: .weight)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            size = try container.decode(String.self, forKey: .size)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            itemId = try container.decode(Int.self, forKey: .itemId)

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
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        }
    }
}
