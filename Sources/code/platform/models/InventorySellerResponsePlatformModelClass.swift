

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var price: PriceMeta

        public var fyndArticleCode: String

        public var sellerIdentifier: String

        public var set: InventorySet?

        public var taxIdentifier: [String: Any]?

        public var expirationDate: String?

        public var createdBy: UserSerializer?

        public var company: CompanyMeta

        public var weight: WeightResponse

        public var brand: BrandMeta

        public var fragile: Bool

        public var dimension: DimensionResponse

        public var meta: [String: Any]?

        public var quantities: Quantities?

        public var manufacturer: ManufacturerResponse

        public var size: String

        public var uid: String

        public var stage: String?

        public var trader: [Trader1]?

        public var trackInventory: Bool?

        public var totalQuantity: Int

        public var rawMeta: [String: Any]?

        public var isSet: Bool?

        public var identifier: [String: Any]

        public var modifiedBy: UserSerializer?

        public var addedOnStore: String?

        public var store: StoreMeta

        public var tags: [String]?

        public var fyndItemCode: String

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var returnConfig: ReturnConfig1?

        public var itemId: Int

        public var countryOfOrigin: String

        public var fyndMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case price

            case fyndArticleCode = "fynd_article_code"

            case sellerIdentifier = "seller_identifier"

            case set

            case taxIdentifier = "tax_identifier"

            case expirationDate = "expiration_date"

            case createdBy = "created_by"

            case company

            case weight

            case brand

            case fragile

            case dimension

            case meta

            case quantities

            case manufacturer

            case size

            case uid

            case stage

            case trader

            case trackInventory = "track_inventory"

            case totalQuantity = "total_quantity"

            case rawMeta = "raw_meta"

            case isSet = "is_set"

            case identifier

            case modifiedBy = "modified_by"

            case addedOnStore = "added_on_store"

            case store

            case tags

            case fyndItemCode = "fynd_item_code"

            case customJson = "_custom_json"

            case isActive = "is_active"

            case returnConfig = "return_config"

            case itemId = "item_id"

            case countryOfOrigin = "country_of_origin"

            case fyndMeta = "fynd_meta"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.price = price

            self.fyndArticleCode = fyndArticleCode

            self.sellerIdentifier = sellerIdentifier

            self.set = set

            self.taxIdentifier = taxIdentifier

            self.expirationDate = expirationDate

            self.createdBy = createdBy

            self.company = company

            self.weight = weight

            self.brand = brand

            self.fragile = fragile

            self.dimension = dimension

            self.meta = meta

            self.quantities = quantities

            self.manufacturer = manufacturer

            self.size = size

            self.uid = uid

            self.stage = stage

            self.trader = trader

            self.trackInventory = trackInventory

            self.totalQuantity = totalQuantity

            self.rawMeta = rawMeta

            self.isSet = isSet

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.addedOnStore = addedOnStore

            self.store = store

            self.tags = tags

            self.fyndItemCode = fyndItemCode

            self.customJson = customJson

            self.isActive = isActive

            self.returnConfig = returnConfig

            self.itemId = itemId

            self.countryOfOrigin = countryOfOrigin

            self.fyndMeta = fyndMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            price = try container.decode(PriceMeta.self, forKey: .price)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
        }
    }
}
