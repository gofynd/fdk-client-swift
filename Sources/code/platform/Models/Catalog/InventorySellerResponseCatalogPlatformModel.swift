

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventorySellerResponse
        Used By: Catalog
    */

    class InventorySellerResponse: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var addedOnStore: String?
        
        public var brand: BrandMeta
        
        public var company: CompanyMeta
        
        public var countryOfOrigin: String
        
        public var createdBy: UserSerializer1?
        
        public var dimension: DimensionResponse
        
        public var expirationDate: String?
        
        public var fragile: Bool
        
        public var fyndArticleCode: String
        
        public var fyndItemCode: String
        
        public var fyndMeta: [String: Any]?
        
        public var identifier: [String: Any]
        
        public var isActive: Bool?
        
        public var isSet: Bool?
        
        public var itemId: Int
        
        public var manufacturer: ManufacturerResponse
        
        public var meta: [String: Any]?
        
        public var modifiedBy: UserSerializer1?
        
        public var price: PriceMeta
        
        public var quantities: Quantities?
        
        public var rawMeta: [String: Any]?
        
        public var returnConfig: ReturnConfig1?
        
        public var sellerIdentifier: String
        
        public var set: InventorySet?
        
        public var size: String
        
        public var stage: String?
        
        public var store: StoreMeta
        
        public var tags: [String]?
        
        public var taxIdentifier: [String: Any]?
        
        public var totalQuantity: Int
        
        public var traceId: String?
        
        public var trackInventory: Bool?
        
        public var trader: [Trader1]?
        
        public var uid: String
        
        public var weight: WeightResponse
        

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
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer1? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer1? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            
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
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
                
            
            
            
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
                
            
            
            
                manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
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
                    returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)
                
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
                    taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)
                
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
                    trader = try container.decode([Trader1].self, forKey: .trader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                weight = try container.decode(WeightResponse.self, forKey: .weight)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
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
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encode(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventorySellerResponse
        Used By: Catalog
    */

    class InventorySellerResponse: Codable {
        
        
        public var customJson: [String: Any]?
        
        public var addedOnStore: String?
        
        public var brand: BrandMeta
        
        public var company: CompanyMeta
        
        public var countryOfOrigin: String
        
        public var createdBy: UserSerializer1?
        
        public var dimension: DimensionResponse
        
        public var expirationDate: String?
        
        public var fragile: Bool
        
        public var fyndArticleCode: String
        
        public var fyndItemCode: String
        
        public var fyndMeta: [String: Any]?
        
        public var identifier: [String: Any]
        
        public var isActive: Bool?
        
        public var isSet: Bool?
        
        public var itemId: Int
        
        public var manufacturer: ManufacturerResponse
        
        public var meta: [String: Any]?
        
        public var modifiedBy: UserSerializer1?
        
        public var price: PriceMeta
        
        public var quantities: Quantities?
        
        public var rawMeta: [String: Any]?
        
        public var returnConfig: ReturnConfig1?
        
        public var sellerIdentifier: String
        
        public var set: InventorySet?
        
        public var size: String
        
        public var stage: String?
        
        public var store: StoreMeta
        
        public var tags: [String]?
        
        public var taxIdentifier: [String: Any]?
        
        public var totalQuantity: Int
        
        public var traceId: String?
        
        public var trackInventory: Bool?
        
        public var trader: [Trader1]?
        
        public var uid: String
        
        public var weight: WeightResponse
        

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
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer1? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer1? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig1? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader1]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            
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
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
                
            
            
            
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
                
            
            
            
                manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
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
                    returnConfig = try container.decode(ReturnConfig1.self, forKey: .returnConfig)
                
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
                    taxIdentifier = try container.decode([String: Any].self, forKey: .taxIdentifier)
                
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
                    trader = try container.decode([Trader1].self, forKey: .trader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                weight = try container.decode(WeightResponse.self, forKey: .weight)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
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
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encode(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
        }
        
    }
}


