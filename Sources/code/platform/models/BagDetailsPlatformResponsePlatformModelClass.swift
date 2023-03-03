

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var currentStatus: BagStatusHistory

        public var article: Article

        public var operationalStatus: String?

        public var gstDetails: BagGSTDetails

        public var dates: Dates?

        public var orderingStore: Store?

        public var articleDetails: ArticleDetails?

        public var bagUpdateTime: Double?

        public var bId: Int

        public var currentOperationalStatus: BagStatusHistory

        public var financialBreakup: [FinancialBreakup]

        public var quantity: Double?

        public var brand: Brand

        public var noOfBagsOrder: Int?

        public var appliedPromos: [[String: Any]]?

        public var bagStatus: [BagStatusHistory]

        public var lineNumber: Int?

        public var qcRequired: [String: Any]?

        public var sellerIdentifier: String?

        public var restorePromos: [String: Any]?

        public var journeyType: String

        public var identifier: String?

        public var bType: String?

        public var item: Item

        public var status: BagReturnableCancelableStatus

        public var bagStatusHistory: BagStatusHistory?

        public var restoreCoupon: Bool?

        public var shipmentId: String?

        public var meta: BagMeta?

        public var entityType: String?

        public var orderIntegrationId: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var originalBagList: [Int]?

        public var displayName: String?

        public var reasons: [[String: Any]]?

        public var parentPromoBags: [String: Any]?

        public var tags: [String]?

        public var prices: Prices

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case currentStatus = "current_status"

            case article

            case operationalStatus = "operational_status"

            case gstDetails = "gst_details"

            case dates

            case orderingStore = "ordering_store"

            case articleDetails = "article_details"

            case bagUpdateTime = "bag_update_time"

            case bId = "b_id"

            case currentOperationalStatus = "current_operational_status"

            case financialBreakup = "financial_breakup"

            case quantity

            case brand

            case noOfBagsOrder = "no_of_bags_order"

            case appliedPromos = "applied_promos"

            case bagStatus = "bag_status"

            case lineNumber = "line_number"

            case qcRequired = "qc_required"

            case sellerIdentifier = "seller_identifier"

            case restorePromos = "restore_promos"

            case journeyType = "journey_type"

            case identifier

            case bType = "b_type"

            case item

            case status

            case bagStatusHistory = "bag_status_history"

            case restoreCoupon = "restore_coupon"

            case shipmentId = "shipment_id"

            case meta

            case entityType = "entity_type"

            case orderIntegrationId = "order_integration_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case originalBagList = "original_bag_list"

            case displayName = "display_name"

            case reasons

            case parentPromoBags = "parent_promo_bags"

            case tags

            case prices

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.currentStatus = currentStatus

            self.article = article

            self.operationalStatus = operationalStatus

            self.gstDetails = gstDetails

            self.dates = dates

            self.orderingStore = orderingStore

            self.articleDetails = articleDetails

            self.bagUpdateTime = bagUpdateTime

            self.bId = bId

            self.currentOperationalStatus = currentOperationalStatus

            self.financialBreakup = financialBreakup

            self.quantity = quantity

            self.brand = brand

            self.noOfBagsOrder = noOfBagsOrder

            self.appliedPromos = appliedPromos

            self.bagStatus = bagStatus

            self.lineNumber = lineNumber

            self.qcRequired = qcRequired

            self.sellerIdentifier = sellerIdentifier

            self.restorePromos = restorePromos

            self.journeyType = journeyType

            self.identifier = identifier

            self.bType = bType

            self.item = item

            self.status = status

            self.bagStatusHistory = bagStatusHistory

            self.restoreCoupon = restoreCoupon

            self.shipmentId = shipmentId

            self.meta = meta

            self.entityType = entityType

            self.orderIntegrationId = orderIntegrationId

            self.affiliateBagDetails = affiliateBagDetails

            self.originalBagList = originalBagList

            self.displayName = displayName

            self.reasons = reasons

            self.parentPromoBags = parentPromoBags

            self.tags = tags

            self.prices = prices

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            article = try container.decode(Article.self, forKey: .article)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            bId = try container.decode(Int.self, forKey: .bId)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

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

            item = try container.decode(Item.self, forKey: .item)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
                entityType = try container.decode(String.self, forKey: .entityType)

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

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}
