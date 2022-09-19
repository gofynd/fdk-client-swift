

import Foundation
public extension PlatformClient {
    /*
         Model: InventorySellerResponse
         Used By: Catalog
     */

    class InventorySellerResponse: Codable {
        public var returnConfig: ReturnConfig1?

        public var taxIdentifier: [String: Any]?

        public var countryOfOrigin: String

        public var dimension: DimensionResponse

        public var itemId: Int

        public var fragile: Bool

        public var customJson: [String: Any]?

        public var price: PriceMeta

        public var sellerIdentifier: String

        public var totalQuantity: Int

        public var addedOnStore: String?

        public var store: StoreMeta

        public var meta: [String: Any]?

        public var manufacturer: ManufacturerResponse

        public var trader: [Trader1]?

        public var expirationDate: String?

        public var netQuantityUnit: [String: Any]?

        public var isActive: Bool?

        public var fyndArticleCode: String

        public var weight: WeightResponse

        public var brand: BrandMeta

        public var netQuantityValue: Double?

        public var quantities: Quantities?

        public var uid: String

        public var company: CompanyMeta

        public var size: String

        public var fyndMeta: [String: Any]?

        public var rawMeta: [String: Any]?

        public var modifiedBy: BaseUserSerializerWithID?

        public var set: InventorySet?

        public var createdBy: BaseUserSerializerWithID?

        public var fyndItemCode: String

        public var isSet: Bool?

        public var trackInventory: Bool?

        public var stage: String?

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case taxIdentifier = "tax_identifier"

            case countryOfOrigin = "country_of_origin"

            case dimension

            case itemId = "item_id"

            case fragile

            case customJson = "_custom_json"

            case price

            case sellerIdentifier = "seller_identifier"

            case totalQuantity = "total_quantity"

            case addedOnStore = "added_on_store"

            case store

            case meta

            case manufacturer

            case trader

            case expirationDate = "expiration_date"

            case netQuantityUnit = "net_quantity_unit"

            case isActive = "is_active"

            case fyndArticleCode = "fynd_article_code"

            case weight

            case brand

            case netQuantityValue = "net_quantity_value"

            case quantities

            case uid

            case company

            case size

            case fyndMeta = "fynd_meta"

            case rawMeta = "raw_meta"

            case modifiedBy = "modified_by"

            case set

            case createdBy = "created_by"

            case fyndItemCode = "fynd_item_code"

            case isSet = "is_set"

            case trackInventory = "track_inventory"

            case stage

            case identifier
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: BaseUserSerializerWithID? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: BaseUserSerializerWithID? = nil, netQuantityUnit: [String: Any]? = nil, netQuantityValue: Double? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            self.returnConfig = returnConfig

            self.taxIdentifier = taxIdentifier

            self.countryOfOrigin = countryOfOrigin

            self.dimension = dimension

            self.itemId = itemId

            self.fragile = fragile

            self.customJson = customJson

            self.price = price

            self.sellerIdentifier = sellerIdentifier

            self.totalQuantity = totalQuantity

            self.addedOnStore = addedOnStore

            self.store = store

            self.meta = meta

            self.manufacturer = manufacturer

            self.trader = trader

            self.expirationDate = expirationDate

            self.netQuantityUnit = netQuantityUnit

            self.isActive = isActive

            self.fyndArticleCode = fyndArticleCode

            self.weight = weight

            self.brand = brand

            self.netQuantityValue = netQuantityValue

            self.quantities = quantities

            self.uid = uid

            self.company = company

            self.size = size

            self.fyndMeta = fyndMeta

            self.rawMeta = rawMeta

            self.modifiedBy = modifiedBy

            self.set = set

            self.createdBy = createdBy

            self.fyndItemCode = fyndItemCode

            self.isSet = isSet

            self.trackInventory = trackInventory

            self.stage = stage

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            dimension = try container.decode(DimensionResponse.self, forKey: .dimension)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fragile = try container.decode(Bool.self, forKey: .fragile)

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(PriceMeta.self, forKey: .price)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            store = try container.decode(StoreMeta.self, forKey: .store)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)

            do {
                trader = try container.decode([Trader1].self, forKey: .trader)

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
                netQuantityUnit = try container.decode([String: Any].self, forKey: .netQuantityUnit)

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

            fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)

            weight = try container.decode(WeightResponse.self, forKey: .weight)

            brand = try container.decode(BrandMeta.self, forKey: .brand)

            do {
                netQuantityValue = try container.decode(Double.self, forKey: .netQuantityValue)

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

            uid = try container.decode(String.self, forKey: .uid)

            company = try container.decode(CompanyMeta.self, forKey: .company)

            size = try container.decode(String.self, forKey: .size)

            do {
                fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)

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
                modifiedBy = try container.decode(BaseUserSerializerWithID.self, forKey: .modifiedBy)

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
                createdBy = try container.decode(BaseUserSerializerWithID.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fragile, forKey: .fragile)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encode(trader, forKey: .trader)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(netQuantityUnit, forKey: .netQuantityUnit)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(netQuantityValue, forKey: .netQuantityValue)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)

            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)

            try? container.encode(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
