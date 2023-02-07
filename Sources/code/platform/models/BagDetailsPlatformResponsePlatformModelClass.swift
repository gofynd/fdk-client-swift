

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var status: BagReturnableCancelableStatus

        public var item: Item

        public var affiliateBagDetails: AffiliateBagDetails

        public var lineNumber: Int?

        public var restoreCoupon: Bool?

        public var journeyType: String

        public var bagStatusHistory: BagStatusHistory?

        public var bType: String?

        public var quantity: Double?

        public var displayName: String?

        public var brand: Brand

        public var currentStatus: BagStatusHistory

        public var dates: Dates?

        public var bId: Int

        public var bagStatus: [BagStatusHistory]

        public var sellerIdentifier: String?

        public var shipmentId: String?

        public var operationalStatus: String?

        public var identifier: String?

        public var bagUpdateTime: Double?

        public var orderIntegrationId: String?

        public var tags: [String]?

        public var affiliateDetails: AffiliateDetails?

        public var parentPromoBags: [String: Any]?

        public var article: Article

        public var financialBreakup: [FinancialBreakup]

        public var entityType: String?

        public var originalBagList: [Int]?

        public var gstDetails: BagGSTDetails

        public var qcRequired: [String: Any]?

        public var currentOperationalStatus: BagStatusHistory

        public var meta: BagMeta?

        public var restorePromos: [String: Any]?

        public var orderingStore: Store?

        public var prices: Prices

        public var noOfBagsOrder: Int?

        public var reasons: [[String: Any]]?

        public var articleDetails: ArticleDetails?

        public var appliedPromos: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case status

            case item

            case affiliateBagDetails = "affiliate_bag_details"

            case lineNumber = "line_number"

            case restoreCoupon = "restore_coupon"

            case journeyType = "journey_type"

            case bagStatusHistory = "bag_status_history"

            case bType = "b_type"

            case quantity

            case displayName = "display_name"

            case brand

            case currentStatus = "current_status"

            case dates

            case bId = "b_id"

            case bagStatus = "bag_status"

            case sellerIdentifier = "seller_identifier"

            case shipmentId = "shipment_id"

            case operationalStatus = "operational_status"

            case identifier

            case bagUpdateTime = "bag_update_time"

            case orderIntegrationId = "order_integration_id"

            case tags

            case affiliateDetails = "affiliate_details"

            case parentPromoBags = "parent_promo_bags"

            case article

            case financialBreakup = "financial_breakup"

            case entityType = "entity_type"

            case originalBagList = "original_bag_list"

            case gstDetails = "gst_details"

            case qcRequired = "qc_required"

            case currentOperationalStatus = "current_operational_status"

            case meta

            case restorePromos = "restore_promos"

            case orderingStore = "ordering_store"

            case prices

            case noOfBagsOrder = "no_of_bags_order"

            case reasons

            case articleDetails = "article_details"

            case appliedPromos = "applied_promos"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.status = status

            self.item = item

            self.affiliateBagDetails = affiliateBagDetails

            self.lineNumber = lineNumber

            self.restoreCoupon = restoreCoupon

            self.journeyType = journeyType

            self.bagStatusHistory = bagStatusHistory

            self.bType = bType

            self.quantity = quantity

            self.displayName = displayName

            self.brand = brand

            self.currentStatus = currentStatus

            self.dates = dates

            self.bId = bId

            self.bagStatus = bagStatus

            self.sellerIdentifier = sellerIdentifier

            self.shipmentId = shipmentId

            self.operationalStatus = operationalStatus

            self.identifier = identifier

            self.bagUpdateTime = bagUpdateTime

            self.orderIntegrationId = orderIntegrationId

            self.tags = tags

            self.affiliateDetails = affiliateDetails

            self.parentPromoBags = parentPromoBags

            self.article = article

            self.financialBreakup = financialBreakup

            self.entityType = entityType

            self.originalBagList = originalBagList

            self.gstDetails = gstDetails

            self.qcRequired = qcRequired

            self.currentOperationalStatus = currentOperationalStatus

            self.meta = meta

            self.restorePromos = restorePromos

            self.orderingStore = orderingStore

            self.prices = prices

            self.noOfBagsOrder = noOfBagsOrder

            self.reasons = reasons

            self.articleDetails = articleDetails

            self.appliedPromos = appliedPromos
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            item = try container.decode(Item.self, forKey: .item)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)
        }
    }
}
