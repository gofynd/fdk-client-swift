

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var size: String

        public var weight: WeightResponse

        public var itemId: Int

        public var customJson: [String: Any]?

        public var brand: BrandMeta

        public var uid: String

        public var price: PriceMeta

        public var taxIdentifier: [String: Any]?

        public var trader: [Trader1]?

        public var modifiedBy: UserSerializer?

        public var fyndMeta: [String: Any]?

        public var dimension: DimensionResponse

        public var quantities: Quantities?

        public var fragile: Bool

        public var tags: [String]?

        public var returnConfig: ReturnConfig1?

        public var manufacturer: ManufacturerResponse

        public var trackInventory: Bool?

        public var fyndItemCode: String

        public var expirationDate: String?

        public var meta: [String: Any]?

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var countryOfOrigin: String

        public var isActive: Bool?

        public var set: InventorySet?

        public var fyndArticleCode: String

        public var addedOnStore: String?

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var rawMeta: [String: Any]?

        public var totalQuantity: Int

        public var store: StoreMeta

        public var stage: String?

        public var company: CompanyMeta

        public enum CodingKeys: String, CodingKey {
            case size

            case weight

            case itemId = "item_id"

            case customJson = "_custom_json"

            case brand

            case uid

            case price

            case taxIdentifier = "tax_identifier"

            case trader

            case modifiedBy = "modified_by"

            case fyndMeta = "fynd_meta"

            case dimension

            case quantities

            case fragile

            case tags

            case returnConfig = "return_config"

            case manufacturer

            case trackInventory = "track_inventory"

            case fyndItemCode = "fynd_item_code"

            case expirationDate = "expiration_date"

            case meta

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case countryOfOrigin = "country_of_origin"

            case isActive = "is_active"

            case set

            case fyndArticleCode = "fynd_article_code"

            case addedOnStore = "added_on_store"

            case createdBy = "created_by"

            case identifier

            case rawMeta = "raw_meta"

            case totalQuantity = "total_quantity"

            case store

            case stage

            case company
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.size = size

            self.weight = weight

            self.itemId = itemId

            self.customJson = customJson

            self.brand = brand

            self.uid = uid

            self.price = price

            self.taxIdentifier = taxIdentifier

            self.trader = trader

            self.modifiedBy = modifiedBy

            self.fyndMeta = fyndMeta

            self.dimension = dimension

            self.quantities = quantities

            self.fragile = fragile

            self.tags = tags

            self.returnConfig = returnConfig

            self.manufacturer = manufacturer

            self.trackInventory = trackInventory

            self.fyndItemCode = fyndItemCode

            self.expirationDate = expirationDate

            self.meta = meta

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.countryOfOrigin = countryOfOrigin

            self.isActive = isActive

            self.set = set

            self.fyndArticleCode = fyndArticleCode

            self.addedOnStore = addedOnStore

            self.createdBy = createdBy

            self.identifier = identifier

            self.rawMeta = rawMeta

            self.totalQuantity = totalQuantity

            self.store = store

            self.stage = stage

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            uid = try container.decode(String.self, forKey: .uid)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

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
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
