

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: OptimalLocationArticlesResult
        Used By: Serviceability
    */

    class OptimalLocationArticlesResult: Codable {
        
        
        public var itemId: Int
        
        public var size: String
        
        public var quantity: Int
        
        public var groupId: String?
        
        public var isPrimaryItem: Bool?
        
        public var meta: [String: Any]?
        
        public var articleAssignment: ArticleAssignment
        
        public var sellerId: Int?
        
        public var ignoreLocations: [Int]
        
        public var assignLocations: [Int]
        
        public var priceEffective: Double
        
        public var mtoQuantity: Int
        
        public var id: String
        
        public var uid: String
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case size = "size"
            
            case quantity = "quantity"
            
            case groupId = "group_id"
            
            case isPrimaryItem = "is_primary_item"
            
            case meta = "meta"
            
            case articleAssignment = "article_assignment"
            
            case sellerId = "seller_id"
            
            case ignoreLocations = "ignore_locations"
            
            case assignLocations = "assign_locations"
            
            case priceEffective = "price_effective"
            
            case mtoQuantity = "mto_quantity"
            
            case id = "_id"
            
            case uid = "uid"
            
        }

        public init(articleAssignment: ArticleAssignment, assignLocations: [Int], groupId: String? = nil, ignoreLocations: [Int], isPrimaryItem: Bool? = nil, itemId: Int, meta: [String: Any]? = nil, mtoQuantity: Int, priceEffective: Double, quantity: Int, sellerId: Int? = nil, size: String, uid: String, id: String) {
            
            self.itemId = itemId
            
            self.size = size
            
            self.quantity = quantity
            
            self.groupId = groupId
            
            self.isPrimaryItem = isPrimaryItem
            
            self.meta = meta
            
            self.articleAssignment = articleAssignment
            
            self.sellerId = sellerId
            
            self.ignoreLocations = ignoreLocations
            
            self.assignLocations = assignLocations
            
            self.priceEffective = priceEffective
            
            self.mtoQuantity = mtoQuantity
            
            self.id = id
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrimaryItem = try container.decode(Bool.self, forKey: .isPrimaryItem)
                
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
                
            
            
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
            
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ignoreLocations = try container.decode([Int].self, forKey: .ignoreLocations)
                
            
            
            
                assignLocations = try container.decode([Int].self, forKey: .assignLocations)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                mtoQuantity = try container.decode(Int.self, forKey: .mtoQuantity)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(isPrimaryItem, forKey: .isPrimaryItem)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(ignoreLocations, forKey: .ignoreLocations)
            
            
            
            
            try? container.encodeIfPresent(assignLocations, forKey: .assignLocations)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(mtoQuantity, forKey: .mtoQuantity)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: OptimalLocationArticlesResult
        Used By: Serviceability
    */

    class OptimalLocationArticlesResult: Codable {
        
        
        public var itemId: Int
        
        public var size: String
        
        public var quantity: Int
        
        public var groupId: String?
        
        public var isPrimaryItem: Bool?
        
        public var meta: [String: Any]?
        
        public var articleAssignment: ArticleAssignment
        
        public var sellerId: Int?
        
        public var ignoreLocations: [Int]
        
        public var assignLocations: [Int]
        
        public var priceEffective: Double
        
        public var mtoQuantity: Int
        
        public var id: String
        
        public var uid: String
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case size = "size"
            
            case quantity = "quantity"
            
            case groupId = "group_id"
            
            case isPrimaryItem = "is_primary_item"
            
            case meta = "meta"
            
            case articleAssignment = "article_assignment"
            
            case sellerId = "seller_id"
            
            case ignoreLocations = "ignore_locations"
            
            case assignLocations = "assign_locations"
            
            case priceEffective = "price_effective"
            
            case mtoQuantity = "mto_quantity"
            
            case id = "_id"
            
            case uid = "uid"
            
        }

        public init(articleAssignment: ArticleAssignment, assignLocations: [Int], groupId: String? = nil, ignoreLocations: [Int], isPrimaryItem: Bool? = nil, itemId: Int, meta: [String: Any]? = nil, mtoQuantity: Int, priceEffective: Double, quantity: Int, sellerId: Int? = nil, size: String, uid: String, id: String) {
            
            self.itemId = itemId
            
            self.size = size
            
            self.quantity = quantity
            
            self.groupId = groupId
            
            self.isPrimaryItem = isPrimaryItem
            
            self.meta = meta
            
            self.articleAssignment = articleAssignment
            
            self.sellerId = sellerId
            
            self.ignoreLocations = ignoreLocations
            
            self.assignLocations = assignLocations
            
            self.priceEffective = priceEffective
            
            self.mtoQuantity = mtoQuantity
            
            self.id = id
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPrimaryItem = try container.decode(Bool.self, forKey: .isPrimaryItem)
                
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
                
            
            
                articleAssignment = try container.decode(ArticleAssignment.self, forKey: .articleAssignment)
                
            
            
            
                do {
                    sellerId = try container.decode(Int.self, forKey: .sellerId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                ignoreLocations = try container.decode([Int].self, forKey: .ignoreLocations)
                
            
            
            
                assignLocations = try container.decode([Int].self, forKey: .assignLocations)
                
            
            
            
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
                
            
            
            
                mtoQuantity = try container.decode(Int.self, forKey: .mtoQuantity)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(isPrimaryItem, forKey: .isPrimaryItem)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            
            try? container.encodeIfPresent(ignoreLocations, forKey: .ignoreLocations)
            
            
            
            
            try? container.encodeIfPresent(assignLocations, forKey: .assignLocations)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(mtoQuantity, forKey: .mtoQuantity)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


