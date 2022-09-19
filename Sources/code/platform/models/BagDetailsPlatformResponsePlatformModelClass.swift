

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var currentStatus: BagStatusHistory

        public var dates: [String: Any]?

        public var bagUpdateTime: Double?

        public var bagStatus: [BagStatusHistory]

        public var financialBreakup: [FinancialBreakup]

        public var journeyType: String

        public var paymentMethods: [String: Any]

        public var prices: Prices

        public var appliedPromos: [[String: Any]]?

        public var displayName: String?

        public var orderIntegrationId: String?

        public var gstDetails: BagGSTDetails

        public var reasons: [[String: Any]]?

        public var entityType: String?

        public var currentOperationalStatus: BagStatusHistory

        public var affiliateBagDetails: AffiliateBagDetails

        public var item: Item

        public var article: Article

        public var brand: Brand

        public var status: BagReturnableCancelableStatus

        public var meta: BagMeta?

        public var bId: Int

        public var bType: String?

        public var bagId: Int

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case dates

            case bagUpdateTime = "bag_update_time"

            case bagStatus = "bag_status"

            case financialBreakup = "financial_breakup"

            case journeyType = "journey_type"

            case paymentMethods = "payment_methods"

            case prices

            case appliedPromos = "applied_promos"

            case displayName = "display_name"

            case orderIntegrationId = "order_integration_id"

            case gstDetails = "gst_details"

            case reasons

            case entityType = "entity_type"

            case currentOperationalStatus = "current_operational_status"

            case affiliateBagDetails = "affiliate_bag_details"

            case item

            case article

            case brand

            case status

            case meta

            case bId = "b_id"

            case bType = "b_type"

            case bagId = "bag_id"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.currentStatus = currentStatus

            self.dates = dates

            self.bagUpdateTime = bagUpdateTime

            self.bagStatus = bagStatus

            self.financialBreakup = financialBreakup

            self.journeyType = journeyType

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.appliedPromos = appliedPromos

            self.displayName = displayName

            self.orderIntegrationId = orderIntegrationId

            self.gstDetails = gstDetails

            self.reasons = reasons

            self.entityType = entityType

            self.currentOperationalStatus = currentOperationalStatus

            self.affiliateBagDetails = affiliateBagDetails

            self.item = item

            self.article = article

            self.brand = brand

            self.status = status

            self.meta = meta

            self.bId = bId

            self.bType = bType

            self.bagId = bagId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            item = try container.decode(Item.self, forKey: .item)

            article = try container.decode(Article.self, forKey: .article)

            brand = try container.decode(Brand.self, forKey: .brand)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bagId, forKey: .bagId)
        }
    }
}
