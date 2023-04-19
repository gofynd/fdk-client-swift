

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateInventoryConfig
         Used By: Order
     */

    class AffiliateInventoryConfig: Codable {
        public var articleAssignment: AffiliateInventoryArticleAssignmentConfig?

        public var inventory: AffiliateInventoryStoreConfig?

        public var order: AffiliateInventoryOrderConfig?

        public var payment: AffiliateInventoryPaymentConfig?

        public var logistics: AffiliateInventoryLogisticsConfig?

        public enum CodingKeys: String, CodingKey {
            case articleAssignment = "article_assignment"

            case inventory

            case order

            case payment

            case logistics
        }

        public init(articleAssignment: AffiliateInventoryArticleAssignmentConfig? = nil, inventory: AffiliateInventoryStoreConfig? = nil, logistics: AffiliateInventoryLogisticsConfig? = nil, order: AffiliateInventoryOrderConfig? = nil, payment: AffiliateInventoryPaymentConfig? = nil) {
            self.articleAssignment = articleAssignment

            self.inventory = inventory

            self.order = order

            self.payment = payment

            self.logistics = logistics
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleAssignment = try container.decode(AffiliateInventoryArticleAssignmentConfig.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(AffiliateInventoryStoreConfig.self, forKey: .inventory)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(logistics, forKey: .logistics)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateInventoryConfig
         Used By: Order
     */

    class AffiliateInventoryConfig: Codable {
        public var articleAssignment: AffiliateInventoryArticleAssignmentConfig?

        public var inventory: AffiliateInventoryStoreConfig?

        public var order: AffiliateInventoryOrderConfig?

        public var payment: AffiliateInventoryPaymentConfig?

        public var logistics: AffiliateInventoryLogisticsConfig?

        public enum CodingKeys: String, CodingKey {
            case articleAssignment = "article_assignment"

            case inventory

            case order

            case payment

            case logistics
        }

        public init(articleAssignment: AffiliateInventoryArticleAssignmentConfig? = nil, inventory: AffiliateInventoryStoreConfig? = nil, logistics: AffiliateInventoryLogisticsConfig? = nil, order: AffiliateInventoryOrderConfig? = nil, payment: AffiliateInventoryPaymentConfig? = nil) {
            self.articleAssignment = articleAssignment

            self.inventory = inventory

            self.order = order

            self.payment = payment

            self.logistics = logistics
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleAssignment = try container.decode(AffiliateInventoryArticleAssignmentConfig.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventory = try container.decode(AffiliateInventoryStoreConfig.self, forKey: .inventory)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)

            try? container.encodeIfPresent(inventory, forKey: .inventory)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(logistics, forKey: .logistics)
        }
    }
}
