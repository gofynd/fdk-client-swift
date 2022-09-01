

import Foundation
public extension PlatformClient {
    /*
         Model: Bag
         Used By: Order
     */

    class Bag: Codable {
        public var financialBreakup: [FinancialBreakup]

        public var article: Article

        public var appliedPromos: [[String: Any]]?

        public var bType: String?

        public var brand: Brand

        public var currentOperationalStatus: BagStatusHistory

        public var paymentMethods: [String: Any]

        public var prices: Prices

        public var bagId: Int

        public var entityType: String?

        public var bId: Int

        public var dates: [String: Any]?

        public var journeyType: String

        public var currentStatus: BagStatusHistory

        public var bagStatus: [BagStatusHistory]

        public var meta: BagMeta?

        public var bagUpdateTime: Double?

        public var status: BagReturnableCancelableStatus

        public var orderIntegrationId: String?

        public var displayName: String?

        public var reasons: [[String: Any]]?

        public var affiliateBagDetails: AffiliateBagDetails

        public var item: Item

        public var gstDetails: BagGSTDetails

        public enum CodingKeys: String, CodingKey {
            case financialBreakup = "financial_breakup"

            case article

            case appliedPromos = "applied_promos"

            case bType = "b_type"

            case brand

            case currentOperationalStatus = "current_operational_status"

            case paymentMethods = "payment_methods"

            case prices

            case bagId = "bag_id"

            case entityType = "entity_type"

            case bId = "b_id"

            case dates

            case journeyType = "journey_type"

            case currentStatus = "current_status"

            case bagStatus = "bag_status"

            case meta

            case bagUpdateTime = "bag_update_time"

            case status

            case orderIntegrationId = "order_integration_id"

            case displayName = "display_name"

            case reasons

            case affiliateBagDetails = "affiliate_bag_details"

            case item

            case gstDetails = "gst_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.financialBreakup = financialBreakup

            self.article = article

            self.appliedPromos = appliedPromos

            self.bType = bType

            self.brand = brand

            self.currentOperationalStatus = currentOperationalStatus

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.bagId = bagId

            self.entityType = entityType

            self.bId = bId

            self.dates = dates

            self.journeyType = journeyType

            self.currentStatus = currentStatus

            self.bagStatus = bagStatus

            self.meta = meta

            self.bagUpdateTime = bagUpdateTime

            self.status = status

            self.orderIntegrationId = orderIntegrationId

            self.displayName = displayName

            self.reasons = reasons

            self.affiliateBagDetails = affiliateBagDetails

            self.item = item

            self.gstDetails = gstDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            article = try container.decode(Article.self, forKey: .article)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            prices = try container.decode(Prices.self, forKey: .prices)

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

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

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            item = try container.decode(Item.self, forKey: .item)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
        }
    }
}
