

import Foundation
public extension PlatformClient {
    /*
        Model: InventorySellerResponse
        Used By: Catalog
    */

    class InventorySellerResponse: Codable {
        
        
        public var size: String
        
        public var manufacturer: ManufacturerResponse
        
        public var company: CompanyMeta
        
        public var meta: [String: Any]?
        
        public var countryOfOrigin: String
        
        public var customJson: [String: Any]?
        
        public var fyndMeta: [String: Any]?
        
        public var stage: String?
        
        public var returnConfig: ReturnConfig2?
        
        public var rawMeta: [String: Any]?
        
        public var uid: String
        
        public var price: PriceMeta
        
        public var trader: [Trader2]?
        
        public var isSet: Bool?
        
        public var itemId: Int
        
        public var createdBy: UserSerializer?
        
        public var brand: BrandMeta
        
        public var fragile: Bool
        
        public var trackInventory: Bool?
        
        public var taxIdentifier: [String: Any]?
        
        public var modifiedBy: UserSerializer?
        
        public var addedOnStore: String?
        
        public var expirationDate: String?
        
        public var isActive: Bool?
        
        public var fyndItemCode: String
        
        public var weight: WeightResponse
        
        public var identifier: [String: Any]
        
        public var fyndArticleCode: String
        
        public var tags: [String]?
        
        public var traceId: String?
        
        public var store: StoreMeta
        
        public var set: InventorySet?
        
        public var totalQuantity: Int
        
        public var sellerIdentifier: String
        
        public var dimension: DimensionResponse
        
        public var quantities: Quantities?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case manufacturer = "manufacturer"
            
            case company = "company"
            
            case meta = "meta"
            
            case countryOfOrigin = "country_of_origin"
            
            case customJson = "_custom_json"
            
            case fyndMeta = "fynd_meta"
            
            case stage = "stage"
            
            case returnConfig = "return_config"
            
            case rawMeta = "raw_meta"
            
            case uid = "uid"
            
            case price = "price"
            
            case trader = "trader"
            
            case isSet = "is_set"
            
            case itemId = "item_id"
            
            case createdBy = "created_by"
            
            case brand = "brand"
            
            case fragile = "fragile"
            
            case trackInventory = "track_inventory"
            
            case taxIdentifier = "tax_identifier"
            
            case modifiedBy = "modified_by"
            
            case addedOnStore = "added_on_store"
            
            case expirationDate = "expiration_date"
            
            case isActive = "is_active"
            
            case fyndItemCode = "fynd_item_code"
            
            case weight = "weight"
            
            case identifier = "identifier"
            
            case fyndArticleCode = "fynd_article_code"
            
            case tags = "tags"
            
            case traceId = "trace_id"
            
            case store = "store"
            
            case set = "set"
            
            case totalQuantity = "total_quantity"
            
            case sellerIdentifier = "seller_identifier"
            
            case dimension = "dimension"
            
            case quantities = "quantities"
            
        }

        public init(addedOnStore: String? = nil, brand: BrandMeta, company: CompanyMeta, countryOfOrigin: String, createdBy: UserSerializer? = nil, dimension: DimensionResponse, expirationDate: String? = nil, fragile: Bool, fyndArticleCode: String, fyndItemCode: String, fyndMeta: [String: Any]? = nil, identifier: [String: Any], isActive: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturer: ManufacturerResponse, meta: [String: Any]? = nil, modifiedBy: UserSerializer? = nil, price: PriceMeta, quantities: Quantities? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig2? = nil, sellerIdentifier: String, set: InventorySet? = nil, size: String, stage: String? = nil, store: StoreMeta, tags: [String]? = nil, taxIdentifier: [String: Any]? = nil, totalQuantity: Int, traceId: String? = nil, trackInventory: Bool? = nil, trader: [Trader2]? = nil, uid: String, weight: WeightResponse, customJson: [String: Any]? = nil) {
            
            self.size = size
            
            self.manufacturer = manufacturer
            
            self.company = company
            
            self.meta = meta
            
            self.countryOfOrigin = countryOfOrigin
            
            self.customJson = customJson
            
            self.fyndMeta = fyndMeta
            
            self.stage = stage
            
            self.returnConfig = returnConfig
            
            self.rawMeta = rawMeta
            
            self.uid = uid
            
            self.price = price
            
            self.trader = trader
            
            self.isSet = isSet
            
            self.itemId = itemId
            
            self.createdBy = createdBy
            
            self.brand = brand
            
            self.fragile = fragile
            
            self.trackInventory = trackInventory
            
            self.taxIdentifier = taxIdentifier
            
            self.modifiedBy = modifiedBy
            
            self.addedOnStore = addedOnStore
            
            self.expirationDate = expirationDate
            
            self.isActive = isActive
            
            self.fyndItemCode = fyndItemCode
            
            self.weight = weight
            
            self.identifier = identifier
            
            self.fyndArticleCode = fyndArticleCode
            
            self.tags = tags
            
            self.traceId = traceId
            
            self.store = store
            
            self.set = set
            
            self.totalQuantity = totalQuantity
            
            self.sellerIdentifier = sellerIdentifier
            
            self.dimension = dimension
            
            self.quantities = quantities
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                manufacturer = try container.decode(ManufacturerResponse.self, forKey: .manufacturer)
                
            
            
            
                company = try container.decode(CompanyMeta.self, forKey: .company)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryOfOrigin = try container.decode(String.self, forKey: .countryOfOrigin)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndMeta = try container.decode([String: Any].self, forKey: .fyndMeta)
                
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
                    returnConfig = try container.decode(ReturnConfig2.self, forKey: .returnConfig)
                
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
                
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                price = try container.decode(PriceMeta.self, forKey: .price)
                
            
            
            
                do {
                    trader = try container.decode([Trader2].self, forKey: .trader)
                
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
                
            
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                brand = try container.decode(BrandMeta.self, forKey: .brand)
                
            
            
            
                fragile = try container.decode(Bool.self, forKey: .fragile)
                
            
            
            
                do {
                    trackInventory = try container.decode(Bool.self, forKey: .trackInventory)
                
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
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
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
                
            
            
                do {
                    expirationDate = try container.decode(String.self, forKey: .expirationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                fyndItemCode = try container.decode(String.self, forKey: .fyndItemCode)
                
            
            
            
                weight = try container.decode(WeightResponse.self, forKey: .weight)
                
            
            
            
                identifier = try container.decode([String: Any].self, forKey: .identifier)
                
            
            
            
                fyndArticleCode = try container.decode(String.self, forKey: .fyndArticleCode)
                
            
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    traceId = try container.decode(String.self, forKey: .traceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                store = try container.decode(StoreMeta.self, forKey: .store)
                
            
            
            
                do {
                    set = try container.decode(InventorySet.self, forKey: .set)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
                
            
            
            
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
            
            
            
                dimension = try container.decode(DimensionResponse.self, forKey: .dimension)
                
            
            
            
                do {
                    quantities = try container.decode(Quantities.self, forKey: .quantities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(manufacturer, forKey: .manufacturer)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(countryOfOrigin, forKey: .countryOfOrigin)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(fyndMeta, forKey: .fyndMeta)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            
            try? container.encodeIfPresent(rawMeta, forKey: .rawMeta)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encode(trader, forKey: .trader)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encode(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(fragile, forKey: .fragile)
            
            
            
            
            try? container.encodeIfPresent(trackInventory, forKey: .trackInventory)
            
            
            
            
            try? container.encodeIfPresent(taxIdentifier, forKey: .taxIdentifier)
            
            
            
            
            try? container.encode(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)
            
            
            
            
            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(fyndItemCode, forKey: .fyndItemCode)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(fyndArticleCode, forKey: .fyndArticleCode)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(traceId, forKey: .traceId)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(quantities, forKey: .quantities)
            
            
        }
        
    }
}
