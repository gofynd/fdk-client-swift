

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateInventoryConfig
         Used By: Order
     */

    class AffiliateInventoryConfig: Codable {
        public var inventory: AffiliateInventoryStoreConfig?

        public var articleAssignment: AffiliateInventoryArticleAssignmentConfig?

        public var payment: AffiliateInventoryPaymentConfig?

        public var logistics: AffiliateInventoryLogisticsConfig?

        public var order: AffiliateInventoryOrderConfig?

        public enum CodingKeys: String, CodingKey {
            case inventory

            case articleAssignment = "article_assignment"

            case payment

            case logistics

            case order
        }

        public init(articleAssignment: AffiliateInventoryArticleAssignmentConfig? = nil, inventory: AffiliateInventoryStoreConfig? = nil, logistics: AffiliateInventoryLogisticsConfig? = nil, order: AffiliateInventoryOrderConfig? = nil, payment: AffiliateInventoryPaymentConfig? = nil) {
            self.inventory = inventory

            self.articleAssignment = articleAssignment

            self.payment = payment

            self.logistics = logistics

            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                inventory = try container.decode(AffiliateInventoryStoreConfig.self, forKey: .inventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(AffiliateInventoryArticleAssignmentConfig.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(AffiliateInventoryPaymentConfig.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logistics = try container.decode(AffiliateInventoryLogisticsConfig.self, forKey: .logistics)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(AffiliateInventoryOrderConfig.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(logistics, forKey: .logistics)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
