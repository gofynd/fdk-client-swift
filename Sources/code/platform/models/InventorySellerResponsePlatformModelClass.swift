

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var taxIdentifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var fyndItemCode: String

        public var trader: [Trader1]?

        public var identifier: [String: Any]

        public var dimension: Dimension

        public var size: String

        public var customJson: [String: Any]?

        public var quantities: Quantities?

        public var meta: [String: Any]?

        public var sellerIdentifier: String?

        public var fragile: Bool

        public var expirationDate: String?

        public var weight: Weight

        public var totalQuantity: Int

        public var isActive: Bool?

        public var price: PriceMeta

        public var manufacturer: Manufacturer

        public var company: CompanyMeta

        public var createdBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var brand: BrandMeta

        public var uid: String

        public var trackInventory: Bool?

        public var returnConfig: [String: Any]?

        public var addedOnStore: String?

        public var fyndArticleCode: String

        public var countryOfOrigin: String

        public var isSet: Bool?

        public var set: InventorySet?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case fyndMeta = "fynd_meta"

            case store

            case taxIdentifier = "tax_identifier"

            case modifiedBy = "modified_by"

            case fyndItemCode = "fynd_item_code"

            case trader

            case identifier

            case dimension

            case size

            case customJson = "_custom_json"

            case quantities

            case meta

            case sellerIdentifier = "seller_identifier"

            case fragile

            case expirationDate = "expiration_date"

            case weight

            case totalQuantity = "total_quantity"

            case isActive = "is_active"

            case price

            case manufacturer

            case company

            case createdBy = "created_by"

            case rawMeta = "raw_meta"

            case brand

            case uid

            case trackInventory = "track_inventory"

            case returnConfig = "return_config"

            case addedOnStore = "added_on_store"

            case fyndArticleCode = "fynd_article_code"

            case countryOfOrigin = "country_of_origin"

            case isSet = "is_set"

            case set
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: Dimension, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: Manufacturer, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String? = nil, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: Weight, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.fyndMeta = fyndMeta

            self.store = store

            self.taxIdentifier = taxIdentifier

            self.modifiedBy = modifiedBy

            self.fyndItemCode = fyndItemCode

            self.trader = trader

            self.identifier = identifier

            self.dimension = dimension

            self.size = size

            self.customJson = customJson

            self.quantities = quantities

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.fragile = fragile

            self.expirationDate = expirationDate

            self.weight = weight

            self.totalQuantity = totalQuantity

            self.isActive = isActive

            self.price = price

            self.manufacturer = manufacturer

            self.company = company

            self.createdBy = createdBy

            self.rawMeta = rawMeta

            self.brand = brand

            self.uid = uid

            self.trackInventory = trackInventory

            self.returnConfig = returnConfig

            self.addedOnStore = addedOnStore

            self.fyndArticleCode = fyndArticleCode

            self.countryOfOrigin = countryOfOrigin

            self.isSet = isSet

            self.set = set
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            dimension = try container.decode(Dimension.self, forKey: .dimension)

            size = try container.decode(String.self, forKey: .size)

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
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(Weight.self, forKey: .weight)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            manufacturer = try container.decode(Manufacturer.self, forKey: .manufacturer)

            company = try container.decode(CompanyMeta.self, forKey: .company)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(set, forKey: .set)
        }
    }
}
