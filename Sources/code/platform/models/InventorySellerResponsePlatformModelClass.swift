

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var price: PriceMeta

        public var itemId: Int

        public var company: CompanyMeta

        public var brand: BrandMeta

        public var uid: String

        public var size: String

        public var rawMeta: [String: Any]?

        public var manufacturer: Manufacturer

        public var returnConfig: [String: Any]?

        public var fyndArticleCode: String

        public var dimension: Dimension

        public var isActive: Bool?

        public var trader: [Trader1]?

        public var expirationDate: String?

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var weight: Weight

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var meta: [String: Any]?

        public var fyndItemCode: String

        public var set: InventorySet?

        public var store: StoreMeta

        public var trackInventory: Bool?

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var fyndMeta: [String: Any]?

        public var addedOnStore: String?

        public var totalQuantity: Int

        public var modifiedBy: UserSerializer?

        public var quantities: Quantities?

        public var sellerIdentifier: String?

        public var taxIdentifier: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case price

            case itemId = "item_id"

            case company

            case brand

            case uid

            case size

            case rawMeta = "raw_meta"

            case manufacturer

            case returnConfig = "return_config"

            case fyndArticleCode = "fynd_article_code"

            case dimension

            case isActive = "is_active"

            case trader

            case expirationDate = "expiration_date"

            case fragile

            case customJson = "_custom_json"

            case weight

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case meta

            case fyndItemCode = "fynd_item_code"

            case set

            case store

            case trackInventory = "track_inventory"

            case createdBy = "created_by"

            case identifier

            case fyndMeta = "fynd_meta"

            case addedOnStore = "added_on_store"

            case totalQuantity = "total_quantity"

            case modifiedBy = "modified_by"

            case quantities

            case sellerIdentifier = "seller_identifier"

            case taxIdentifier = "tax_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: Dimension, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: Manufacturer, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String? = nil, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: Weight, customJson: [String: Any]? = nil) {
            self.price = price

            self.itemId = itemId

            self.company = company

            self.brand = brand

            self.uid = uid

            self.size = size

            self.rawMeta = rawMeta

            self.manufacturer = manufacturer

            self.returnConfig = returnConfig

            self.fyndArticleCode = fyndArticleCode

            self.dimension = dimension

            self.isActive = isActive

            self.trader = trader

            self.expirationDate = expirationDate

            self.fragile = fragile

            self.customJson = customJson

            self.weight = weight

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.meta = meta

            self.fyndItemCode = fyndItemCode

            self.set = set

            self.store = store

            self.trackInventory = trackInventory

            self.createdBy = createdBy

            self.identifier = identifier

            self.fyndMeta = fyndMeta

            self.addedOnStore = addedOnStore

            self.totalQuantity = totalQuantity

            self.modifiedBy = modifiedBy

            self.quantities = quantities

            self.sellerIdentifier = sellerIdentifier

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            size = try container.decode(String.self, forKey: .size)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            dimension = try container.decode(Dimension.self, forKey: .dimension)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Weight.self, forKey: .weight)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
