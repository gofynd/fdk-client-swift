

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: StoreAssign
         Used By: Catalog
     */

    class StoreAssign: Codable {
        public var quantity: Int

        public var groupId: String?

        public var sCity: String?

        public var strategyWiseListing: [[String: Any]]?

        public var status: Bool

        public var priceEffective: Int?

        public var meta: [String: Any]?

        public var articleAssignment: ArticleAssignment1

        public var itemId: Int

        public var priceMarked: Int?

        public var storeId: Int?

        public var storePincode: Int?

        public var id: String?

        public var index: Int?

        public var uid: String?

        public var size: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case groupId = "group_id"

            case sCity = "s_city"

            case strategyWiseListing = "strategy_wise_listing"

            case status

            case priceEffective = "price_effective"

            case meta

            case articleAssignment = "article_assignment"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case storePincode = "store_pincode"

            case id = "_id"

            case index

            case uid

            case size

            case companyId = "company_id"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.quantity = quantity

            self.groupId = groupId

            self.sCity = sCity

            self.strategyWiseListing = strategyWiseListing

            self.status = status

            self.priceEffective = priceEffective

            self.meta = meta

            self.articleAssignment = articleAssignment

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.storePincode = storePincode

            self.id = id

            self.index = index

            self.uid = uid

            self.size = size

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

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
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            itemId = try container.decode(Int.self, forKey: .itemId)

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

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

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

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: StoreAssign
         Used By: Catalog
     */

    class StoreAssign: Codable {
        public var quantity: Int

        public var groupId: String?

        public var sCity: String?

        public var strategyWiseListing: [[String: Any]]?

        public var status: Bool

        public var priceEffective: Int?

        public var meta: [String: Any]?

        public var articleAssignment: ArticleAssignment1

        public var itemId: Int

        public var priceMarked: Int?

        public var storeId: Int?

        public var storePincode: Int?

        public var id: String?

        public var index: Int?

        public var uid: String?

        public var size: String

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case quantity

            case groupId = "group_id"

            case sCity = "s_city"

            case strategyWiseListing = "strategy_wise_listing"

            case status

            case priceEffective = "price_effective"

            case meta

            case articleAssignment = "article_assignment"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case storePincode = "store_pincode"

            case id = "_id"

            case index

            case uid

            case size

            case companyId = "company_id"
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.quantity = quantity

            self.groupId = groupId

            self.sCity = sCity

            self.strategyWiseListing = strategyWiseListing

            self.status = status

            self.priceEffective = priceEffective

            self.meta = meta

            self.articleAssignment = articleAssignment

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.storePincode = storePincode

            self.id = id

            self.index = index

            self.uid = uid

            self.size = size

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

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
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Bool.self, forKey: .status)

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            itemId = try container.decode(Int.self, forKey: .itemId)

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

            do {
                storePincode = try container.decode(Int.self, forKey: .storePincode)

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

            do {
                index = try container.decode(Int.self, forKey: .index)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
