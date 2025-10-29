

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentsArticle
        Used By: Serviceability
    */

    class ShipmentsArticle: Codable {
        
        
        public var id: String?
        
        public var quantity: Int?
        
        public var itemId: Int?
        
        public var size: String?
        
        public var price: Double?
        
        public var priceMarked: Double?
        
        public var departmentId: Int?
        
        public var weight: Double?
        
        public var attributes: [String: Any]?
        
        public var categoryId: Int?
        
        public var brandId: Int?
        
        public var dimension: ShipmentDimension?
        
        public var tags: [String]?
        
        public var manufacturingTime: Int?
        
        public var manufacturingTimeUnit: String?
        
        public var set: [String: Any]?
        
        public var isSet: Bool?
        
        public var customJson: [String: Any]?
        
        public var returnReason: String?
        
        public var groupId: String?
        
        public var meta: ShipmentsMeta?
        
        public var isMto: Bool?
        
        public var sla: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case quantity = "quantity"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case price = "price"
            
            case priceMarked = "price_marked"
            
            case departmentId = "department_id"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case categoryId = "category_id"
            
            case brandId = "brand_id"
            
            case dimension = "dimension"
            
            case tags = "tags"
            
            case manufacturingTime = "manufacturing_time"
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case set = "set"
            
            case isSet = "is_set"
            
            case customJson = "_custom_json"
            
            case returnReason = "return_reason"
            
            case groupId = "group_id"
            
            case meta = "meta"
            
            case isMto = "is_mto"
            
            case sla = "sla"
            
        }

        public init(attributes: [String: Any]? = nil, brandId: Int? = nil, categoryId: Int? = nil, departmentId: Int? = nil, dimension: ShipmentDimension? = nil, groupId: String? = nil, id: String? = nil, isMto: Bool? = nil, isSet: Bool? = nil, itemId: Int? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, meta: ShipmentsMeta? = nil, price: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, returnReason: String? = nil, set: [String: Any]? = nil, size: String? = nil, sla: String? = nil, tags: [String]? = nil, weight: Double? = nil, customJson: [String: Any]? = nil) {
            
            self.id = id
            
            self.quantity = quantity
            
            self.itemId = itemId
            
            self.size = size
            
            self.price = price
            
            self.priceMarked = priceMarked
            
            self.departmentId = departmentId
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.categoryId = categoryId
            
            self.brandId = brandId
            
            self.dimension = dimension
            
            self.tags = tags
            
            self.manufacturingTime = manufacturingTime
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.set = set
            
            self.isSet = isSet
            
            self.customJson = customJson
            
            self.returnReason = returnReason
            
            self.groupId = groupId
            
            self.meta = meta
            
            self.isMto = isMto
            
            self.sla = sla
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Double.self, forKey: .price)
                
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
                    departmentId = try container.decode(Int.self, forKey: .departmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode(Int.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode(Int.self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(ShipmentDimension.self, forKey: .dimension)
                
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
                
            
            
                do {
                    manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    set = try container.decode([String: Any].self, forKey: .set)
                
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnReason = try container.decode(String.self, forKey: .returnReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(ShipmentsMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isMto = try container.decode(Bool.self, forKey: .isMto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sla = try container.decode(String.self, forKey: .sla)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(returnReason, forKey: .returnReason)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentsArticle
        Used By: Serviceability
    */

    class ShipmentsArticle: Codable {
        
        
        public var id: String?
        
        public var quantity: Int?
        
        public var itemId: Int?
        
        public var size: String?
        
        public var price: Double?
        
        public var priceMarked: Double?
        
        public var departmentId: Int?
        
        public var weight: Double?
        
        public var attributes: [String: Any]?
        
        public var categoryId: Int?
        
        public var brandId: Int?
        
        public var dimension: ShipmentDimension?
        
        public var tags: [String]?
        
        public var manufacturingTime: Int?
        
        public var manufacturingTimeUnit: String?
        
        public var set: [String: Any]?
        
        public var isSet: Bool?
        
        public var customJson: [String: Any]?
        
        public var returnReason: String?
        
        public var groupId: String?
        
        public var meta: ShipmentsMeta?
        
        public var isMto: Bool?
        
        public var sla: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case quantity = "quantity"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case price = "price"
            
            case priceMarked = "price_marked"
            
            case departmentId = "department_id"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case categoryId = "category_id"
            
            case brandId = "brand_id"
            
            case dimension = "dimension"
            
            case tags = "tags"
            
            case manufacturingTime = "manufacturing_time"
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case set = "set"
            
            case isSet = "is_set"
            
            case customJson = "_custom_json"
            
            case returnReason = "return_reason"
            
            case groupId = "group_id"
            
            case meta = "meta"
            
            case isMto = "is_mto"
            
            case sla = "sla"
            
        }

        public init(attributes: [String: Any]? = nil, brandId: Int? = nil, categoryId: Int? = nil, departmentId: Int? = nil, dimension: ShipmentDimension? = nil, groupId: String? = nil, id: String? = nil, isMto: Bool? = nil, isSet: Bool? = nil, itemId: Int? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, meta: ShipmentsMeta? = nil, price: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, returnReason: String? = nil, set: [String: Any]? = nil, size: String? = nil, sla: String? = nil, tags: [String]? = nil, weight: Double? = nil, customJson: [String: Any]? = nil) {
            
            self.id = id
            
            self.quantity = quantity
            
            self.itemId = itemId
            
            self.size = size
            
            self.price = price
            
            self.priceMarked = priceMarked
            
            self.departmentId = departmentId
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.categoryId = categoryId
            
            self.brandId = brandId
            
            self.dimension = dimension
            
            self.tags = tags
            
            self.manufacturingTime = manufacturingTime
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.set = set
            
            self.isSet = isSet
            
            self.customJson = customJson
            
            self.returnReason = returnReason
            
            self.groupId = groupId
            
            self.meta = meta
            
            self.isMto = isMto
            
            self.sla = sla
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    price = try container.decode(Double.self, forKey: .price)
                
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
                    departmentId = try container.decode(Int.self, forKey: .departmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(Double.self, forKey: .weight)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryId = try container.decode(Int.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode(Int.self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dimension = try container.decode(ShipmentDimension.self, forKey: .dimension)
                
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
                
            
            
                do {
                    manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    set = try container.decode([String: Any].self, forKey: .set)
                
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    returnReason = try container.decode(String.self, forKey: .returnReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(ShipmentsMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isMto = try container.decode(Bool.self, forKey: .isMto)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sla = try container.decode(String.self, forKey: .sla)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(returnReason, forKey: .returnReason)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
        }
        
    }
}


