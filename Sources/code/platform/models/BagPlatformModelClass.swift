

import Foundation
public extension PlatformClient {
    /*
         Model: Bag
         Used By: Order
     */

    class Bag: Codable {
        public var currentOperationalStatus: BagStatusHistory

        public var affiliateBagDetails: AffiliateBagDetails

        public var status: BagReturnableCancelableStatus

        public var bId: Int

        public var paymentMethods: [String: Any]

        public var bType: String?

        public var prices: Prices

        public var currentStatus: BagStatusHistory

        public var appliedPromos: [[String: Any]]?

        public var orderIntegrationId: String?

        public var journeyType: String

        public var reasons: [[String: Any]]?

        public var meta: BagMeta?

        public var item: Item

        public var financialBreakup: [FinancialBreakup]

        public var bagId: Int

        public var bagUpdateTime: Double?

        public var brand: Brand

        public var displayName: String?

        public var bagStatus: [BagStatusHistory]

        public var article: Article

        public var dates: [String: Any]?

        public var gstDetails: BagGSTDetails

        public var entityType: String?

        public enum CodingKeys: String, CodingKey {
            case currentOperationalStatus = "current_operational_status"

            case affiliateBagDetails = "affiliate_bag_details"

            case status

            case bId = "b_id"

            case paymentMethods = "payment_methods"

            case bType = "b_type"

            case prices

            case currentStatus = "current_status"

            case appliedPromos = "applied_promos"

            case orderIntegrationId = "order_integration_id"

            case journeyType = "journey_type"

            case reasons

            case meta

            case item

            case financialBreakup = "financial_breakup"

            case bagId = "bag_id"

            case bagUpdateTime = "bag_update_time"

            case brand

            case displayName = "display_name"

            case bagStatus = "bag_status"

            case article

            case dates

            case gstDetails = "gst_details"

            case entityType = "entity_type"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.currentOperationalStatus = currentOperationalStatus

            self.affiliateBagDetails = affiliateBagDetails

            self.status = status

            self.bId = bId

            self.paymentMethods = paymentMethods

            self.bType = bType

            self.prices = prices

            self.currentStatus = currentStatus

            self.appliedPromos = appliedPromos

            self.orderIntegrationId = orderIntegrationId

            self.journeyType = journeyType

            self.reasons = reasons

            self.meta = meta

            self.item = item

            self.financialBreakup = financialBreakup

            self.bagId = bagId

            self.bagUpdateTime = bagUpdateTime

            self.brand = brand

            self.displayName = displayName

            self.bagStatus = bagStatus

            self.article = article

            self.dates = dates

            self.gstDetails = gstDetails

            self.entityType = entityType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            bId = try container.decode(Int.self, forKey: .bId)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            article = try container.decode(Article.self, forKey: .article)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(entityType, forKey: .entityType)
        }
    }
}
