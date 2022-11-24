

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var currentStatus: String

        public var displayName: String

        public var brand: OrderBrandName?

        public var financialBreakup: [FinancialBreakup]?

        public var bagConfigs: BagConfigs?

        public var article: OrderBagArticle?

        public var quantity: Int

        public var entityType: String

        public var gstDetails: BagGST?

        public var item: OrderBagItem?

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case displayName = "display_name"

            case brand

            case financialBreakup = "financial_breakup"

            case bagConfigs = "bag_configs"

            case article

            case quantity

            case entityType = "entity_type"

            case gstDetails = "gst_details"

            case item

            case bagId = "bag_id"
        }

        public init(article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, currentStatus: String, displayName: String, entityType: String, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGST? = nil, item: OrderBagItem? = nil, quantity: Int) {
            self.currentStatus = currentStatus

            self.displayName = displayName

            self.brand = brand

            self.financialBreakup = financialBreakup

            self.bagConfigs = bagConfigs

            self.article = article

            self.quantity = quantity

            self.entityType = entityType

            self.gstDetails = gstDetails

            self.item = item

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                brand = try container.decode(OrderBrandName.self, forKey: .brand)

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

            do {
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            entityType = try container.decode(String.self, forKey: .entityType)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
