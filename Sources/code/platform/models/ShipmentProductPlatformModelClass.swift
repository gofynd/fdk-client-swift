

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentProduct
         Used By: Order
     */

    class ShipmentProduct: Codable {
        public var orderIntegrationId: String?

        public var prices: Prices

        public var bagUpdateTime: Double?

        public var bType: String?

        public var financialBreakup: [FinancialBreakup]

        public var item: Item

        public var meta: BagMeta?

        public var brand: Brand

        public var appliedPromos: [[String: Any]]?

        public var gstDetails: BagGSTDetails

        public var bId: Int

        public var currentStatus: BagStatusHistory

        public var bagId: Int

        public var article: Article

        public var displayName: String?

        public var journeyType: String

        public var entityType: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var reasons: [[String: Any]]?

        public var paymentMethods: [String: Any]

        public var status: BagReturnableCancelableStatus

        public var bagStatus: [BagStatusHistory]

        public var currentOperationalStatus: BagStatusHistory

        public var dates: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case orderIntegrationId = "order_integration_id"

            case prices

            case bagUpdateTime = "bag_update_time"

            case bType = "b_type"

            case financialBreakup = "financial_breakup"

            case item

            case meta

            case brand

            case appliedPromos = "applied_promos"

            case gstDetails = "gst_details"

            case bId = "b_id"

            case currentStatus = "current_status"

            case bagId = "bag_id"

            case article

            case displayName = "display_name"

            case journeyType = "journey_type"

            case entityType = "entity_type"

            case affiliateBagDetails = "affiliate_bag_details"

            case reasons

            case paymentMethods = "payment_methods"

            case status

            case bagStatus = "bag_status"

            case currentOperationalStatus = "current_operational_status"

            case dates
        }

        public init(affiliateBagDetails: AffiliateBagDetails, appliedPromos: [[String: Any]]? = nil, article: Article, bagId: Int, bagStatus: [BagStatusHistory], bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: [String: Any]? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, item: Item, journeyType: String, meta: BagMeta? = nil, orderIntegrationId: String? = nil, paymentMethods: [String: Any], prices: Prices, reasons: [[String: Any]]? = nil, status: BagReturnableCancelableStatus) {
            self.orderIntegrationId = orderIntegrationId

            self.prices = prices

            self.bagUpdateTime = bagUpdateTime

            self.bType = bType

            self.financialBreakup = financialBreakup

            self.item = item

            self.meta = meta

            self.brand = brand

            self.appliedPromos = appliedPromos

            self.gstDetails = gstDetails

            self.bId = bId

            self.currentStatus = currentStatus

            self.bagId = bagId

            self.article = article

            self.displayName = displayName

            self.journeyType = journeyType

            self.entityType = entityType

            self.affiliateBagDetails = affiliateBagDetails

            self.reasons = reasons

            self.paymentMethods = paymentMethods

            self.status = status

            self.bagStatus = bagStatus

            self.currentOperationalStatus = currentOperationalStatus

            self.dates = dates
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            item = try container.decode(Item.self, forKey: .item)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            bId = try container.decode(Int.self, forKey: .bId)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            bagId = try container.decode(Int.self, forKey: .bagId)

            article = try container.decode(Article.self, forKey: .article)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                dates = try container.decode([String: Any].self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bagId, forKey: .bagId)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)
        }
    }
}
