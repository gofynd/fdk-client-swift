

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var totalQuantity: Int

        public var fragile: Bool

        public var modifiedBy: UserSerializer?

        public var price: PriceMeta

        public var identifier: [String: Any]

        public var trader: [Trader1]?

        public var fyndItemCode: String

        public var manufacturer: ManufacturerResponse

        public var uid: String

        public var rawMeta: [String: Any]?

        public var returnConfig: ReturnConfig1?

        public var isActive: Bool?

        public var itemId: Int

        public var stage: String?

        public var sizeQuantity: Double?

        public var quantities: Quantities?

        public var taxIdentifier: [String: Any]?

        public var store: StoreMeta

        public var createdBy: UserSerializer?

        public var brand: BrandMeta

        public var fyndMeta: [String: Any]?

        public var countryOfOrigin: String

        public var sellerIdentifier: String

        public var addedOnStore: String?

        public var weight: WeightResponse

        public var size: String

        public var expirationDate: String?

        public var customJson: [String: Any]?

        public var fyndArticleCode: String

        public var isSet: Bool?

        public var company: CompanyMeta

        public var dimension: DimensionResponse

        public var set: InventorySet?

        public var meta: [String: Any]?

        public var sizeUnit: String?

        public var trackInventory: Bool?

        public enum CodingKeys: String, CodingKey {
            case totalQuantity = "total_quantity"

            case fragile

            case modifiedBy = "modified_by"

            case price

            case identifier

            case trader

            case fyndItemCode = "fynd_item_code"

            case manufacturer

            case uid

            case rawMeta = "raw_meta"

            case returnConfig = "return_config"

            case isActive = "is_active"

            case itemId = "item_id"

            case stage

            case sizeQuantity = "size_quantity"

            case quantities

            case taxIdentifier = "tax_identifier"

            case store

            case createdBy = "created_by"

            case brand

            case fyndMeta = "fynd_meta"

            case countryOfOrigin = "country_of_origin"

            case sellerIdentifier = "seller_identifier"

            case addedOnStore = "added_on_store"

            case weight

            case size

            case expirationDate = "expiration_date"

            case customJson = "_custom_json"

            case fyndArticleCode = "fynd_article_code"

            case isSet = "is_set"

            case company

            case dimension

            case set

            case meta

            case sizeUnit = "size_unit"

            case trackInventory = "track_inventory"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, sizeQuantity: Double? = nil, sizeUnit: String? = nil, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.totalQuantity = totalQuantity

            self.fragile = fragile

            self.modifiedBy = modifiedBy

            self.price = price

            self.identifier = identifier

            self.trader = trader

            self.fyndItemCode = fyndItemCode

            self.manufacturer = manufacturer

            self.uid = uid

            self.rawMeta = rawMeta

            self.returnConfig = returnConfig

            self.isActive = isActive

            self.itemId = itemId

            self.stage = stage

            self.sizeQuantity = sizeQuantity

            self.quantities = quantities

            self.taxIdentifier = taxIdentifier

            self.store = store

            self.createdBy = createdBy

            self.brand = brand

            self.fyndMeta = fyndMeta

            self.countryOfOrigin = countryOfOrigin

            self.sellerIdentifier = sellerIdentifier

            self.addedOnStore = addedOnStore

            self.weight = weight

            self.size = size

            self.expirationDate = expirationDate

            self.customJson = customJson

            self.fyndArticleCode = fyndArticleCode

            self.isSet = isSet

            self.company = company

            self.dimension = dimension

            self.set = set

            self.meta = meta

            self.sizeUnit = sizeUnit

            self.trackInventory = trackInventory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

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

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeQuantity = try container.decode(Double.self, forKey: .sizeQuantity)

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
                taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            size = try container.decode(String.self, forKey: .size)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(CompanyMeta.self, forKey: .company)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                sizeUnit = try container.decode(String.self, forKey: .sizeUnit)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(sizeQuantity, forKey: .sizeQuantity)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(sizeUnit, forKey: .sizeUnit)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
        }
    }
}
