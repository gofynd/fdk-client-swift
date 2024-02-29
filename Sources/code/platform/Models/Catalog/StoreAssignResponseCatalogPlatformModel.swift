

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: StoreAssignResponse
        Used By: Catalog
    */

    class StoreAssignResponse: Codable {
        
        
        public var id: String?
        
        public var articleAssignment: ArticleAssignment1
        
        public var companyId: Int?
        
        public var groupId: String?
        
        public var index: Int?
        
        public var itemId: Int
        
        public var meta: [String: Any]?
        
        public var priceEffective: Int?
        
        public var priceMarked: Int?
        
        public var quantity: Int
        
        public var sCity: String?
        
        public var size: String
        
        public var status: Bool
        
        public var storeId: Int?
        
        public var storePincode: Int?
        
        public var strategyWiseListing: [[String: Any]]?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case articleAssignment = "article_assignment"
            
            case companyId = "company_id"
            
            case groupId = "group_id"
            
            case index = "index"
            
            case itemId = "item_id"
            
            case meta = "meta"
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case quantity = "quantity"
            
            case sCity = "s_city"
            
            case size = "size"
            
            case status = "status"
            
            case storeId = "store_id"
            
            case storePincode = "store_pincode"
            
            case strategyWiseListing = "strategy_wise_listing"
            
            case uid = "uid"
            
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.articleAssignment = articleAssignment
            
            self.companyId = companyId
            
            self.groupId = groupId
            
            self.index = index
            
            self.itemId = itemId
            
            self.meta = meta
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.quantity = quantity
            
            self.sCity = sCity
            
            self.size = size
            
            self.status = status
            
            self.storeId = storeId
            
            self.storePincode = storePincode
            
            self.strategyWiseListing = strategyWiseListing
            
            self.uid = uid
            
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
                
            
            
                articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
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
                    index = try container.decode(Int.self, forKey: .index)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Int.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Int.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    sCity = try container.decode(String.self, forKey: .sCity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                status = try container.decode(Bool.self, forKey: .status)
                
            
            
            
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storePincode = try container.decode(Int.self, forKey: .storePincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(index, forKey: .index)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sCity, forKey: .sCity)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(storePincode, forKey: .storePincode)
            
            
            
            
            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: StoreAssignResponse
        Used By: Catalog
    */

    class StoreAssignResponse: Codable {
        
        
        public var id: String?
        
        public var articleAssignment: ArticleAssignment1
        
        public var companyId: Int?
        
        public var groupId: String?
        
        public var index: Int?
        
        public var itemId: Int
        
        public var meta: [String: Any]?
        
        public var priceEffective: Int?
        
        public var priceMarked: Int?
        
        public var quantity: Int
        
        public var sCity: String?
        
        public var size: String
        
        public var status: Bool
        
        public var storeId: Int?
        
        public var storePincode: Int?
        
        public var strategyWiseListing: [[String: Any]]?
        
        public var uid: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case articleAssignment = "article_assignment"
            
            case companyId = "company_id"
            
            case groupId = "group_id"
            
            case index = "index"
            
            case itemId = "item_id"
            
            case meta = "meta"
            
            case priceEffective = "price_effective"
            
            case priceMarked = "price_marked"
            
            case quantity = "quantity"
            
            case sCity = "s_city"
            
            case size = "size"
            
            case status = "status"
            
            case storeId = "store_id"
            
            case storePincode = "store_pincode"
            
            case strategyWiseListing = "strategy_wise_listing"
            
            case uid = "uid"
            
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.articleAssignment = articleAssignment
            
            self.companyId = companyId
            
            self.groupId = groupId
            
            self.index = index
            
            self.itemId = itemId
            
            self.meta = meta
            
            self.priceEffective = priceEffective
            
            self.priceMarked = priceMarked
            
            self.quantity = quantity
            
            self.sCity = sCity
            
            self.size = size
            
            self.status = status
            
            self.storeId = storeId
            
            self.storePincode = storePincode
            
            self.strategyWiseListing = strategyWiseListing
            
            self.uid = uid
            
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
                
            
            
                articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
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
                    index = try container.decode(Int.self, forKey: .index)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                itemId = try container.decode(Int.self, forKey: .itemId)
                
            
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceEffective = try container.decode(Int.self, forKey: .priceEffective)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priceMarked = try container.decode(Int.self, forKey: .priceMarked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                quantity = try container.decode(Int.self, forKey: .quantity)
                
            
            
            
                do {
                    sCity = try container.decode(String.self, forKey: .sCity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                status = try container.decode(Bool.self, forKey: .status)
                
            
            
            
                do {
                    storeId = try container.decode(Int.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storePincode = try container.decode(Int.self, forKey: .storePincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(index, forKey: .index)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(sCity, forKey: .sCity)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(storePincode, forKey: .storePincode)
            
            
            
            
            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


