

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var itemId: Int

        public var expirationDate: String?

        public var weight: WeightResponse

        public var price: PriceMeta

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var sellerIdentifier: String

        public var fyndArticleCode: String

        public var uid: String

        public var isSet: Bool?

        public var totalQuantity: Int

        public var createdBy: UserSerializer?

        public var identifier: [String: Any]

        public var returnConfig: ReturnConfig1?

        public var countryOfOrigin: String

        public var size: String

        public var company: CompanyMeta

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var meta: [String: Any]?

        public var set: InventorySet?

        public var isActive: Bool?

        public var trackInventory: Bool?

        public var stage: String?

        public var fragile: Bool

        public var modifiedBy: UserSerializer?

        public var manufacturer: ManufacturerResponse

        public var addedOnStore: String?

        public var dimension: DimensionResponse

        public var rawMeta: [String: Any]?

        public var trader: [Trader1]?

        public var brand: BrandMeta

        public var taxIdentifier: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case expirationDate = "expiration_date"

            case weight

            case price

            case fyndMeta = "fynd_meta"

            case store

            case fyndItemCode = "fynd_item_code"

            case quantities

            case sellerIdentifier = "seller_identifier"

            case fyndArticleCode = "fynd_article_code"

            case uid

            case isSet = "is_set"

            case totalQuantity = "total_quantity"

            case createdBy = "created_by"

            case identifier

            case returnConfig = "return_config"

            case countryOfOrigin = "country_of_origin"

            case size

            case company

            case customJson = "_custom_json"

            case tags

            case meta

            case set

            case isActive = "is_active"

            case trackInventory = "track_inventory"

            case stage

            case fragile

            case modifiedBy = "modified_by"

            case manufacturer

            case addedOnStore = "added_on_store"

            case dimension

            case rawMeta = "raw_meta"

            case trader

            case brand

            case taxIdentifier = "tax_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.itemId = itemId

            self.expirationDate = expirationDate

            self.weight = weight

            self.price = price

            self.fyndMeta = fyndMeta

            self.store = store

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.sellerIdentifier = sellerIdentifier

            self.fyndArticleCode = fyndArticleCode

            self.uid = uid

            self.isSet = isSet

            self.totalQuantity = totalQuantity

            self.createdBy = createdBy

            self.identifier = identifier

            self.returnConfig = returnConfig

            self.countryOfOrigin = countryOfOrigin

            self.size = size

            self.company = company

            self.customJson = customJson

            self.tags = tags

            self.meta = meta

            self.set = set

            self.isActive = isActive

            self.trackInventory = trackInventory

            self.stage = stage

            self.fragile = fragile

            self.modifiedBy = modifiedBy

            self.manufacturer = manufacturer

            self.addedOnStore = addedOnStore

            self.dimension = dimension

            self.rawMeta = rawMeta

            self.trader = trader

            self.brand = brand

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            size = try container.decode(String.self, forKey: .size)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
