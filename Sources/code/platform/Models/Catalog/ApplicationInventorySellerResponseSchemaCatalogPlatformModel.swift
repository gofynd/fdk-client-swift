

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationInventorySellerResponseSchema
        Used By: Catalog
    */

    class ApplicationInventorySellerResponseSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var addedOnStore: String?
        
        public var brand: BrandMeta
        
        public var company: CompanyMeta
        
        public var countryOfOrigin: String
        
        public var createdBy: RequestUserSchema?
        
        public var dimension: DimensionResponseSchema
        
        public var expirationDate: String?
        
        public var fragile: Bool
        
        public var fyndArticleCode: String
        
        public var fyndItemCode: String
        
        public var fyndMeta: [String: Any]?
        
        public var identifier: [String: Any]
        
        public var isActive: Bool?
        
        public var isSet: Bool?
        
        public var itemId: Int
        
        public var manufacturer: ManufacturerResponseSchema
        
        public var meta: [String: Any]?
        
        public var modifiedBy: RequestUserSchema?
        
        public var price: PriceMeta
        
        public var quantities: Quantities?
        
        public var rawMeta: [String: Any]?
        
        public var returnConfig: InventoryReturnConfig?
        
        public var sellerIdentifier: String
        
        public var set: InventorySet?
        
        public var size: String
        
        public var stage: String?
        
        public var store: StoreMeta
        
        public var tags: [String]?
        
        public var taxIdentifier: TaxIdentifier?
        
        public var totalQuantity: Int
        
        public var traceId: String?
        
        public var trackInventory: Bool?
        
        public var trader: [Trader]?
        
        public var uid: String
        
        public var weight: WeightResponseSchema
        
        public var dateMeta: DateMeta?
        
        public var platforms: [String: Any]?
        
        public var priceMarked: Double?
        
        public var priceEffective: Double?
        
        public var currency: String?
        
        public var priceSelling: Double?
        
        public var discountMeta: [String: Any]?
        
        public var discountApplied: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case addedOnStore = "added_on_store"
            
            case brand = "brand"
            
            case company = "company"
            
            case countryOfOrigin = "country_of_origin"
            
            case createdBy = "created_by"
            
            case dimension = "dimension"
            
            case expirationDate = "expiration_date"
            
            case fragile = "fragile"
            
            case fyndArticleCode = "fynd_article_code"
            
            case fyndItemCode = "fynd_item_code"
            
            case fyndMeta = "fynd_meta"
            
            case identifier = "identifier"
            
            case isActive = "is_active"
            
            case isSet = "is_set"
            
            case itemId = "item_id"
            
            case manufacturer = "manufacturer"
            
            case meta = "meta"
            
            case modifiedBy = "modified_by"
            
            case price = "price"
            
            case quantities = "quantities"
            
            case rawMeta = "raw_meta"
            
            case returnConfig = "return_config"
            
            case sellerIdentifier = "seller_identifier"
            
            case set = "set"
            
            case size = "size"
            
            case stage = "stage"
            
            case store = "store"
            
            case tags = "tags"
            
            case taxIdentifier = "tax_identifier"
            
            case totalQuantity = "total_quantity"
            
            case traceId = "trace_id"
            
            case trackInventory = "track_inventory"
            
            case trader = "trader"
            
            case uid = "uid"
            
            case weight = "weight"
            
            case dateMeta = "date_meta"
            
            case platforms = "platforms"
            
            case priceMarked = "price_marked"
            
            case priceEffective = "price_effective"
            
            case currency = "currency"
            
            case priceSelling = "price_selling"
            
            case discountMeta = "discount_meta"
            
            case discountApplied = "discount_applied"
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: RequestUserSchema? = nil, currency: String? = nil, dateMeta: DateMeta? = nil, dimension: DimensionResponseSchema, discountApplied: [String: Any]? = nil, discountMeta: [String: Any]? = nil, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponseSchema, meta: [String: Any]? = nil, modifiedBy: RequestUserSchema? = nil, platforms: [String: Any]? = nil, price: PriceMeta, priceEffective: Double? = nil, priceMarked: Double? = nil, priceSelling: Double? = nil, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: InventoryReturnConfig? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: TaxIdentifier? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader]? = nil, uid: String, weight: WeightResponseSchema, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.addedOnStore = addedOnStore
            
            self.brand = brand
            
            self.company = company
            
            self.countryOfOrigin = countryOfOrigin
            
            self.createdBy = createdBy
            
            self.dimension = dimension
            
            self.expirationDate = expirationDate
            
            self.fragile = fragile
            
            self.fyndArticleCode = fyndArticleCode
            
            self.fyndItemCode = fyndItemCode
            
            self.fyndMeta = fyndMeta
            
            self.identifier = identifier
            
            self.isActive = isActive
            
            self.isSet = isSet
            
            self.itemId = itemId
            
            self.manufacturer = manufacturer
            
            self.meta = meta
            
            self.modifiedBy = modifiedBy
            
            self.price = price
            
            self.quantities = quantities
            
            self.rawMeta = rawMeta
            
            self.returnConfig = returnConfig
            
            self.sellerIdentifier = sellerIdentifier
            
            self.set = set
            
            self.size = size
            
            self.stage = stage
            
            self.store = store
            
            self.tags = tags
            
            self.taxIdentifier = taxIdentifier
            
            self.totalQuantity = totalQuantity
            
            self.traceId = traceId
            
            self.trackInventory = trackInventory
            
            self.trader = trader
            
            self.uid = uid
            
            self.weight = weight
            
            self.dateMeta = dateMeta
            
            self.platforms = platforms
            
            self.priceMarked = priceMarked
            
            self.priceEffective = priceEffective
            
            self.currency = currency
            
            self.priceSelling = priceSelling
            
            self.discountMeta = discountMeta
            
            self.discountApplied = discountApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addedOnStore = try container.decode(String.self, forKey: .addedOnStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brand = try container.decode(BrandMeta.self, forKey: .brand)
                
            
            
            
                company = try container.decode(CompanyMeta.self, forKey: .company)
                
            
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    createdBy = try container.decode(RequestUserSchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dimension = try container.decode(DimensionResponseSchema.self, forKey: .dimension)
                
            
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fragile = try container.decode(Bool.self, forKey: .fragile)
                
            
            
            
                fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
                
            
            
            
                fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
                
            
            
            
                do {
                    fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                manufacturer = try container.decode(ManufacturerResponseSchema.self, forKey: .manufacturer)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(RequestUserSchema.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                price = try container.decode(PriceMeta.self, forKey: .price)
                
            
            
            
                do {
                    quantities = try container.decode(Quantities.self, forKey: .quantities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(InventoryReturnConfig.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                do {
                    set = try container.decode(InventorySet.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                store = try container.decode(StoreMeta.self, forKey: .store)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trader = try container.decode([Trader].self, forKey: .trader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                weight = try container.decode(WeightResponseSchema.self, forKey: .weight)
                
            
            
            
                do {
                    dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String: Any].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceSelling = try container.decode(Double.self, forKey: .priceSelling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountMeta = try container.decode([String: Any].self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountApplied = try container.decode([String: Any].self, forKey: .discountApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            
            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
            
            
            
            
            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
            
            
            
            
            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(priceSelling, forKey: .priceSelling)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(discountApplied, forKey: .discountApplied)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationInventorySellerResponseSchema
        Used By: Catalog
    */

    class ApplicationInventorySellerResponseSchema: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var addedOnStore: String?
        
        public var brand: BrandMeta
        
        public var company: CompanyMeta
        
        public var countryOfOrigin: String
        
        public var createdBy: RequestUserSchema?
        
        public var dimension: DimensionResponseSchema
        
        public var expirationDate: String?
        
        public var fragile: Bool
        
        public var fyndArticleCode: String
        
        public var fyndItemCode: String
        
        public var fyndMeta: [String: Any]?
        
        public var identifier: [String: Any]
        
        public var isActive: Bool?
        
        public var isSet: Bool?
        
        public var itemId: Int
        
        public var manufacturer: ManufacturerResponseSchema
        
        public var meta: [String: Any]?
        
        public var modifiedBy: RequestUserSchema?
        
        public var price: PriceMeta
        
        public var quantities: Quantities?
        
        public var rawMeta: [String: Any]?
        
        public var returnConfig: InventoryReturnConfig?
        
        public var sellerIdentifier: String
        
        public var set: InventorySet?
        
        public var size: String
        
        public var stage: String?
        
        public var store: StoreMeta
        
        public var tags: [String]?
        
        public var taxIdentifier: TaxIdentifier?
        
        public var totalQuantity: Int
        
        public var traceId: String?
        
        public var trackInventory: Bool?
        
        public var trader: [Trader]?
        
        public var uid: String
        
        public var weight: WeightResponseSchema
        
        public var dateMeta: DateMeta?
        
        public var platforms: [String: Any]?
        
        public var priceMarked: Double?
        
        public var priceEffective: Double?
        
        public var currency: String?
        
        public var priceSelling: Double?
        
        public var discountMeta: [String: Any]?
        
        public var discountApplied: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customJson = "_custom_json"
            
            case addedOnStore = "added_on_store"
            
            case brand = "brand"
            
            case company = "company"
            
            case countryOfOrigin = "country_of_origin"
            
            case createdBy = "created_by"
            
            case dimension = "dimension"
            
            case expirationDate = "expiration_date"
            
            case fragile = "fragile"
            
            case fyndArticleCode = "fynd_article_code"
            
            case fyndItemCode = "fynd_item_code"
            
            case fyndMeta = "fynd_meta"
            
            case identifier = "identifier"
            
            case isActive = "is_active"
            
            case isSet = "is_set"
            
            case itemId = "item_id"
            
            case manufacturer = "manufacturer"
            
            case meta = "meta"
            
            case modifiedBy = "modified_by"
            
            case price = "price"
            
            case quantities = "quantities"
            
            case rawMeta = "raw_meta"
            
            case returnConfig = "return_config"
            
            case sellerIdentifier = "seller_identifier"
            
            case set = "set"
            
            case size = "size"
            
            case stage = "stage"
            
            case store = "store"
            
            case tags = "tags"
            
            case taxIdentifier = "tax_identifier"
            
            case totalQuantity = "total_quantity"
            
            case traceId = "trace_id"
            
            case trackInventory = "track_inventory"
            
            case trader = "trader"
            
            case uid = "uid"
            
            case weight = "weight"
            
            case dateMeta = "date_meta"
            
            case platforms = "platforms"
            
            case priceMarked = "price_marked"
            
            case priceEffective = "price_effective"
            
            case currency = "currency"
            
            case priceSelling = "price_selling"
            
            case discountMeta = "discount_meta"
            
            case discountApplied = "discount_applied"
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: RequestUserSchema? = nil, currency: String? = nil, dateMeta: DateMeta? = nil, dimension: DimensionResponseSchema, discountApplied: [String: Any]? = nil, discountMeta: [String: Any]? = nil, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponseSchema, meta: [String: Any]? = nil, modifiedBy: RequestUserSchema? = nil, platforms: [String: Any]? = nil, price: PriceMeta, priceEffective: Double? = nil, priceMarked: Double? = nil, priceSelling: Double? = nil, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: InventoryReturnConfig? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: TaxIdentifier? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader]? = nil, uid: String, weight: WeightResponseSchema, customJson: [String: Any]? = nil) {
            
            self.customJson = customJson
            
            self.addedOnStore = addedOnStore
            
            self.brand = brand
            
            self.company = company
            
            self.countryOfOrigin = countryOfOrigin
            
            self.createdBy = createdBy
            
            self.dimension = dimension
            
            self.expirationDate = expirationDate
            
            self.fragile = fragile
            
            self.fyndArticleCode = fyndArticleCode
            
            self.fyndItemCode = fyndItemCode
            
            self.fyndMeta = fyndMeta
            
            self.identifier = identifier
            
            self.isActive = isActive
            
            self.isSet = isSet
            
            self.itemId = itemId
            
            self.manufacturer = manufacturer
            
            self.meta = meta
            
            self.modifiedBy = modifiedBy
            
            self.price = price
            
            self.quantities = quantities
            
            self.rawMeta = rawMeta
            
            self.returnConfig = returnConfig
            
            self.sellerIdentifier = sellerIdentifier
            
            self.set = set
            
            self.size = size
            
            self.stage = stage
            
            self.store = store
            
            self.tags = tags
            
            self.taxIdentifier = taxIdentifier
            
            self.totalQuantity = totalQuantity
            
            self.traceId = traceId
            
            self.trackInventory = trackInventory
            
            self.trader = trader
            
            self.uid = uid
            
            self.weight = weight
            
            self.dateMeta = dateMeta
            
            self.platforms = platforms
            
            self.priceMarked = priceMarked
            
            self.priceEffective = priceEffective
            
            self.currency = currency
            
            self.priceSelling = priceSelling
            
            self.discountMeta = discountMeta
            
            self.discountApplied = discountApplied
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addedOnStore = try container.decode(String.self, forKey: .addedOnStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brand = try container.decode(BrandMeta.self, forKey: .brand)
                
            
            
            
                company = try container.decode(CompanyMeta.self, forKey: .company)
                
            
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    createdBy = try container.decode(RequestUserSchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dimension = try container.decode(DimensionResponseSchema.self, forKey: .dimension)
                
            
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fragile = try container.decode(Bool.self, forKey: .fragile)
                
            
            
            
                fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
                
            
            
            
                fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
                
            
            
            
                do {
                    fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                manufacturer = try container.decode(ManufacturerResponseSchema.self, forKey: .manufacturer)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(RequestUserSchema.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                price = try container.decode(PriceMeta.self, forKey: .price)
                
            
            
            
                do {
                    quantities = try container.decode(Quantities.self, forKey: .quantities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnConfig = try container.decode(InventoryReturnConfig.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                do {
                    set = try container.decode(InventorySet.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                store = try container.decode(StoreMeta.self, forKey: .store)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    taxIdentifier = try container.decode(TaxIdentifier.self, forKey: .taxIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trader = try container.decode([Trader].self, forKey: .trader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                weight = try container.decode(WeightResponseSchema.self, forKey: .weight)
                
            
            
            
                do {
                    dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String: Any].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceSelling = try container.decode(Double.self, forKey: .priceSelling)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountMeta = try container.decode([String: Any].self, forKey: .discountMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountApplied = try container.decode([String: Any].self, forKey: .discountApplied)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            
            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
            
            
            
            
            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
            
            
            
            
            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(priceSelling, forKey: .priceSelling)
            
            
            
            
            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
            
            
            
            
            try? container.encodeIfPresent(discountApplied, forKey: .discountApplied)
            
            
        }
        
    }
}


