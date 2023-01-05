

import Foundation
public extension PlatformClient {
    /*
         Model: FailOrder
         Used By: Order
     */

    class FailOrder: Codable {
        public var updatedAt: String?

        public var id: String?

        public var reason: String?

        public var marketplaceOrder: MarketplaceOrder?

        public var marketplaceOrderId: String?

        public var createdAt: String?

        public var appId: String?

        public var marketplace: String?

        public var companyId: Int?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case id = "_id"

            case reason

            case marketplaceOrder = "marketplace_order"

            case marketplaceOrderId = "marketplace_order_id"

            case createdAt = "created_at"

            case appId = "app_id"

            case marketplace

            case companyId = "company_id"
        }

        public init(appId: String? = nil, companyId: Int? = nil, createdAt: String? = nil, marketplace: String? = nil, marketplaceOrder: MarketplaceOrder? = nil, marketplaceOrderId: String? = nil, reason: String? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.updatedAt = updatedAt

            self.id = id

            self.reason = reason

            self.marketplaceOrder = marketplaceOrder

            self.marketplaceOrderId = marketplaceOrderId

            self.createdAt = createdAt

            self.appId = appId

            self.marketplace = marketplace

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceOrder = try container.decode(MarketplaceOrder.self, forKey: .marketplaceOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplaceOrderId = try container.decode(String.self, forKey: .marketplaceOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(String.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marketplace = try container.decode(String.self, forKey: .marketplace)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(marketplaceOrder, forKey: .marketplaceOrder)

            try? container.encodeIfPresent(marketplaceOrderId, forKey: .marketplaceOrderId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(marketplace, forKey: .marketplace)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
