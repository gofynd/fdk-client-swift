

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var price: PriceMeta

        public var itemId: Int

        public var createdBy: UserSerializer?

        public var company: CompanyMeta

        public var brand: BrandMeta

        public var customJson: [String: Any]?

        public var trackInventory: Bool?

        public var fyndItemCode: String

        public var uid: String

        public var weight: WeightResponse

        public var countryOfOrigin: String

        public var fyndArticleCode: String

        public var isActive: Bool?

        public var trader: [Trader1]?

        public var totalQuantity: Int

        public var rawMeta: [String: Any]?

        public var expirationDate: String?

        public var taxIdentifier: [String: Any]?

        public var dimension: DimensionResponse

        public var sellerIdentifier: String

        public var fragile: Bool

        public var returnConfig: [String: Any]?

        public var identifier: [String: Any]

        public var addedOnStore: String?

        public var meta: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var isSet: Bool?

        public var manufacturer: ManufacturerResponse

        public var store: StoreMeta

        public var size: String

        public var set: InventorySet?

        public var quantities: Quantities?

        public enum CodingKeys: String, CodingKey {
            case price

            case itemId = "item_id"

            case createdBy = "created_by"

            case company

            case brand

            case customJson = "_custom_json"

            case trackInventory = "track_inventory"

            case fyndItemCode = "fynd_item_code"

            case uid

            case weight

            case countryOfOrigin = "country_of_origin"

            case fyndArticleCode = "fynd_article_code"

            case isActive = "is_active"

            case trader

            case totalQuantity = "total_quantity"

            case rawMeta = "raw_meta"

            case expirationDate = "expiration_date"

            case taxIdentifier = "tax_identifier"

            case dimension

            case sellerIdentifier = "seller_identifier"

            case fragile

            case returnConfig = "return_config"

            case identifier

            case addedOnStore = "added_on_store"

            case meta

            case fyndMeta = "fynd_meta"

            case modifiedBy = "modified_by"

            case isSet = "is_set"

            case manufacturer

            case store

            case size

            case set

            case quantities
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.price = price

            self.itemId = itemId

            self.createdBy = createdBy

            self.company = company

            self.brand = brand

            self.customJson = customJson

            self.trackInventory = trackInventory

            self.fyndItemCode = fyndItemCode

            self.uid = uid

            self.weight = weight

            self.countryOfOrigin = countryOfOrigin

            self.fyndArticleCode = fyndArticleCode

            self.isActive = isActive

            self.trader = trader

            self.totalQuantity = totalQuantity

            self.rawMeta = rawMeta

            self.expirationDate = expirationDate

            self.taxIdentifier = taxIdentifier

            self.dimension = dimension

            self.sellerIdentifier = sellerIdentifier

            self.fragile = fragile

            self.returnConfig = returnConfig

            self.identifier = identifier

            self.addedOnStore = addedOnStore

            self.meta = meta

            self.fyndMeta = fyndMeta

            self.modifiedBy = modifiedBy

            self.isSet = isSet

            self.manufacturer = manufacturer

            self.store = store

            self.size = size

            self.set = set

            self.quantities = quantities
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            price = try container.decode(PriceMeta.self, forKey: .price)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            uid = try container.decode(String.self, forKey: .uid)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            store = try container.decode(StoreMeta.self, forKey: .store)

            size = try container.decode(String.self, forKey: .size)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantities, forKey: .quantities)
        }
    }
}
