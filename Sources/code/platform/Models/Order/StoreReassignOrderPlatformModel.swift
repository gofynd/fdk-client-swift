

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreReassign
         Used By: Order
     */

    class StoreReassign: Codable {
        public var storeId: Int

        public var fyndOrderId: String

        public var mongoArticleId: String

        public var bagId: Int

        public var itemId: String

        public var affiliateOrderId: String

        public var reasonIds: [Int]

        public var affiliateId: String

        public var affiliateBagId: String

        public var setId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case fyndOrderId = "fynd_order_id"

            case mongoArticleId = "mongo_article_id"

            case bagId = "bag_id"

            case itemId = "item_id"

            case affiliateOrderId = "affiliate_order_id"

            case reasonIds = "reason_ids"

            case affiliateId = "affiliate_id"

            case affiliateBagId = "affiliate_bag_id"

            case setId = "set_id"
        }

        public init(affiliateBagId: String, affiliateId: String, affiliateOrderId: String, bagId: Int, fyndOrderId: String, itemId: String, mongoArticleId: String, reasonIds: [Int], setId: String, storeId: Int) {
            self.storeId = storeId

            self.fyndOrderId = fyndOrderId

            self.mongoArticleId = mongoArticleId

            self.bagId = bagId

            self.itemId = itemId

            self.affiliateOrderId = affiliateOrderId

            self.reasonIds = reasonIds

            self.affiliateId = affiliateId

            self.affiliateBagId = affiliateBagId

            self.setId = setId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            itemId = try container.decode(String.self, forKey: .itemId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            reasonIds = try container.decode([Int].self, forKey: .reasonIds)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            setId = try container.decode(String.self, forKey: .setId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(mongoArticleId, forKey: .mongoArticleId)

            try? container.encode(bagId, forKey: .bagId)

            try? container.encode(itemId, forKey: .itemId)

            try? container.encode(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(reasonIds, forKey: .reasonIds)

            try? container.encode(affiliateId, forKey: .affiliateId)

            try? container.encode(affiliateBagId, forKey: .affiliateBagId)

            try? container.encode(setId, forKey: .setId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreReassign
         Used By: Order
     */

    class StoreReassign: Codable {
        public var storeId: Int

        public var fyndOrderId: String

        public var mongoArticleId: String

        public var bagId: Int

        public var itemId: String

        public var affiliateOrderId: String

        public var reasonIds: [Int]

        public var affiliateId: String

        public var affiliateBagId: String

        public var setId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case fyndOrderId = "fynd_order_id"

            case mongoArticleId = "mongo_article_id"

            case bagId = "bag_id"

            case itemId = "item_id"

            case affiliateOrderId = "affiliate_order_id"

            case reasonIds = "reason_ids"

            case affiliateId = "affiliate_id"

            case affiliateBagId = "affiliate_bag_id"

            case setId = "set_id"
        }

        public init(affiliateBagId: String, affiliateId: String, affiliateOrderId: String, bagId: Int, fyndOrderId: String, itemId: String, mongoArticleId: String, reasonIds: [Int], setId: String, storeId: Int) {
            self.storeId = storeId

            self.fyndOrderId = fyndOrderId

            self.mongoArticleId = mongoArticleId

            self.bagId = bagId

            self.itemId = itemId

            self.affiliateOrderId = affiliateOrderId

            self.reasonIds = reasonIds

            self.affiliateId = affiliateId

            self.affiliateBagId = affiliateBagId

            self.setId = setId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)

            bagId = try container.decode(Int.self, forKey: .bagId)

            itemId = try container.decode(String.self, forKey: .itemId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            reasonIds = try container.decode([Int].self, forKey: .reasonIds)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            setId = try container.decode(String.self, forKey: .setId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(mongoArticleId, forKey: .mongoArticleId)

            try? container.encode(bagId, forKey: .bagId)

            try? container.encode(itemId, forKey: .itemId)

            try? container.encode(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(reasonIds, forKey: .reasonIds)

            try? container.encode(affiliateId, forKey: .affiliateId)

            try? container.encode(affiliateBagId, forKey: .affiliateBagId)

            try? container.encode(setId, forKey: .setId)
        }
    }
}
