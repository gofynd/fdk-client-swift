

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreReassign
         Used By: Order
     */

    class StoreReassign: Codable {
        public var itemId: String?

        public var affiliateId: String?

        public var fyndOrderId: String?

        public var affiliateBagId: String?

        public var mongoArticleId: String?

        public var setId: String?

        public var bagId: Int?

        public var affiliateOrderId: String?

        public var storeId: Int

        public var reasonIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case affiliateId = "affiliate_id"

            case fyndOrderId = "fynd_order_id"

            case affiliateBagId = "affiliate_bag_id"

            case mongoArticleId = "mongo_article_id"

            case setId = "set_id"

            case bagId = "bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case storeId = "store_id"

            case reasonIds = "reason_ids"
        }

        public init(affiliateBagId: String? = nil, affiliateId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, fyndOrderId: String? = nil, itemId: String? = nil, mongoArticleId: String? = nil, reasonIds: [Int]? = nil, setId: String? = nil, storeId: Int) {
            self.itemId = itemId

            self.affiliateId = affiliateId

            self.fyndOrderId = fyndOrderId

            self.affiliateBagId = affiliateBagId

            self.mongoArticleId = mongoArticleId

            self.setId = setId

            self.bagId = bagId

            self.affiliateOrderId = affiliateOrderId

            self.storeId = storeId

            self.reasonIds = reasonIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                setId = try container.decode(String.self, forKey: .setId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                reasonIds = try container.decode([Int].self, forKey: .reasonIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemId, forKey: .itemId)

            try? container.encode(affiliateId, forKey: .affiliateId)

            try? container.encode(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(affiliateBagId, forKey: .affiliateBagId)

            try? container.encode(mongoArticleId, forKey: .mongoArticleId)

            try? container.encode(setId, forKey: .setId)

            try? container.encode(bagId, forKey: .bagId)

            try? container.encode(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(reasonIds, forKey: .reasonIds)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreReassign
         Used By: Order
     */

    class StoreReassign: Codable {
        public var itemId: String?

        public var affiliateId: String?

        public var fyndOrderId: String?

        public var affiliateBagId: String?

        public var mongoArticleId: String?

        public var setId: String?

        public var bagId: Int?

        public var affiliateOrderId: String?

        public var storeId: Int

        public var reasonIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case affiliateId = "affiliate_id"

            case fyndOrderId = "fynd_order_id"

            case affiliateBagId = "affiliate_bag_id"

            case mongoArticleId = "mongo_article_id"

            case setId = "set_id"

            case bagId = "bag_id"

            case affiliateOrderId = "affiliate_order_id"

            case storeId = "store_id"

            case reasonIds = "reason_ids"
        }

        public init(affiliateBagId: String? = nil, affiliateId: String? = nil, affiliateOrderId: String? = nil, bagId: Int? = nil, fyndOrderId: String? = nil, itemId: String? = nil, mongoArticleId: String? = nil, reasonIds: [Int]? = nil, setId: String? = nil, storeId: Int) {
            self.itemId = itemId

            self.affiliateId = affiliateId

            self.fyndOrderId = fyndOrderId

            self.affiliateBagId = affiliateBagId

            self.mongoArticleId = mongoArticleId

            self.setId = setId

            self.bagId = bagId

            self.affiliateOrderId = affiliateOrderId

            self.storeId = storeId

            self.reasonIds = reasonIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(String.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mongoArticleId = try container.decode(String.self, forKey: .mongoArticleId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                setId = try container.decode(String.self, forKey: .setId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagId = try container.decode(Int.self, forKey: .bagId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                reasonIds = try container.decode([Int].self, forKey: .reasonIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemId, forKey: .itemId)

            try? container.encode(affiliateId, forKey: .affiliateId)

            try? container.encode(fyndOrderId, forKey: .fyndOrderId)

            try? container.encode(affiliateBagId, forKey: .affiliateBagId)

            try? container.encode(mongoArticleId, forKey: .mongoArticleId)

            try? container.encode(setId, forKey: .setId)

            try? container.encode(bagId, forKey: .bagId)

            try? container.encode(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encode(reasonIds, forKey: .reasonIds)
        }
    }
}
