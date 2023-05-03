

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: GetInventories
         Used By: Catalog
     */

    class GetInventories: Codable {
        public var returnConfig: ReturnConfig2?

        public var manufacturer: ManufacturerResponse1?

        public var taxIdentifier: [String: Any]?

        public var store: ArticleStoreResponse?

        public var traceId: String?

        public var dimension: DimensionResponse1?

        public var inventoryUpdatedOn: String?

        public var sellerIdentifier: String?

        public var trader: [Trader2]?

        public var id: String?

        public var trackInventory: Bool?

        public var weight: WeightResponse1?

        public var tags: [String]?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var size: String?

        public var platforms: [String: Any]?

        public var stage: String?

        public var itemId: Int?

        public var uid: String?

        public var company: CompanyMeta1?

        public var quantities: QuantitiesArticle?

        public var expirationDate: String?

        public var countryOfOrigin: String?

        public var totalQuantity: Int?

        public var price: PriceArticle?

        public var dateMeta: DateMeta?

        public var identifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta1?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case manufacturer

            case taxIdentifier = "tax_identifier"

            case store

            case traceId = "trace_id"

            case dimension

            case inventoryUpdatedOn = "inventory_updated_on"

            case sellerIdentifier = "seller_identifier"

            case trader

            case id

            case trackInventory = "track_inventory"

            case weight

            case tags

            case isSet = "is_set"

            case createdBy = "created_by"

            case size

            case platforms

            case stage

            case itemId = "item_id"

            case uid

            case company

            case quantities

            case expirationDate = "expiration_date"

            case countryOfOrigin = "country_of_origin"

            case totalQuantity = "total_quantity"

            case price

            case dateMeta = "date_meta"

            case identifier

            case modifiedBy = "modified_by"

            case brand
        }

        public init(brand: BrandMeta1? = nil, company: CompanyMeta1? = nil, countryOfOrigin: String? = nil, createdBy: UserSerializer? = nil, dateMeta: DateMeta? = nil, dimension: DimensionResponse1? = nil, expirationDate: String? = nil, id: String? = nil, identifier: [String: Any]? = nil, inventoryUpdatedOn: String? = nil, isSet: Bool? = nil, itemId: Int? = nil, manufacturer: ManufacturerResponse1? = nil, modifiedBy: UserSerializer? = nil, platforms: [String: Any]? = nil, price: PriceArticle? = nil, quantities: QuantitiesArticle? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String? = nil, size: String? = nil, stage: String? = nil, store: ArticleStoreResponse? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int? = nil, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String? = nil, weight: WeightResponse1? = nil) {
            self.returnConfig = returnConfig

            self.manufacturer = manufacturer

            self.taxIdentifier = taxIdentifier

            self.store = store

            self.traceId = traceId

            self.dimension = dimension

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.sellerIdentifier = sellerIdentifier

            self.trader = trader

            self.id = id

            self.trackInventory = trackInventory

            self.weight = weight

            self.tags = tags

            self.isSet = isSet

            self.createdBy = createdBy

            self.size = size

            self.platforms = platforms

            self.stage = stage

            self.itemId = itemId

            self.uid = uid

            self.company = company

            self.quantities = quantities

            self.expirationDate = expirationDate

            self.countryOfOrigin = countryOfOrigin

            self.totalQuantity = totalQuantity

            self.price = price

            self.dateMeta = dateMeta

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturer = try container.decode(ManufacturerResponse1.self, forKey: .manufacturer)

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
                store = try container.decode(ArticleStoreResponse.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(DimensionResponse1.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

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
                weight = try container.decode(WeightResponse1.self, forKey: .weight)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

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
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyMeta1.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantities = try container.decode(QuantitiesArticle.self, forKey: .quantities)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(PriceArticle.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                brand = try container.decode(BrandMeta1.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: GetInventories
         Used By: Catalog
     */

    class GetInventories: Codable {
        public var returnConfig: ReturnConfig2?

        public var manufacturer: ManufacturerResponse1?

        public var taxIdentifier: [String: Any]?

        public var store: ArticleStoreResponse?

        public var traceId: String?

        public var dimension: DimensionResponse1?

        public var inventoryUpdatedOn: String?

        public var sellerIdentifier: String?

        public var trader: [Trader2]?

        public var id: String?

        public var trackInventory: Bool?

        public var weight: WeightResponse1?

        public var tags: [String]?

        public var isSet: Bool?

        public var createdBy: UserSerializer?

        public var size: String?

        public var platforms: [String: Any]?

        public var stage: String?

        public var itemId: Int?

        public var uid: String?

        public var company: CompanyMeta1?

        public var quantities: QuantitiesArticle?

        public var expirationDate: String?

        public var countryOfOrigin: String?

        public var totalQuantity: Int?

        public var price: PriceArticle?

        public var dateMeta: DateMeta?

        public var identifier: [String: Any]?

        public var modifiedBy: UserSerializer?

        public var brand: BrandMeta1?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case manufacturer

            case taxIdentifier = "tax_identifier"

            case store

            case traceId = "trace_id"

            case dimension

            case inventoryUpdatedOn = "inventory_updated_on"

            case sellerIdentifier = "seller_identifier"

            case trader

            case id

            case trackInventory = "track_inventory"

            case weight

            case tags

            case isSet = "is_set"

            case createdBy = "created_by"

            case size

            case platforms

            case stage

            case itemId = "item_id"

            case uid

            case company

            case quantities

            case expirationDate = "expiration_date"

            case countryOfOrigin = "country_of_origin"

            case totalQuantity = "total_quantity"

            case price

            case dateMeta = "date_meta"

            case identifier

            case modifiedBy = "modified_by"

            case brand
        }

        public init(brand: BrandMeta1? = nil, company: CompanyMeta1? = nil, countryOfOrigin: String? = nil, createdBy: UserSerializer? = nil, dateMeta: DateMeta? = nil, dimension: DimensionResponse1? = nil, expirationDate: String? = nil, id: String? = nil, identifier: [String: Any]? = nil, inventoryUpdatedOn: String? = nil, isSet: Bool? = nil, itemId: Int? = nil, manufacturer: ManufacturerResponse1? = nil, modifiedBy: UserSerializer? = nil, platforms: [String: Any]? = nil, price: PriceArticle? = nil, quantities: QuantitiesArticle? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String? = nil, size: String? = nil, stage: String? = nil, store: ArticleStoreResponse? = nil, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int? = nil, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String? = nil, weight: WeightResponse1? = nil) {
            self.returnConfig = returnConfig

            self.manufacturer = manufacturer

            self.taxIdentifier = taxIdentifier

            self.store = store

            self.traceId = traceId

            self.dimension = dimension

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.sellerIdentifier = sellerIdentifier

            self.trader = trader

            self.id = id

            self.trackInventory = trackInventory

            self.weight = weight

            self.tags = tags

            self.isSet = isSet

            self.createdBy = createdBy

            self.size = size

            self.platforms = platforms

            self.stage = stage

            self.itemId = itemId

            self.uid = uid

            self.company = company

            self.quantities = quantities

            self.expirationDate = expirationDate

            self.countryOfOrigin = countryOfOrigin

            self.totalQuantity = totalQuantity

            self.price = price

            self.dateMeta = dateMeta

            self.identifier = identifier

            self.modifiedBy = modifiedBy

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                manufacturer = try container.decode(ManufacturerResponse1.self, forKey: .manufacturer)

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
                store = try container.decode(ArticleStoreResponse.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimension = try container.decode(DimensionResponse1.self, forKey: .dimension)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trader = try container.decode([Trader2].self, forKey: .trader)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

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
                weight = try container.decode(WeightResponse1.self, forKey: .weight)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

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
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(CompanyMeta1.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantities = try container.decode(QuantitiesArticle.self, forKey: .quantities)

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
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                price = try container.decode(PriceArticle.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifier = try container.decode([String: Any].self, forKey: .identifier)

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
                brand = try container.decode(BrandMeta1.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)

            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(dimension, forKey: .dimension)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(trader, forKey: .trader)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(quantities, forKey: .quantities)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
