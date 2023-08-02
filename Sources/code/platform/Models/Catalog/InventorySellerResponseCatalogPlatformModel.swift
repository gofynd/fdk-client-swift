

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventorySellerResponse
        Used By: Catalog
    */

    class InventorySellerResponse: Codable {
        
        
        public var traceId: String?
        
        public var itemId: Int
        
        public var company: CompanyMeta
        
        public var taxIdentifier: [String: Any]?
        
        public var store: StoreMeta
        
        public var price: PriceMeta
        
        public var fyndArticleCode: String
        
        public var uid: String
        
        public var expirationDate: String?
        
        public var weight: WeightResponse
        
        public var countryOfOrigin: String
        
        public var trackInventory: Bool?
        
        public var modifiedBy: UserSerializer?
        
        public var brand: BrandMeta
        
        public var rawMeta: [String: Any]?
        
        public var manufacturer: ManufacturerResponse
        
        public var returnConfig: ReturnConfig1?
        
        public var size: String
        
        public var isActive: Bool?
        
        public var stage: String?
        
        public var customJson: [String: Any]?
        
        public var fragile: Bool
        
        public var dimension: DimensionResponse
        
        public var addedOnStore: String?
        
        public var identifier: [String: Any]
        
        public var fyndMeta: [String: Any]?
        
        public var trader: [Trader1]?
        
        public var isSet: Bool?
        
        public var quantities: Quantities?
        
        public var tags: [String]?
        
        public var totalQuantity: Int
        
        public var set: InventorySet?
        
        public var meta: [String: Any]?
        
        public var createdBy: UserSerializer?
        
        public var fyndItemCode: String
        
        public var sellerIdentifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case traceId = "trace_id"
            
            case itemId = "item_id"
            
            case company = "company"
            
            case taxIdentifier = "tax_identifier"
            
            case store = "store"
            
            case price = "price"
            
            case fyndArticleCode = "fynd_article_code"
            
            case uid = "uid"
            
            case expirationDate = "expiration_date"
            
            case weight = "weight"
            
            case countryOfOrigin = "country_of_origin"
            
            case trackInventory = "track_inventory"
            
            case modifiedBy = "modified_by"
            
            case brand = "brand"
            
            case rawMeta = "raw_meta"
            
            case manufacturer = "manufacturer"
            
            case returnConfig = "return_config"
            
            case size = "size"
            
            case isActive = "is_active"
            
            case stage = "stage"
            
            case customJson = "_custom_json"
            
            case fragile = "fragile"
            
            case dimension = "dimension"
            
            case addedOnStore = "added_on_store"
            
            case identifier = "identifier"
            
            case fyndMeta = "fynd_meta"
            
            case trader = "trader"
            
            case isSet = "is_set"
            
            case quantities = "quantities"
            
            case tags = "tags"
            
            case totalQuantity = "total_quantity"
            
            case set = "set"
            
            case meta = "meta"
            
            case createdBy = "created_by"
            
            case fyndItemCode = "fynd_item_code"
            
            case sellerIdentifier = "seller_identifier"
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            
            self.traceId = traceId
            
            self.itemId = itemId
            
            self.company = company
            
            self.taxIdentifier = taxIdentifier
            
            self.store = store
            
            self.price = price
            
            self.fyndArticleCode = fyndArticleCode
            
            self.uid = uid
            
            self.expirationDate = expirationDate
            
            self.weight = weight
            
            self.countryOfOrigin = countryOfOrigin
            
            self.trackInventory = trackInventory
            
            self.modifiedBy = modifiedBy
            
            self.brand = brand
            
            self.rawMeta = rawMeta
            
            self.manufacturer = manufacturer
            
            self.returnConfig = returnConfig
            
            self.size = size
            
            self.isActive = isActive
            
            self.stage = stage
            
            self.customJson = customJson
            
            self.fragile = fragile
            
            self.dimension = dimension
            
            self.addedOnStore = addedOnStore
            
            self.identifier = identifier
            
            self.fyndMeta = fyndMeta
            
            self.trader = trader
            
            self.isSet = isSet
            
            self.quantities = quantities
            
            self.tags = tags
            
            self.totalQuantity = totalQuantity
            
            self.set = set
            
            self.meta = meta
            
            self.createdBy = createdBy
            
            self.fyndItemCode = fyndItemCode
            
            self.sellerIdentifier = sellerIdentifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                company = try container.decode(CompanyMeta.self, forKey: .company)
                
            
            
            
                do {
                    taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                store = try container.decode(StoreMeta.self, forKey: .store)
                
            
            
            
                price = try container.decode(PriceMeta.self, forKey: .price)
                
            
            
            
                fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weight = try container.decode(WeightResponse.self, forKey: .weight)
                
            
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brand = try container.decode(BrandMeta.self, forKey: .brand)
                
            
            
            
                do {
                    rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
                
            
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fragile = try container.decode(Bool.self, forKey: .fragile)
                
            
            
            
                dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
                
            
            
            
                do {
                    addedOnStore = try container.decode(String.self, forKey: .addedOnStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                do {
                    fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trader = try container.decode([Trader1].self, forKey: .trader)
                
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
                
            
            
                do {
                    quantities = try container.decode(Quantities.self, forKey: .quantities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
            
                do {
                    set = try container.decode(InventorySet.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
            
            
            
            
            try? container.encode(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventorySellerResponse
        Used By: Catalog
    */

    class InventorySellerResponse: Codable {
        
        
        public var traceId: String?
        
        public var itemId: Int
        
        public var company: CompanyMeta
        
        public var taxIdentifier: [String: Any]?
        
        public var store: StoreMeta
        
        public var price: PriceMeta
        
        public var fyndArticleCode: String
        
        public var uid: String
        
        public var expirationDate: String?
        
        public var weight: WeightResponse
        
        public var countryOfOrigin: String
        
        public var trackInventory: Bool?
        
        public var modifiedBy: UserSerializer?
        
        public var brand: BrandMeta
        
        public var rawMeta: [String: Any]?
        
        public var manufacturer: ManufacturerResponse
        
        public var returnConfig: ReturnConfig1?
        
        public var size: String
        
        public var isActive: Bool?
        
        public var stage: String?
        
        public var customJson: [String: Any]?
        
        public var fragile: Bool
        
        public var dimension: DimensionResponse
        
        public var addedOnStore: String?
        
        public var identifier: [String: Any]
        
        public var fyndMeta: [String: Any]?
        
        public var trader: [Trader1]?
        
        public var isSet: Bool?
        
        public var quantities: Quantities?
        
        public var tags: [String]?
        
        public var totalQuantity: Int
        
        public var set: InventorySet?
        
        public var meta: [String: Any]?
        
        public var createdBy: UserSerializer?
        
        public var fyndItemCode: String
        
        public var sellerIdentifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case traceId = "trace_id"
            
            case itemId = "item_id"
            
            case company = "company"
            
            case taxIdentifier = "tax_identifier"
            
            case store = "store"
            
            case price = "price"
            
            case fyndArticleCode = "fynd_article_code"
            
            case uid = "uid"
            
            case expirationDate = "expiration_date"
            
            case weight = "weight"
            
            case countryOfOrigin = "country_of_origin"
            
            case trackInventory = "track_inventory"
            
            case modifiedBy = "modified_by"
            
            case brand = "brand"
            
            case rawMeta = "raw_meta"
            
            case manufacturer = "manufacturer"
            
            case returnConfig = "return_config"
            
            case size = "size"
            
            case isActive = "is_active"
            
            case stage = "stage"
            
            case customJson = "_custom_json"
            
            case fragile = "fragile"
            
            case dimension = "dimension"
            
            case addedOnStore = "added_on_store"
            
            case identifier = "identifier"
            
            case fyndMeta = "fynd_meta"
            
            case trader = "trader"
            
            case isSet = "is_set"
            
            case quantities = "quantities"
            
            case tags = "tags"
            
            case totalQuantity = "total_quantity"
            
            case set = "set"
            
            case meta = "meta"
            
            case createdBy = "created_by"
            
            case fyndItemCode = "fynd_item_code"
            
            case sellerIdentifier = "seller_identifier"
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            
            self.traceId = traceId
            
            self.itemId = itemId
            
            self.company = company
            
            self.taxIdentifier = taxIdentifier
            
            self.store = store
            
            self.price = price
            
            self.fyndArticleCode = fyndArticleCode
            
            self.uid = uid
            
            self.expirationDate = expirationDate
            
            self.weight = weight
            
            self.countryOfOrigin = countryOfOrigin
            
            self.trackInventory = trackInventory
            
            self.modifiedBy = modifiedBy
            
            self.brand = brand
            
            self.rawMeta = rawMeta
            
            self.manufacturer = manufacturer
            
            self.returnConfig = returnConfig
            
            self.size = size
            
            self.isActive = isActive
            
            self.stage = stage
            
            self.customJson = customJson
            
            self.fragile = fragile
            
            self.dimension = dimension
            
            self.addedOnStore = addedOnStore
            
            self.identifier = identifier
            
            self.fyndMeta = fyndMeta
            
            self.trader = trader
            
            self.isSet = isSet
            
            self.quantities = quantities
            
            self.tags = tags
            
            self.totalQuantity = totalQuantity
            
            self.set = set
            
            self.meta = meta
            
            self.createdBy = createdBy
            
            self.fyndItemCode = fyndItemCode
            
            self.sellerIdentifier = sellerIdentifier
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                company = try container.decode(CompanyMeta.self, forKey: .company)
                
            
            
            
                do {
                    taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                store = try container.decode(StoreMeta.self, forKey: .store)
                
            
            
            
                price = try container.decode(PriceMeta.self, forKey: .price)
                
            
            
            
                fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                weight = try container.decode(WeightResponse.self, forKey: .weight)
                
            
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brand = try container.decode(BrandMeta.self, forKey: .brand)
                
            
            
            
                do {
                    rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
                
            
            
            
                do {
                    returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fragile = try container.decode(Bool.self, forKey: .fragile)
                
            
            
            
                dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
                
            
            
            
                do {
                    addedOnStore = try container.decode(String.self, forKey: .addedOnStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                do {
                    fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trader = try container.decode([Trader1].self, forKey: .trader)
                
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
                
            
            
                do {
                    quantities = try container.decode(Quantities.self, forKey: .quantities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
            
                do {
                    set = try container.decode(InventorySet.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
            
            
            
            
            try? container.encode(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
        }
        
    }
}


