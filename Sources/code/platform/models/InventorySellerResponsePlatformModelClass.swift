

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var addedOnStore: String?

        public var rawMeta: [String: Any]?

        public var company: CompanyMeta

        public var sellerIdentifier: String

        public var isActive: Bool?

        public var isSet: Bool?

        public var expirationDate: String?

        public var quantities: Quantities?

        public var returnConfig: ReturnConfig1?

        public var weight: WeightResponse

        public var customJson: [String: Any]?

        public var tags: [String]?

        public var meta: [String: Any]?

        public var itemId: Int

        public var uid: String

        public var totalQuantity: Int

        public var dimension: DimensionResponse

        public var size: String

        public var identifier: [String: Any]

        public var manufacturer: ManufacturerResponse

        public var modifiedBy: UserSerializer?

        public var fragile: Bool

        public var createdBy: UserSerializer?

        public var fyndItemCode: String

        public var set: InventorySet?

        public var brand: BrandMeta

        public var trader: [Trader1]?

        public var countryOfOrigin: String

        public var trackInventory: Bool?

        public var stage: String?

        public var fyndMeta: [String: Any]?

        public var store: StoreMeta

        public var price: PriceMeta

        public var taxIdentifier: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case addedOnStore = "added_on_store"

            case rawMeta = "raw_meta"

            case company

            case sellerIdentifier = "seller_identifier"

            case isActive = "is_active"

            case isSet = "is_set"

            case expirationDate = "expiration_date"

            case quantities

            case returnConfig = "return_config"

            case weight

            case customJson = "_custom_json"

            case tags

            case meta

            case itemId = "item_id"

            case uid

            case totalQuantity = "total_quantity"

            case dimension

            case size

            case identifier

            case manufacturer

            case modifiedBy = "modified_by"

            case fragile

            case createdBy = "created_by"

            case fyndItemCode = "fynd_item_code"

            case set

            case brand

            case trader

            case countryOfOrigin = "country_of_origin"

            case trackInventory = "track_inventory"

            case stage

            case fyndMeta = "fynd_meta"

            case store

            case price

            case taxIdentifier = "tax_identifier"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.addedOnStore = addedOnStore

            self.rawMeta = rawMeta

            self.company = company

            self.sellerIdentifier = sellerIdentifier

            self.isActive = isActive

            self.isSet = isSet

            self.expirationDate = expirationDate

            self.quantities = quantities

            self.returnConfig = returnConfig

            self.weight = weight

            self.customJson = customJson

            self.tags = tags

            self.meta = meta

            self.itemId = itemId

            self.uid = uid

            self.totalQuantity = totalQuantity

            self.dimension = dimension

            self.size = size

            self.identifier = identifier

            self.manufacturer = manufacturer

            self.modifiedBy = modifiedBy

            self.fragile = fragile

            self.createdBy = createdBy

            self.fyndItemCode = fyndItemCode

            self.set = set

            self.brand = brand

            self.trader = trader

            self.countryOfOrigin = countryOfOrigin

            self.trackInventory = trackInventory

            self.stage = stage

            self.fyndMeta = fyndMeta

            self.store = store

            self.price = price

            self.taxIdentifier = taxIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

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

            itemId = try container.decode(Int.self, forKey: .itemId)

            uid = try container.decode(String.self, forKey: .uid)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            size = try container.decode(String.self, forKey: .size)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

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

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encode(tags, forKey: .tags)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
        }
    }
}
