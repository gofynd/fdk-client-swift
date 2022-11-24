

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBags
         Used By: Orders
     */

    class OrderBags: Codable {
        public var bagConfigs: BagConfigs?

        public var currentStatus: String

        public var brand: OrderBrandName?

        public var quantity: Int

        public var displayName: String

        public var bagId: Int

        public var entityType: String

        public var item: OrderBagItem?

        public var gstDetails: BagGST?

        public var article: OrderBagArticle?

        public var financialBreakup: [FinancialBreakup]?

        public enum CodingKeys: String, CodingKey {
            case bagConfigs = "bag_configs"

            case currentStatus = "current_status"

            case brand

            case quantity

            case displayName = "display_name"

            case bagId = "bag_id"

            case entityType = "entity_type"

            case item

            case gstDetails = "gst_details"

            case article

            case financialBreakup = "financial_breakup"
        }

        public init(article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, currentStatus: String, displayName: String, entityType: String, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGST? = nil, item: OrderBagItem? = nil, quantity: Int) {
            self.bagConfigs = bagConfigs

            self.currentStatus = currentStatus

            self.brand = brand

            self.quantity = quantity

            self.displayName = displayName

            self.bagId = bagId

            self.entityType = entityType

            self.item = item

            self.gstDetails = gstDetails

            self.article = article

            self.financialBreakup = financialBreakup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                brand = try container.decode(OrderBrandName.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            displayName = try container.decode(String.self, forKey: .displayName)

            bagId = try container.decode(Int.self, forKey: .bagId)

            entityType = try container.decode(String.self, forKey: .entityType)

            do {
                item = try container.decode(OrderBagItem.self, forKey: .item)

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
                article = try container.decode(OrderBagArticle.self, forKey: .article)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
        }
    }
}
