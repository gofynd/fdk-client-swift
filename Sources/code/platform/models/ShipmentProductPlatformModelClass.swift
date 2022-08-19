

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentProduct
         Used By: Order
     */

    class ShipmentProduct: Codable {
        public var item: Item

        public var entityType: String?

        public var meta: BagMeta?

        public var journeyType: String

        public var bId: Int

        public var dates: [String: Any]?

        public var displayName: String?

        public var appliedPromos: [[String: Any]]?

        public var bagId: Int

        public var bType: String?

        public var status: BagReturnableCancelableStatus

        public var gstDetails: BagGSTDetails

        public var reasons: [[String: Any]]?

        public var currentOperationalStatus: BagStatusHistory

        public var affiliateBagDetails: AffiliateBagDetails

        public var bagUpdateTime: Double?

        public var currentStatus: BagStatusHistory

        public var prices: Prices

        public var brand: Brand

        public var article: Article

        public var financialBreakup: [FinancialBreakup]

        public var orderIntegrationId: String?

        public var paymentMethods: [String: Any]

        public var bagStatus: [BagStatusHistory]

        public enum CodingKeys: String, CodingKey {
            case item

            case entityType = "entity_type"

            case meta

            case journeyType = "journey_type"

            case bId = "b_id"

            case dates

            case displayName = "display_name"

            case appliedPromos = "applied_promos"

            case bagId = "bag_id"

            case bType = "b_type"

            case status

            case gstDetails = "gst_details"

            case reasons

            case currentOperationalStatus = "current_operational_status"

            case affiliateBagDetails = "affiliate_bag_details"

            case bagUpdateTime = "bag_update_time"

            case currentStatus = "current_status"

            case prices

            case brand

            case article

            case financialBreakup = "financial_breakup"

            case orderIntegrationId = "order_integration_id"

            case paymentMethods = "payment_methods"

            case bagStatus = "bag_status"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.item = item

            self.entityType = entityType

            self.meta = meta

            self.journeyType = journeyType

            self.bId = bId

            self.dates = dates

            self.displayName = displayName

            self.appliedPromos = appliedPromos

            self.bagId = bagId

            self.bType = bType

            self.status = status

            self.gstDetails = gstDetails

            self.reasons = reasons

            self.currentOperationalStatus = currentOperationalStatus

            self.affiliateBagDetails = affiliateBagDetails

            self.bagUpdateTime = bagUpdateTime

            self.currentStatus = currentStatus

            self.prices = prices

            self.brand = brand

            self.article = article

            self.financialBreakup = financialBreakup

            self.orderIntegrationId = orderIntegrationId

            self.paymentMethods = paymentMethods

            self.bagStatus = bagStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            item = try container.decode(Item.self, forKey: .item)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

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
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagId = try container.decode(Int.self, forKey: .bagId)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            prices = try container.decode(Prices.self, forKey: .prices)

            brand = try container.decode(Brand.self, forKey: .brand)

            article = try container.decode(Article.self, forKey: .article)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
        }
    }
}
