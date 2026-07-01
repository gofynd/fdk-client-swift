

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentsArticles
        Used By: Logistic
    */
    class ShipmentsArticles: Codable {
        
        public var id: String?
        
        public var itemId: Int?
        
        public var sla: String?
        
        public var tags: [String]?
        
        public var size: String?
        
        public var groupId: String?
        
        public var weight: ArticleWeight?
        
        public var attributes: ArticleAttributes?
        
        public var categoryId: Int?
        
        public var departmentId: Int?
        
        public var dimension: ArticleDimension?
        
        public var price: Double?
        
        public var brandId: Int?
        
        public var quantity: Int?
        
        public var manufacturingTime: Int?
        
        public var manufacturingTimeUnit: String?
        
        public var mtoQuantity: Int?
        
        public var isGift: Bool?
        
        public var isSet: Bool?
        
        public var set: ArticleSet?
        
        public var setQuantity: Int?
        
        public var deliverySlots: ArticleDeliverySlots?
        
        public var returnReason: ArticleReturnReason?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case itemId = "item_id"
            
            case sla = "sla"
            
            case tags = "tags"
            
            case size = "size"
            
            case groupId = "group_id"
            
            case weight = "weight"
            
            case attributes = "attributes"
            
            case categoryId = "category_id"
            
            case departmentId = "department_id"
            
            case dimension = "dimension"
            
            case price = "price"
            
            case brandId = "brand_id"
            
            case quantity = "quantity"
            
            case manufacturingTime = "manufacturing_time"
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case mtoQuantity = "mto_quantity"
            
            case isGift = "is_gift"
            
            case isSet = "is_set"
            
            case set = "set"
            
            case setQuantity = "set_quantity"
            
            case deliverySlots = "delivery_slots"
            
            case returnReason = "return_reason"
            
        }

        public init(attributes: ArticleAttributes? = nil, brandId: Int? = nil, categoryId: Int? = nil, deliverySlots: ArticleDeliverySlots? = nil, departmentId: Int? = nil, dimension: ArticleDimension? = nil, groupId: String? = nil, id: String? = nil, isGift: Bool? = nil, isSet: Bool? = nil, itemId: Int? = nil, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil, mtoQuantity: Int? = nil, price: Double? = nil, quantity: Int? = nil, returnReason: ArticleReturnReason? = nil, set: ArticleSet? = nil, setQuantity: Int? = nil, size: String? = nil, sla: String? = nil, tags: [String]? = nil, weight: ArticleWeight? = nil) {
            
            self.id = id
            
            self.itemId = itemId
            
            self.sla = sla
            
            self.tags = tags
            
            self.size = size
            
            self.groupId = groupId
            
            self.weight = weight
            
            self.attributes = attributes
            
            self.categoryId = categoryId
            
            self.departmentId = departmentId
            
            self.dimension = dimension
            
            self.price = price
            
            self.brandId = brandId
            
            self.quantity = quantity
            
            self.manufacturingTime = manufacturingTime
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.mtoQuantity = mtoQuantity
            
            self.isGift = isGift
            
            self.isSet = isSet
            
            self.set = set
            
            self.setQuantity = setQuantity
            
            self.deliverySlots = deliverySlots
            
            self.returnReason = returnReason
            
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
                itemId = try container.decode(Int.self, forKey: .itemId)
            
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
                tags = try container.decode([String].self, forKey: .tags)
            
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
                groupId = try container.decode(String.self, forKey: .groupId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                weight = try container.decode(ArticleWeight.self, forKey: .weight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                attributes = try container.decode(ArticleAttributes.self, forKey: .attributes)
            
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
                departmentId = try container.decode(Int.self, forKey: .departmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dimension = try container.decode(ArticleDimension.self, forKey: .dimension)
            
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
                brandId = try container.decode(Int.self, forKey: .brandId)
            
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
                isGift = try container.decode(Bool.self, forKey: .isGift)
            
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
                set = try container.decode(ArticleSet.self, forKey: .set)
            
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
            
            
            
            do {
                deliverySlots = try container.decode(ArticleDeliverySlots.self, forKey: .deliverySlots)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnReason = try container.decode(ArticleReturnReason.self, forKey: .returnReason)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            try? container.encodeIfPresent(dimension, forKey: .dimension)
            
            
            
            try? container.encodeIfPresent(price, forKey: .price)
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            try? container.encodeIfPresent(mtoQuantity, forKey: .mtoQuantity)
            
            
            
            try? container.encodeIfPresent(isGift, forKey: .isGift)
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            try? container.encodeIfPresent(setQuantity, forKey: .setQuantity)
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            try? container.encodeIfPresent(returnReason, forKey: .returnReason)
            
            
        }
        
    }
}
