

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBags
         Used By: Order
     */

    class OrderBags: Codable {
        public var currentStatus: String

        public var financialBreakup: [FinancialBreakup]?

        public var bagId: Int

        public var item: OrderBagItem?

        public var article: OrderBagArticle?

        public var entityType: String

        public var quantity: Int

        public var brand: OrderBrandName?

        public var gstDetails: BagGST?

        public var displayName: String

        public var bagConfigs: BagConfigs?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case financialBreakup = "financial_breakup"

            case bagId = "bag_id"

            case item

            case article

            case entityType = "entity_type"

            case quantity

            case brand

            case gstDetails = "gst_details"

            case displayName = "display_name"

            case bagConfigs = "bag_configs"
        }

        public init(article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, brand: OrderBrandName? = nil, currentStatus: String, displayName: String, entityType: String, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGST? = nil, item: OrderBagItem? = nil, quantity: Int) {
            self.currentStatus = currentStatus

            self.financialBreakup = financialBreakup

            self.bagId = bagId

            self.item = item

            self.article = article

            self.entityType = entityType

            self.quantity = quantity

            self.brand = brand

            self.gstDetails = gstDetails

            self.displayName = displayName

            self.bagConfigs = bagConfigs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                item = try container.decode(OrderBagItem.self, forKey: .item)

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

            entityType = try container.decode(String.self, forKey: .entityType)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                brand = try container.decode(OrderBrandName.self, forKey: .brand)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)
        }
    }
}
