

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var displayName: String?

        public var orderingStore: Store?

        public var quantity: Double?

        public var lineNumber: Int?

        public var item: Item

        public var dates: Dates?

        public var shipmentId: String?

        public var status: BagReturnableCancelableStatus

        public var appliedPromos: [[String: Any]]?

        public var meta: BagMeta?

        public var bagUpdateTime: Double?

        public var noOfBagsOrder: Int?

        public var sellerIdentifier: String?

        public var articleDetails: ArticleDetails?

        public var brand: Brand

        public var currentOperationalStatus: BagStatusHistory

        public var restoreCoupon: Bool?

        public var orderIntegrationId: String?

        public var qcRequired: [String: Any]?

        public var tags: [String]?

        public var bagStatusHistory: BagStatusHistory?

        public var affiliateDetails: AffiliateDetails?

        public var bId: Int

        public var currentStatus: BagStatusHistory

        public var bType: String?

        public var identifier: String?

        public var prices: Prices

        public var parentPromoBags: [String: Any]?

        public var financialBreakup: [FinancialBreakup]

        public var operationalStatus: String?

        public var bagStatus: [BagStatusHistory]

        public var originalBagList: [Int]?

        public var journeyType: String

        public var entityType: String?

        public var restorePromos: [String: Any]?

        public var gstDetails: BagGSTDetails

        public var affiliateBagDetails: AffiliateBagDetails

        public var reasons: [[String: Any]]?

        public var article: Article

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case orderingStore = "ordering_store"

            case quantity

            case lineNumber = "line_number"

            case item

            case dates

            case shipmentId = "shipment_id"

            case status

            case appliedPromos = "applied_promos"

            case meta

            case bagUpdateTime = "bag_update_time"

            case noOfBagsOrder = "no_of_bags_order"

            case sellerIdentifier = "seller_identifier"

            case articleDetails = "article_details"

            case brand

            case currentOperationalStatus = "current_operational_status"

            case restoreCoupon = "restore_coupon"

            case orderIntegrationId = "order_integration_id"

            case qcRequired = "qc_required"

            case tags

            case bagStatusHistory = "bag_status_history"

            case affiliateDetails = "affiliate_details"

            case bId = "b_id"

            case currentStatus = "current_status"

            case bType = "b_type"

            case identifier

            case prices

            case parentPromoBags = "parent_promo_bags"

            case financialBreakup = "financial_breakup"

            case operationalStatus = "operational_status"

            case bagStatus = "bag_status"

            case originalBagList = "original_bag_list"

            case journeyType = "journey_type"

            case entityType = "entity_type"

            case restorePromos = "restore_promos"

            case gstDetails = "gst_details"

            case affiliateBagDetails = "affiliate_bag_details"

            case reasons

            case article
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.displayName = displayName

            self.orderingStore = orderingStore

            self.quantity = quantity

            self.lineNumber = lineNumber

            self.item = item

            self.dates = dates

            self.shipmentId = shipmentId

            self.status = status

            self.appliedPromos = appliedPromos

            self.meta = meta

            self.bagUpdateTime = bagUpdateTime

            self.noOfBagsOrder = noOfBagsOrder

            self.sellerIdentifier = sellerIdentifier

            self.articleDetails = articleDetails

            self.brand = brand

            self.currentOperationalStatus = currentOperationalStatus

            self.restoreCoupon = restoreCoupon

            self.orderIntegrationId = orderIntegrationId

            self.qcRequired = qcRequired

            self.tags = tags

            self.bagStatusHistory = bagStatusHistory

            self.affiliateDetails = affiliateDetails

            self.bId = bId

            self.currentStatus = currentStatus

            self.bType = bType

            self.identifier = identifier

            self.prices = prices

            self.parentPromoBags = parentPromoBags

            self.financialBreakup = financialBreakup

            self.operationalStatus = operationalStatus

            self.bagStatus = bagStatus

            self.originalBagList = originalBagList

            self.journeyType = journeyType

            self.entityType = entityType

            self.restorePromos = restorePromos

            self.gstDetails = gstDetails

            self.affiliateBagDetails = affiliateBagDetails

            self.reasons = reasons

            self.article = article
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

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

            item = try container.decode(Item.self, forKey: .item)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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

            bId = try container.decode(Int.self, forKey: .bId)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                bType = try container.decode(String.self, forKey: .bType)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(article, forKey: .article)
        }
    }
}
