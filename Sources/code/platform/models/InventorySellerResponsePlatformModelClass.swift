

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var meta: [String: Any]?

        public var fyndMeta: [String: Any]?

        public var isActive: Bool?

        public var sellerIdentifier: String

        public var modifiedBy: BaseUserSerializerWithID?

        public var uid: String

        public var rawMeta: [String: Any]?

        public var identifier: [String: Any]

        public var netQuantityValue: Double?

        public var fyndArticleCode: String

        public var fragile: Bool

        public var itemId: Int

        public var trackInventory: Bool?

        public var netQuantityUnit: [String: Any]?

        public var size: String

        public var customJson: [String: Any]?

        public var addedOnStore: String?

        public var trader: [Trader1]?

        public var weight: WeightResponse

        public var set: InventorySet?

        public var price: PriceMeta

        public var stage: String?

        public var fyndItemCode: String

        public var quantities: Quantities?

        public var brand: BrandMeta

        public var company: CompanyMeta

        public var manufacturer: ManufacturerResponse

        public var createdBy: BaseUserSerializerWithID?

        public var expirationDate: String?

        public var totalQuantity: Int

        public var returnConfig: ReturnConfig1?

        public var taxIdentifier: [String: Any]?

        public var store: StoreMeta

        public var countryOfOrigin: String

        public var dimension: DimensionResponse

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case meta

            case fyndMeta = "fynd_meta"

            case isActive = "is_active"

            case sellerIdentifier = "seller_identifier"

            case modifiedBy = "modified_by"

            case uid

            case rawMeta = "raw_meta"

            case identifier

            case netQuantityValue = "net_quantity_value"

            case fyndArticleCode = "fynd_article_code"

            case fragile

            case itemId = "item_id"

            case trackInventory = "track_inventory"

            case netQuantityUnit = "net_quantity_unit"

            case size

            case customJson = "_custom_json"

            case addedOnStore = "added_on_store"

            case trader

            case weight

            case set

            case price

            case stage

            case fyndItemCode = "fynd_item_code"

            case quantities

            case brand

            case company

            case manufacturer

            case createdBy = "created_by"

            case expirationDate = "expiration_date"

            case totalQuantity = "total_quantity"

            case returnConfig = "return_config"

            case taxIdentifier = "tax_identifier"

            case store

            case countryOfOrigin = "country_of_origin"

            case dimension

            case isSet = "is_set"
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: BaseUserSerializerWithID? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: BaseUserSerializerWithID? = nil, netQuantityUnit: [String: Any]? = nil, netQuantityValue: Double? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.meta = meta

            self.fyndMeta = fyndMeta

            self.isActive = isActive

            self.sellerIdentifier = sellerIdentifier

            self.modifiedBy = modifiedBy

            self.uid = uid

            self.rawMeta = rawMeta

            self.identifier = identifier

            self.netQuantityValue = netQuantityValue

            self.fyndArticleCode = fyndArticleCode

            self.fragile = fragile

            self.itemId = itemId

            self.trackInventory = trackInventory

            self.netQuantityUnit = netQuantityUnit

            self.size = size

            self.customJson = customJson

            self.addedOnStore = addedOnStore

            self.trader = trader

            self.weight = weight

            self.set = set

            self.price = price

            self.stage = stage

            self.fyndItemCode = fyndItemCode

            self.quantities = quantities

            self.brand = brand

            self.company = company

            self.manufacturer = manufacturer

            self.createdBy = createdBy

            self.expirationDate = expirationDate

            self.totalQuantity = totalQuantity

            self.returnConfig = returnConfig

            self.taxIdentifier = taxIdentifier

            self.store = store

            self.countryOfOrigin = countryOfOrigin

            self.dimension = dimension

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                modifiedBy = try container.decode(BaseUserSerializerWithID.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                netQuantityValue = try container.decode(Double.self, forKey: .netQuantityValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                trackInventory = try container.decode(Bool.self, forKey: .trackInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                netQuantityUnit = try container.decode([String: Any].self, forKey: .netQuantityUnit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

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

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                quantities = try container.decode(Quantities.self, forKey: .quantities)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                createdBy = try container.decode(BaseUserSerializerWithID.self, forKey: .createdBy)

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

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(netQuantityValue, forKey: .netQuantityValue)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(netQuantityUnit, forKey: .netQuantityUnit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
