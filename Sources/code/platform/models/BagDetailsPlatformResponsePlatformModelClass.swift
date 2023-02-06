

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Orders
     */

    class BagDetailsPlatformResponse: Codable {
        public var articleDetails: ArticleDetails?

        public var article: Article

        public var appliedPromos: [[String: Any]]?

        public var meta: BagMeta?

        public var orderingStore: Store?

        public var item: Item

        public var bType: String?

        public var originalBagList: [Int]?

        public var quantity: Double?

        public var entityType: String?

        public var prices: Prices

        public var orderIntegrationId: String?

        public var sellerIdentifier: String?

        public var tags: [String]?

        public var currentOperationalStatus: BagStatusHistory

        public var restoreCoupon: Bool?

        public var displayName: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var restorePromos: [String: Any]?

        public var bagUpdateTime: Double?

        public var noOfBagsOrder: Int?

        public var dates: Dates?

        public var financialBreakup: [FinancialBreakup]

        public var parentPromoBags: [String: Any]?

        public var bagStatusHistory: BagStatusHistory?

        public var bagStatus: [BagStatusHistory]

        public var status: BagReturnableCancelableStatus

        public var shipmentId: String?

        public var brand: Brand

        public var bId: Int

        public var gstDetails: BagGSTDetails

        public var lineNumber: Int?

        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var identifier: String?

        public var currentStatus: BagStatusHistory

        public var operationalStatus: String?

        public var reasons: [[String: Any]]?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case articleDetails = "article_details"

            case article

            case appliedPromos = "applied_promos"

            case meta

            case orderingStore = "ordering_store"

            case item

            case bType = "b_type"

            case originalBagList = "original_bag_list"

            case quantity

            case entityType = "entity_type"

            case prices

            case orderIntegrationId = "order_integration_id"

            case sellerIdentifier = "seller_identifier"

            case tags

            case currentOperationalStatus = "current_operational_status"

            case restoreCoupon = "restore_coupon"

            case displayName = "display_name"

            case affiliateBagDetails = "affiliate_bag_details"

            case restorePromos = "restore_promos"

            case bagUpdateTime = "bag_update_time"

            case noOfBagsOrder = "no_of_bags_order"

            case dates

            case financialBreakup = "financial_breakup"

            case parentPromoBags = "parent_promo_bags"

            case bagStatusHistory = "bag_status_history"

            case bagStatus = "bag_status"

            case status

            case shipmentId = "shipment_id"

            case brand

            case bId = "b_id"

            case gstDetails = "gst_details"

            case lineNumber = "line_number"

            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case identifier

            case currentStatus = "current_status"

            case operationalStatus = "operational_status"

            case reasons

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.articleDetails = articleDetails

            self.article = article

            self.appliedPromos = appliedPromos

            self.meta = meta

            self.orderingStore = orderingStore

            self.item = item

            self.bType = bType

            self.originalBagList = originalBagList

            self.quantity = quantity

            self.entityType = entityType

            self.prices = prices

            self.orderIntegrationId = orderIntegrationId

            self.sellerIdentifier = sellerIdentifier

            self.tags = tags

            self.currentOperationalStatus = currentOperationalStatus

            self.restoreCoupon = restoreCoupon

            self.displayName = displayName

            self.affiliateBagDetails = affiliateBagDetails

            self.restorePromos = restorePromos

            self.bagUpdateTime = bagUpdateTime

            self.noOfBagsOrder = noOfBagsOrder

            self.dates = dates

            self.financialBreakup = financialBreakup

            self.parentPromoBags = parentPromoBags

            self.bagStatusHistory = bagStatusHistory

            self.bagStatus = bagStatus

            self.status = status

            self.shipmentId = shipmentId

            self.brand = brand

            self.bId = bId

            self.gstDetails = gstDetails

            self.lineNumber = lineNumber

            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.identifier = identifier

            self.currentStatus = currentStatus

            self.operationalStatus = operationalStatus

            self.reasons = reasons

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

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

            item = try container.decode(Item.self, forKey: .item)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            bId = try container.decode(Int.self, forKey: .bId)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}
