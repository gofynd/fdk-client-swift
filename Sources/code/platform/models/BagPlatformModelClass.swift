

import Foundation
public extension PlatformClient {
    /*
         Model: Bag
         Used By: Order
     */

    class Bag: Codable {
        public var paymentMethods: [String: Any]

        public var reasons: [[String: Any]]?

        public var article: Article

        public var currentOperationalStatus: BagStatusHistory

        public var meta: BagMeta?

        public var bagUpdateTime: Double?

        public var bagId: Int

        public var affiliateBagDetails: AffiliateBagDetails

        public var appliedPromos: [[String: Any]]?

        public var brand: Brand

        public var item: Item

        public var prices: Prices

        public var journeyType: String

        public var financialBreakup: [FinancialBreakup]

        public var bId: Int

        public var dates: [String: Any]?

        public var orderIntegrationId: String?

        public var bType: String?

        public var gstDetails: BagGSTDetails

        public var displayName: String?

        public var entityType: String?

        public var currentStatus: BagStatusHistory

        public var status: BagReturnableCancelableStatus

        public var bagStatus: [BagStatusHistory]

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case reasons

            case article

            case currentOperationalStatus = "current_operational_status"

            case meta

            case bagUpdateTime = "bag_update_time"

            case bagId = "bag_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case appliedPromos = "applied_promos"

            case brand

            case item

            case prices

            case journeyType = "journey_type"

            case financialBreakup = "financial_breakup"

            case bId = "b_id"

            case dates

            case orderIntegrationId = "order_integration_id"

            case bType = "b_type"

            case gstDetails = "gst_details"

            case displayName = "display_name"

            case entityType = "entity_type"

            case currentStatus = "current_status"

            case status

            case bagStatus = "bag_status"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.paymentMethods = paymentMethods

            self.reasons = reasons

            self.article = article

            self.currentOperationalStatus = currentOperationalStatus

            self.meta = meta

            self.bagUpdateTime = bagUpdateTime

            self.bagId = bagId

            self.affiliateBagDetails = affiliateBagDetails

            self.appliedPromos = appliedPromos

            self.brand = brand

            self.item = item

            self.prices = prices

            self.journeyType = journeyType

            self.financialBreakup = financialBreakup

            self.bId = bId

            self.dates = dates

            self.orderIntegrationId = orderIntegrationId

            self.bType = bType

            self.gstDetails = gstDetails

            self.displayName = displayName

            self.entityType = entityType

            self.currentStatus = currentStatus

            self.status = status

            self.bagStatus = bagStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            item = try container.decode(Item.self, forKey: .item)

            prices = try container.decode(Prices.self, forKey: .prices)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
        }
    }
}
