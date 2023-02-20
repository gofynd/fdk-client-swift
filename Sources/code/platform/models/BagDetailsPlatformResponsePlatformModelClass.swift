

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var restorePromos: [String: Any]?

        public var parentPromoBags: [String: Any]?

        public var bagStatus: [BagStatusHistory]

        public var appliedPromos: [[String: Any]]?

        public var meta: BagMeta?

        public var orderingStore: Store?

        public var restoreCoupon: Bool?

        public var dates: Dates?

        public var bType: String?

        public var prices: Prices

        public var quantity: Double?

        public var bagStatusHistory: BagStatusHistory?

        public var brand: Brand

        public var reasons: [[String: Any]]?

        public var affiliateBagDetails: AffiliateBagDetails

        public var status: BagReturnableCancelableStatus

        public var financialBreakup: [FinancialBreakup]

        public var orderIntegrationId: String?

        public var bId: Int

        public var item: Item

        public var currentOperationalStatus: BagStatusHistory

        public var noOfBagsOrder: Int?

        public var entityType: String?

        public var sellerIdentifier: String?

        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var shipmentId: String?

        public var currentStatus: BagStatusHistory

        public var originalBagList: [Int]?

        public var tags: [String]?

        public var displayName: String?

        public var affiliateDetails: AffiliateDetails?

        public var bagUpdateTime: Double?

        public var articleDetails: ArticleDetails?

        public var article: Article

        public var gstDetails: BagGSTDetails

        public var identifier: String?

        public var lineNumber: Int?

        public var operationalStatus: String?

        public enum CodingKeys: String, CodingKey {
            case restorePromos = "restore_promos"

            case parentPromoBags = "parent_promo_bags"

            case bagStatus = "bag_status"

            case appliedPromos = "applied_promos"

            case meta

            case orderingStore = "ordering_store"

            case restoreCoupon = "restore_coupon"

            case dates

            case bType = "b_type"

            case prices

            case quantity

            case bagStatusHistory = "bag_status_history"

            case brand

            case reasons

            case affiliateBagDetails = "affiliate_bag_details"

            case status

            case financialBreakup = "financial_breakup"

            case orderIntegrationId = "order_integration_id"

            case bId = "b_id"

            case item

            case currentOperationalStatus = "current_operational_status"

            case noOfBagsOrder = "no_of_bags_order"

            case entityType = "entity_type"

            case sellerIdentifier = "seller_identifier"

            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case shipmentId = "shipment_id"

            case currentStatus = "current_status"

            case originalBagList = "original_bag_list"

            case tags

            case displayName = "display_name"

            case affiliateDetails = "affiliate_details"

            case bagUpdateTime = "bag_update_time"

            case articleDetails = "article_details"

            case article

            case gstDetails = "gst_details"

            case identifier

            case lineNumber = "line_number"

            case operationalStatus = "operational_status"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.restorePromos = restorePromos

            self.parentPromoBags = parentPromoBags

            self.bagStatus = bagStatus

            self.appliedPromos = appliedPromos

            self.meta = meta

            self.orderingStore = orderingStore

            self.restoreCoupon = restoreCoupon

            self.dates = dates

            self.bType = bType

            self.prices = prices

            self.quantity = quantity

            self.bagStatusHistory = bagStatusHistory

            self.brand = brand

            self.reasons = reasons

            self.affiliateBagDetails = affiliateBagDetails

            self.status = status

            self.financialBreakup = financialBreakup

            self.orderIntegrationId = orderIntegrationId

            self.bId = bId

            self.item = item

            self.currentOperationalStatus = currentOperationalStatus

            self.noOfBagsOrder = noOfBagsOrder

            self.entityType = entityType

            self.sellerIdentifier = sellerIdentifier

            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.shipmentId = shipmentId

            self.currentStatus = currentStatus

            self.originalBagList = originalBagList

            self.tags = tags

            self.displayName = displayName

            self.affiliateDetails = affiliateDetails

            self.bagUpdateTime = bagUpdateTime

            self.articleDetails = articleDetails

            self.article = article

            self.gstDetails = gstDetails

            self.identifier = identifier

            self.lineNumber = lineNumber

            self.operationalStatus = operationalStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            item = try container.decode(Item.self, forKey: .item)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
        }
    }
}
