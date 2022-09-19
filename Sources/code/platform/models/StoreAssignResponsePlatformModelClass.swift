

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAssignResponse
         Used By: Catalog
     */

    class StoreAssignResponse: Codable {
        public var strategyWiseListing: [[String: Any]]?

        public var groupId: String?

        public var itemId: Int

        public var companyId: Int?

        public var index: Int?

        public var id: String?

        public var priceEffective: Int?

        public var sCity: String?

        public var storePincode: Int?

        public var status: Bool

        public var storeId: Int?

        public var articleAssignment: ArticleAssignment1

        public var uid: String?

        public var priceMarked: Int?

        public var size: String

        public var meta: [String: Any]?

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case strategyWiseListing = "strategy_wise_listing"

            case groupId = "group_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case index

            case id = "_id"

            case priceEffective = "price_effective"

            case sCity = "s_city"

            case storePincode = "store_pincode"

            case status

            case storeId = "store_id"

            case articleAssignment = "article_assignment"

            case uid

            case priceMarked = "price_marked"

            case size

            case meta

            case quantity
        }

        public init(articleAssignment: ArticleAssignment1, companyId: Int? = nil, groupId: String? = nil, index: Int? = nil, itemId: Int, meta: [String: Any]? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, quantity: Int, size: String, status: Bool, storeId: Int? = nil, storePincode: Int? = nil, strategyWiseListing: [[String: Any]]? = nil, sCity: String? = nil, uid: String? = nil, id: String? = nil) {
            self.strategyWiseListing = strategyWiseListing

            self.groupId = groupId

            self.itemId = itemId

            self.companyId = companyId

            self.index = index

            self.id = id

            self.priceEffective = priceEffective

            self.sCity = sCity

            self.storePincode = storePincode

            self.status = status

            self.storeId = storeId

            self.articleAssignment = articleAssignment

            self.uid = uid

            self.priceMarked = priceMarked

            self.size = size

            self.meta = meta

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                strategyWiseListing = try container.decode([[String: Any]].self, forKey: .strategyWiseListing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

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
                id = try container.decode(String.self, forKey: .id)

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

            do {
                sCity = try container.decode(String.self, forKey: .sCity)

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

            status = try container.decode(Bool.self, forKey: .status)

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleAssignment = try container.decode(ArticleAssignment1.self, forKey: .articleAssignment)

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            size = try container.decode(String.self, forKey: .size)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(strategyWiseListing, forKey: .strategyWiseListing)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(index, forKey: .index)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sCity, forKey: .sCity)

            try? container.encodeIfPresent(storePincode, forKey: .storePincode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
