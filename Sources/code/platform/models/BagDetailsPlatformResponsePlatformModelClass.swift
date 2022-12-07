

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Orders
     */

    class BagDetailsPlatformResponse: Codable {
        public var affiliateBagDetails: AffiliateBagDetails

        public var sellerIdentifier: String?

        public var operationalStatus: String?

        public var noOfBagsOrder: Int?

        public var bagStatusHistory: BagStatusHistory?

        public var parentPromoBags: [String: Any]?

        public var shipmentId: String?

        public var journeyType: String

        public var restoreCoupon: Bool?

        public var prices: Prices

        public var tags: [String]?

        public var originalBagList: [Int]?

        public var financialBreakup: [FinancialBreakup]

        public var identifier: String?

        public var entityType: String?

        public var appliedPromos: [[String: Any]]?

        public var lineNumber: Int?

        public var quantity: Double?

        public var articleDetails: ArticleDetails?

        public var dates: Dates?

        public var bagUpdateTime: Double?

        public var gstDetails: BagGSTDetails

        public var bagStatus: [BagStatusHistory]

        public var item: Item

        public var orderIntegrationId: String?

        public var article: Article

        public var status: BagReturnableCancelableStatus

        public var bId: Int

        public var affiliateDetails: AffiliateDetails?

        public var restorePromos: [String: Any]?

        public var brand: Brand

        public var currentStatus: BagStatusHistory

        public var bType: String?

        public var orderingStore: Store?

        public var qcRequired: [String: Any]?

        public var meta: BagMeta?

        public var currentOperationalStatus: BagStatusHistory

        public var displayName: String?

        public var reasons: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case affiliateBagDetails = "affiliate_bag_details"

            case sellerIdentifier = "seller_identifier"

            case operationalStatus = "operational_status"

            case noOfBagsOrder = "no_of_bags_order"

            case bagStatusHistory = "bag_status_history"

            case parentPromoBags = "parent_promo_bags"

            case shipmentId = "shipment_id"

            case journeyType = "journey_type"

            case restoreCoupon = "restore_coupon"

            case prices

            case tags

            case originalBagList = "original_bag_list"

            case financialBreakup = "financial_breakup"

            case identifier

            case entityType = "entity_type"

            case appliedPromos = "applied_promos"

            case lineNumber = "line_number"

            case quantity

            case articleDetails = "article_details"

            case dates

            case bagUpdateTime = "bag_update_time"

            case gstDetails = "gst_details"

            case bagStatus = "bag_status"

            case item

            case orderIntegrationId = "order_integration_id"

            case article

            case status

            case bId = "b_id"

            case affiliateDetails = "affiliate_details"

            case restorePromos = "restore_promos"

            case brand

            case currentStatus = "current_status"

            case bType = "b_type"

            case orderingStore = "ordering_store"

            case qcRequired = "qc_required"

            case meta

            case currentOperationalStatus = "current_operational_status"

            case displayName = "display_name"

            case reasons
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.affiliateBagDetails = affiliateBagDetails

            self.sellerIdentifier = sellerIdentifier

            self.operationalStatus = operationalStatus

            self.noOfBagsOrder = noOfBagsOrder

            self.bagStatusHistory = bagStatusHistory

            self.parentPromoBags = parentPromoBags

            self.shipmentId = shipmentId

            self.journeyType = journeyType

            self.restoreCoupon = restoreCoupon

            self.prices = prices

            self.tags = tags

            self.originalBagList = originalBagList

            self.financialBreakup = financialBreakup

            self.identifier = identifier

            self.entityType = entityType

            self.appliedPromos = appliedPromos

            self.lineNumber = lineNumber

            self.quantity = quantity

            self.articleDetails = articleDetails

            self.dates = dates

            self.bagUpdateTime = bagUpdateTime

            self.gstDetails = gstDetails

            self.bagStatus = bagStatus

            self.item = item

            self.orderIntegrationId = orderIntegrationId

            self.article = article

            self.status = status

            self.bId = bId

            self.affiliateDetails = affiliateDetails

            self.restorePromos = restorePromos

            self.brand = brand

            self.currentStatus = currentStatus

            self.bType = bType

            self.orderingStore = orderingStore

            self.qcRequired = qcRequired

            self.meta = meta

            self.currentOperationalStatus = currentOperationalStatus

            self.displayName = displayName

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

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

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            item = try container.decode(Item.self, forKey: .item)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                bType = try container.decode(String.self, forKey: .bType)

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
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
