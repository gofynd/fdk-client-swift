

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var fyndArticleCode: String

        public var returnConfig: ReturnConfig1?

        public var set: InventorySet?

        public var trackInventory: Bool?

        public var stage: String?

        public var fyndItemCode: String

        public var identifier: [String: Any]

        public var modifiedBy: UserSerializer?

        public var rawMeta: [String: Any]?

        public var fragile: Bool

        public var addedOnStore: String?

        public var quantities: Quantities?

        public var weight: WeightResponse

        public var sellerIdentifier: String

        public var sizeUnit: String?

        public var store: StoreMeta

        public var customJson: [String: Any]?

        public var dimension: DimensionResponse

        public var taxIdentifier: [String: Any]?

        public var expirationDate: String?

        public var isSet: Bool?

        public var uid: String

        public var price: PriceMeta

        public var meta: [String: Any]?

        public var trader: [Trader1]?

        public var company: CompanyMeta

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public var brand: BrandMeta

        public var countryOfOrigin: String

        public var manufacturer: ManufacturerResponse

        public var size: String

        public var sizeQuantity: Double?

        public var totalQuantity: Int

        public var itemId: Int

        public var createdBy: UserSerializer?

        public enum CodingKeys: String, CodingKey {
            case fyndArticleCode = "fynd_article_code"

            case returnConfig = "return_config"

            case set

            case trackInventory = "track_inventory"

            case stage

            case fyndItemCode = "fynd_item_code"

            case identifier

            case modifiedBy = "modified_by"

            case rawMeta = "raw_meta"

            case fragile

            case addedOnStore = "added_on_store"

            case quantities

            case weight

            case sellerIdentifier = "seller_identifier"

            case sizeUnit = "size_unit"

            case store

            case customJson = "_custom_json"

            case dimension

            case taxIdentifier = "tax_identifier"

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case uid

            case price

            case meta

            case trader

            case company

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"

            case brand

            case countryOfOrigin = "country_of_origin"

            case manufacturer

            case size

            case sizeQuantity = "size_quantity"

            case totalQuantity = "total_quantity"

            case itemId = "item_id"

            case createdBy = "created_by"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, sizeQuantity: Double? = nil, sizeUnit: String? = nil, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.fyndArticleCode = fyndArticleCode

            self.returnConfig = returnConfig

            self.set = set

            self.trackInventory = trackInventory

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.rawMeta = rawMeta

            self.fragile = fragile

            self.addedOnStore = addedOnStore

            self.quantities = quantities

            self.weight = weight

            self.sellerIdentifier = sellerIdentifier

            self.sizeUnit = sizeUnit

            self.store = store

            self.customJson = customJson

            self.dimension = dimension

            self.taxIdentifier = taxIdentifier

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.uid = uid

            self.price = price

            self.meta = meta

            self.trader = trader

            self.company = company

            self.fyndMeta = fyndMeta

            self.isActive = isActive

            self.brand = brand

            self.countryOfOrigin = countryOfOrigin

            self.manufacturer = manufacturer

            self.size = size

            self.sizeQuantity = sizeQuantity

            self.totalQuantity = totalQuantity

            self.itemId = itemId

            self.createdBy = createdBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)

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

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

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

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                sizeUnit = try container.decode(String.self, forKey: .sizeUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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

            company = try container.decode(CompanyMeta.self, forKey: .company)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            size = try container.decode(String.self, forKey: .size)

            do {
                sizeQuantity = try container.decode(Double.self, forKey: .sizeQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(sizeUnit, forKey: .sizeUnit)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(meta, forKey: .meta)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(sizeQuantity, forKey: .sizeQuantity)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encode(createdBy, forKey: .createdBy)
        }
    }
}
