

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentsArticles
        Used By: Logistic
    */
    class ShipmentsArticles: Codable {
        
        public var id: String
        
        public var quantity: Int
        
        public var itemId: Int
        
        public var size: String
        
        public var isSet: Bool?
        
        public var set: ArticleSet?
        
        public var sla: String
        
        public var meta: ShipmentArticleMeta?
        
        public var departmentId: Int?
        
        public var categoryId: Int?
        
        public var brandId: Int?
        
        public var groupId: String?
        
        public var groupInfo: [String: Any]?
        
        public var groupInfoIds: [String: Any]?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case quantity = "quantity"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case isSet = "is_set"
            
            case set = "set"
            
            case sla = "sla"
            
            case meta = "meta"
            
            case departmentId = "department_id"
            
            case categoryId = "category_id"
            
            case brandId = "brand_id"
            
            case groupId = "group_id"
            
            case groupInfo = "group_info"
            
            case groupInfoIds = "group_info_ids"
            
            case tags = "tags"
            
        }

        public init(brandId: Int? = nil, categoryId: Int? = nil, departmentId: Int? = nil, groupId: String? = nil, groupInfo: [String: Any]? = nil, groupInfoIds: [String: Any]? = nil, id: String, isSet: Bool? = nil, itemId: Int, meta: ShipmentArticleMeta? = nil, quantity: Int, set: ArticleSet? = nil, size: String, sla: String, tags: [String]? = nil) {
            
            self.id = id
            
            self.quantity = quantity
            
            self.itemId = itemId
            
            self.size = size
            
            self.isSet = isSet
            
            self.set = set
            
            self.sla = sla
            
            self.meta = meta
            
            self.departmentId = departmentId
            
            self.categoryId = categoryId
            
            self.brandId = brandId
            
            self.groupId = groupId
            
            self.groupInfo = groupInfo
            
            self.groupInfoIds = groupInfoIds
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            quantity = try container.decode(Int.self, forKey: .quantity)
            
            
            
            
            itemId = try container.decode(Int.self, forKey: .itemId)
            
            
            
            
            size = try container.decode(String.self, forKey: .size)
            
            
            
            
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
            
            
            
            sla = try container.decode(String.self, forKey: .sla)
            
            
            
            
            do {
                meta = try container.decode(ShipmentArticleMeta.self, forKey: .meta)
            
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
                groupId = try container.decode(String.self, forKey: .groupId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                groupInfo = try container.decode([String: Any].self, forKey: .groupInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                groupInfoIds = try container.decode([String: Any].self, forKey: .groupInfoIds)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(departmentId, forKey: .departmentId)
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            try? container.encodeIfPresent(groupInfo, forKey: .groupInfo)
            
            
            
            try? container.encodeIfPresent(groupInfoIds, forKey: .groupInfoIds)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}
