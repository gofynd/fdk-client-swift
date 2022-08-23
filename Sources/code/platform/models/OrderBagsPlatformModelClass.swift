

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBags
         Used By: Orders
     */

    class OrderBags: Codable {
        public var brand: OrderBrandName?

        public var entityType: String

        public var quantity: Int

        public var financialBreakup: [FinancialBreakup]?

        public var currentStatus: String

        public var bagConfigs: BagConfigs?

        public var gstDetails: BagGST?

        public var item: OrderBagItem?

        public var bagId: Int

        public var article: OrderBagArticle?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case brand

            case entityType = "entity_type"

            case quantity

            case financialBreakup = "financial_breakup"

            case currentStatus = "current_status"

            case bagConfigs = "bag_configs"

            case gstDetails = "gst_details"

            case item

            case bagId = "bag_id"

            case article

            case displayName = "display_name"
        }

        public init(article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, currentStatus: String, displayName: String, entityType: String, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGST? = nil, item: OrderBagItem? = nil, quantity: Int) {
            self.brand = brand

            self.entityType = entityType

            self.quantity = quantity

            self.financialBreakup = financialBreakup

            self.currentStatus = currentStatus

            self.bagConfigs = bagConfigs

            self.gstDetails = gstDetails

            self.item = item

            self.bagId = bagId

            self.article = article

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(OrderBrandName.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            entityType = try container.decode(String.self, forKey: .entityType)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(BagGST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(OrderBagItem.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                article = try container.decode(OrderBagArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
