

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var strategyWiseListing: [[String: Any]]?

        public var itemId: Int

        public var uid: String?

        public var articleAssignment: ArticleAssignment1

        public var status: Bool

        public var groupId: String?

        public var priceEffective: Int?

        public var size: String

        public var meta: [String: Any]?

        public var index: Int?

        public var companyId: Int?

        public var priceMarked: Int?

        public var storeId: Int?

        public var quantity: Int

        public var storePincode: Int?

        public var sCity: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case strategyWiseListing = "strategy_wise_listing"

            case itemId = "item_id"

            case uid

            case articleAssignment = "article_assignment"

            case status

            case groupId = "group_id"

            case priceEffective = "price_effective"

            case size

            case meta

            case index

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case quantity

            case storePincode = "store_pincode"

            case sCity = "s_city"

            case id = "_id"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.strategyWiseListing = strategyWiseListing

            self.itemId = itemId

            self.uid = uid

            self.articleAssignment = articleAssignment

            self.status = status

            self.groupId = groupId

            self.priceEffective = priceEffective

            self.size = size

            self.meta = meta

            self.index = index

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.quantity = quantity

            self.storePincode = storePincode

            self.sCity = sCity

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var strategyWiseListing: [[String: Any]]?

        public var itemId: Int

        public var uid: String?

        public var articleAssignment: ArticleAssignment1

        public var status: Bool

        public var groupId: String?

        public var priceEffective: Int?

        public var size: String

        public var meta: [String: Any]?

        public var index: Int?

        public var companyId: Int?

        public var priceMarked: Int?

        public var storeId: Int?

        public var quantity: Int

        public var storePincode: Int?

        public var sCity: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case strategyWiseListing = "strategy_wise_listing"

            case itemId = "item_id"

            case uid

            case articleAssignment = "article_assignment"

            case status

            case groupId = "group_id"

            case priceEffective = "price_effective"

            case size

            case meta

            case index

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case quantity

            case storePincode = "store_pincode"

            case sCity = "s_city"

            case id = "_id"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.strategyWiseListing = strategyWiseListing

            self.itemId = itemId

            self.uid = uid

            self.articleAssignment = articleAssignment

            self.status = status

            self.groupId = groupId

            self.priceEffective = priceEffective

            self.size = size

            self.meta = meta

            self.index = index

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.quantity = quantity

            self.storePincode = storePincode

            self.sCity = sCity

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            status = try container.decode(Bool.self, forKey: .status)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
