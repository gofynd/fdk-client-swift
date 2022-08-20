

import Foundation
public extension PlatformClient {
    /*
         Model: Bag
         Used By: Order
     */

    class Bag: Codable {
        public var item: Item

        public var status: BagReturnableCancelableStatus

        public var bId: Int

        public var orderIntegrationId: String?

        public var entityType: String?

        public var appliedPromos: [[String: Any]]?

        public var article: Article

        public var displayName: String?

        public var reasons: [[String: Any]]?

        public var financialBreakup: [FinancialBreakup]

        public var paymentMethods: [String: Any]

        public var journeyType: String

        public var bagStatus: [BagStatusHistory]

        public var bType: String?

        public var currentStatus: BagStatusHistory

        public var bagUpdateTime: Double?

        public var currentOperationalStatus: BagStatusHistory

        public var meta: BagMeta?

        public var prices: Prices

        public var brand: Brand

        public var dates: [String: Any]?

        public var affiliateBagDetails: AffiliateBagDetails

        public var bagId: Int

        public var gstDetails: BagGSTDetails

        public enum CodingKeys: String, CodingKey {
            case item

            case status

            case bId = "b_id"

            case orderIntegrationId = "order_integration_id"

            case entityType = "entity_type"

            case appliedPromos = "applied_promos"

            case article

            case displayName = "display_name"

            case reasons

            case financialBreakup = "financial_breakup"

            case paymentMethods = "payment_methods"

            case journeyType = "journey_type"

            case bagStatus = "bag_status"

            case bType = "b_type"

            case currentStatus = "current_status"

            case bagUpdateTime = "bag_update_time"

            case currentOperationalStatus = "current_operational_status"

            case meta

            case prices

            case brand

            case dates

            case affiliateBagDetails = "affiliate_bag_details"

            case bagId = "bag_id"

            case gstDetails = "gst_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.item = item

            self.status = status

            self.bId = bId

            self.orderIntegrationId = orderIntegrationId

            self.entityType = entityType

            self.appliedPromos = appliedPromos

            self.article = article

            self.displayName = displayName

            self.reasons = reasons

            self.financialBreakup = financialBreakup

            self.paymentMethods = paymentMethods

            self.journeyType = journeyType

            self.bagStatus = bagStatus

            self.bType = bType

            self.currentStatus = currentStatus

            self.bagUpdateTime = bagUpdateTime

            self.currentOperationalStatus = currentOperationalStatus

            self.meta = meta

            self.prices = prices

            self.brand = brand

            self.dates = dates

            self.affiliateBagDetails = affiliateBagDetails

            self.bagId = bagId

            self.gstDetails = gstDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            item = try container.decode(Item.self, forKey: .item)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            bagId = try container.decode(Int.self, forKey: .bagId)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
        }
    }
}
