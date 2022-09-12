

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var trader: [Trader1]?

        public var countryOfOrigin: String

        public var fyndArticleCode: String

        public var returnConfig: ReturnConfig1?

        public var set: InventorySet?

        public var trackInventory: Bool?

        public var weight: WeightResponse

        public var size: String

        public var price: PriceMeta

        public var identifier: [String: Any]

        public var quantities: Quantities?

        public var addedOnStore: String?

        public var company: CompanyMeta

        public var stage: String?

        public var isSet: Bool?

        public var rawMeta: [String: Any]?

        public var isActive: Bool?

        public var fragile: Bool

        public var brand: BrandMeta

        public var fyndItemCode: String

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var itemId: Int

        public var sellerIdentifier: String

        public var uid: String

        public var customJson: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var totalQuantity: Int

        public var modifiedBy: BaseUserSerializerWithID?

        public var dimension: DimensionResponse

        public var expirationDate: String?

        public var taxIdentifier: [String: Any]?

        public var createdBy: BaseUserSerializerWithID?

        public enum CodingKeys: String, CodingKey {
            case trader

            case countryOfOrigin = "country_of_origin"

            case fyndArticleCode = "fynd_article_code"

            case returnConfig = "return_config"

            case set

            case trackInventory = "track_inventory"

            case weight

            case size

            case price

            case identifier

            case quantities

            case addedOnStore = "added_on_store"

            case company

            case stage

            case isSet = "is_set"

            case rawMeta = "raw_meta"

            case isActive = "is_active"

            case fragile

            case brand

            case fyndItemCode = "fynd_item_code"

            case store

            case meta

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case uid

            case customJson = "_custom_json"

            case fyndMeta = "fynd_meta"

            case manufacturer

            case totalQuantity = "total_quantity"

            case modifiedBy = "modified_by"

            case dimension

            case expirationDate = "expiration_date"

            case taxIdentifier = "tax_identifier"

            case createdBy = "created_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: BaseUserSerializerWithID? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: BaseUserSerializerWithID? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.trader = trader

            self.countryOfOrigin = countryOfOrigin

            self.fyndArticleCode = fyndArticleCode

            self.returnConfig = returnConfig

            self.set = set

            self.trackInventory = trackInventory

            self.weight = weight

            self.size = size

            self.price = price

            self.identifier = identifier

            self.quantities = quantities

            self.addedOnStore = addedOnStore

            self.company = company

            self.stage = stage

            self.isSet = isSet

            self.rawMeta = rawMeta

            self.isActive = isActive

            self.fragile = fragile

            self.brand = brand

            self.fyndItemCode = fyndItemCode

            self.store = store

            self.meta = meta

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.uid = uid

            self.customJson = customJson

            self.fyndMeta = fyndMeta

            self.manufacturer = manufacturer

            self.totalQuantity = totalQuantity

            self.modifiedBy = modifiedBy

            self.dimension = dimension

            self.expirationDate = expirationDate

            self.taxIdentifier = taxIdentifier

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            size = try container.decode(String.self, forKey: .size)

            price = try container.decode(PriceMeta.self, forKey: .price)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                stage = try container.decode(String.self, forKey: .stage)

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
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                modifiedBy = try container.decode(BaseUserSerializerWithID.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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

            do {
                createdBy = try container.decode(BaseUserSerializerWithID.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encode(createdBy, forKey: .createdBy)
        }
    }
}
