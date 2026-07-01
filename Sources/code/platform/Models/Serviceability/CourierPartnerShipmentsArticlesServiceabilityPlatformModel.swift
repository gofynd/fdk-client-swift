

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerShipmentsArticles
        Used By: Serviceability
    */

    class CourierPartnerShipmentsArticles: Codable {
        
        
        public var id: String?
        
        public var deliverySlots: [String: Any]?
        
        public var error: Error?
        
        public var fulfillmentId: Int?
        
        public var fulfillmentTags: [String]?
        
        public var fulfillmentType: String?
        
        public var groupId: String?
        
        public var isGift: Bool?
        
        public var isMto: Bool?
        
        public var isSet: Bool?
        
        public var manufacturingTime: Int?
        
        public var manufacturingTimeUnit: String?
        
        public var mtoQuantity: Int?
        
        public var sla: String?
        
        public var priceMarked: Double?
        
        public var promise: CourierPartnerArticlesPromise?
        
        public var set: [String: Any]?
        
        public var returnReason: CourierPartnerArticlesReturnReasons?
        
        public var setQuantity: Int?
        
        public var quantity: Int
        
        public var weight: ArticleWeight
        
        public var attributes: ArticleAttributes?
        
        public var categoryId: Int
        
        public var dimension: ArticleDimension
        
        public var brandId: Int
        
        public var itemId: Int
        
        public var size: String
        
        public var tags: [String]
        
        public var departmentId: Int
        
        public var price: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case deliverySlots = "delivery_slots"
            
            case error = "error"
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fulfillmentType = "fulfillment_type"
            
            case groupId = "group_id"
            
            case isGift = "is_gift"
            
            case isMto = "is_mto"
            
            case isSet = "is_set"
            
            case manufacturingTime = "manufacturing_time"
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case mtoQuantity = "mto_quantity"
            
            case sla = "sla"
            
            case priceMarked = "price_marked"
            
            case promise = "promise"
            
            case set = "set"
            
            case returnReason = "return_reason"
            
            case setQuantity = "set_quantity"
            
            case quantity = "quantity"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case categoryId = "category_id"
            
            case dimension = "dimension"
            
            case brandId = "brand_id"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case tags = "tags"
            
            case departmentId = "department_id"
            
            case price = "price"
            
        }

        public init(attributes: ArticleAttributes? = nil, brandId: Int, categoryId: Int, deliverySlots: [String: Any]? = nil, departmentId: Int, dimension: ArticleDimension, error: Error? = nil, fulfillmentId: Int? = nil, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil, groupId: String? = nil, id: String? = nil, isGift: Bool? = nil, isMto: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, mtoQuantity: Int? = nil, price: Double, priceMarked: Double? = nil, promise: CourierPartnerArticlesPromise? = nil, quantity: Int, returnReason: CourierPartnerArticlesReturnReasons? = nil, set: [String: Any]? = nil, setQuantity: Int? = nil, size: String, sla: String? = nil, tags: [String], weight: ArticleWeight) {
            
            self.id = id
            
            self.deliverySlots = deliverySlots
            
            self.error = error
            
            self.fulfillmentId = fulfillmentId
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fulfillmentType = fulfillmentType
            
            self.groupId = groupId
            
            self.isGift = isGift
            
            self.isMto = isMto
            
            self.isSet = isSet
            
            self.manufacturingTime = manufacturingTime
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.mtoQuantity = mtoQuantity
            
            self.sla = sla
            
            self.priceMarked = priceMarked
            
            self.promise = promise
            
            self.set = set
            
            self.returnReason = returnReason
            
            self.setQuantity = setQuantity
            
            self.quantity = quantity
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.categoryId = categoryId
            
            self.dimension = dimension
            
            self.brandId = brandId
            
            self.itemId = itemId
            
            self.size = size
            
            self.tags = tags
            
            self.departmentId = departmentId
            
            self.price = price
            
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
                    deliverySlots = try container.decode([String: Any].self, forKey: .deliverySlots)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(Error.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
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
                    isGift = try container.decode(Bool.self, forKey: .isGift)
                
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
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
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
                    mtoQuantity = try container.decode(Int.self, forKey: .mtoQuantity)
                
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
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promise = try container.decode(CourierPartnerArticlesPromise.self, forKey: .promise)
                
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
                    returnReason = try container.decode(CourierPartnerArticlesReturnReasons.self, forKey: .returnReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    setQuantity = try container.decode(Int.self, forKey: .setQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                weight = try container.decode(ArticleWeight.self, forKey: .weight)
                
            
            
            
                do {
                    attributes = try container.decode(ArticleAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                categoryId = try container.decode(Int.self, forKey: .categoryId)
                
            
            
            
                dimension = try container.decode(ArticleDimension.self, forKey: .dimension)
                
            
            
            
                brandId = try container.decode(Int.self, forKey: .brandId)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                tags = try container.decode([String].self, forKey: .tags)
                
            
            
            
                departmentId = try container.decode(Int.self, forKey: .departmentId)
                
            
            
            
                price = try container.decode(Double.self, forKey: .price)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(mtoQuantity, forKey: .mtoQuantity)
            
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(returnReason, forKey: .returnReason)
            
            
            
            
            try? container.encodeIfPresent(setQuantity, forKey: .setQuantity)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerShipmentsArticles
        Used By: Serviceability
    */

    class CourierPartnerShipmentsArticles: Codable {
        
        
        public var id: String?
        
        public var deliverySlots: [String: Any]?
        
        public var error: Error?
        
        public var fulfillmentId: Int?
        
        public var fulfillmentTags: [String]?
        
        public var fulfillmentType: String?
        
        public var groupId: String?
        
        public var isGift: Bool?
        
        public var isMto: Bool?
        
        public var isSet: Bool?
        
        public var manufacturingTime: Int?
        
        public var manufacturingTimeUnit: String?
        
        public var mtoQuantity: Int?
        
        public var sla: String?
        
        public var priceMarked: Double?
        
        public var promise: CourierPartnerArticlesPromise?
        
        public var set: [String: Any]?
        
        public var returnReason: CourierPartnerArticlesReturnReasons?
        
        public var setQuantity: Int?
        
        public var quantity: Int
        
        public var weight: ArticleWeight
        
        public var attributes: ArticleAttributes?
        
        public var categoryId: Int
        
        public var dimension: ArticleDimension
        
        public var brandId: Int
        
        public var itemId: Int
        
        public var size: String
        
        public var tags: [String]
        
        public var departmentId: Int
        
        public var price: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case deliverySlots = "delivery_slots"
            
            case error = "error"
            
            case fulfillmentId = "fulfillment_id"
            
            case fulfillmentTags = "fulfillment_tags"
            
            case fulfillmentType = "fulfillment_type"
            
            case groupId = "group_id"
            
            case isGift = "is_gift"
            
            case isMto = "is_mto"
            
            case isSet = "is_set"
            
            case manufacturingTime = "manufacturing_time"
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case mtoQuantity = "mto_quantity"
            
            case sla = "sla"
            
            case priceMarked = "price_marked"
            
            case promise = "promise"
            
            case set = "set"
            
            case returnReason = "return_reason"
            
            case setQuantity = "set_quantity"
            
            case quantity = "quantity"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case categoryId = "category_id"
            
            case dimension = "dimension"
            
            case brandId = "brand_id"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case tags = "tags"
            
            case departmentId = "department_id"
            
            case price = "price"
            
        }

        public init(attributes: ArticleAttributes? = nil, brandId: Int, categoryId: Int, deliverySlots: [String: Any]? = nil, departmentId: Int, dimension: ArticleDimension, error: Error? = nil, fulfillmentId: Int? = nil, fulfillmentTags: [String]? = nil, fulfillmentType: String? = nil, groupId: String? = nil, id: String? = nil, isGift: Bool? = nil, isMto: Bool? = nil, isSet: Bool? = nil, itemId: Int, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, mtoQuantity: Int? = nil, price: Double, priceMarked: Double? = nil, promise: CourierPartnerArticlesPromise? = nil, quantity: Int, returnReason: CourierPartnerArticlesReturnReasons? = nil, set: [String: Any]? = nil, setQuantity: Int? = nil, size: String, sla: String? = nil, tags: [String], weight: ArticleWeight) {
            
            self.id = id
            
            self.deliverySlots = deliverySlots
            
            self.error = error
            
            self.fulfillmentId = fulfillmentId
            
            self.fulfillmentTags = fulfillmentTags
            
            self.fulfillmentType = fulfillmentType
            
            self.groupId = groupId
            
            self.isGift = isGift
            
            self.isMto = isMto
            
            self.isSet = isSet
            
            self.manufacturingTime = manufacturingTime
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.mtoQuantity = mtoQuantity
            
            self.sla = sla
            
            self.priceMarked = priceMarked
            
            self.promise = promise
            
            self.set = set
            
            self.returnReason = returnReason
            
            self.setQuantity = setQuantity
            
            self.quantity = quantity
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.categoryId = categoryId
            
            self.dimension = dimension
            
            self.brandId = brandId
            
            self.itemId = itemId
            
            self.size = size
            
            self.tags = tags
            
            self.departmentId = departmentId
            
            self.price = price
            
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
                    deliverySlots = try container.decode([String: Any].self, forKey: .deliverySlots)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(Error.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentId = try container.decode(Int.self, forKey: .fulfillmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentTags = try container.decode([String].self, forKey: .fulfillmentTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
                
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
                    isGift = try container.decode(Bool.self, forKey: .isGift)
                
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
                    isSet = try container.decode(Bool.self, forKey: .isSet)
                
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
                    mtoQuantity = try container.decode(Int.self, forKey: .mtoQuantity)
                
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
                
            
            
                do {
                    priceMarked = try container.decode(Double.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    promise = try container.decode(CourierPartnerArticlesPromise.self, forKey: .promise)
                
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
                    returnReason = try container.decode(CourierPartnerArticlesReturnReasons.self, forKey: .returnReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    setQuantity = try container.decode(Int.self, forKey: .setQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                weight = try container.decode(ArticleWeight.self, forKey: .weight)
                
            
            
            
                do {
                    attributes = try container.decode(ArticleAttributes.self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                categoryId = try container.decode(Int.self, forKey: .categoryId)
                
            
            
            
                dimension = try container.decode(ArticleDimension.self, forKey: .dimension)
                
            
            
            
                brandId = try container.decode(Int.self, forKey: .brandId)
                
            
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                tags = try container.decode([String].self, forKey: .tags)
                
            
            
            
                departmentId = try container.decode(Int.self, forKey: .departmentId)
                
            
            
            
                price = try container.decode(Double.self, forKey: .price)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentId, forKey: .fulfillmentId)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentTags, forKey: .fulfillmentTags)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            
            try? container.encodeIfPresent(isMto, forKey: .isMto)
            
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(mtoQuantity, forKey: .mtoQuantity)
            
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            
            try? container.encodeIfPresent(returnReason, forKey: .returnReason)
            
            
            
            
            try? container.encodeIfPresent(setQuantity, forKey: .setQuantity)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
        }
        
    }
}


