

import Foundation
public extension PlatformClient {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var entityType: String?

        public var shipmentId: String?

        public var affiliateDetails: AffiliateDetails?

        public var brand: Brand

        public var meta: BagMeta?

        public var parentPromoBags: [String: Any]?

        public var reasons: [[String: Any]]?

        public var bType: String?

        public var orderIntegrationId: String?

        public var qcRequired: [String: Any]?

        public var originalBagList: [Int]?

        public var tags: [String]?

        public var bId: Int

        public var affiliateBagDetails: AffiliateBagDetails

        public var displayName: String?

        public var prices: Prices

        public var sellerIdentifier: String?

        public var bagStatusHistory: BagStatusHistory?

        public var restorePromos: [String: Any]?

        public var article: Article

        public var currentStatus: BagStatusHistory

        public var dates: Dates?

        public var bagStatus: [BagStatusHistory]

        public var lineNumber: Int?

        public var quantity: Double?

        public var financialBreakup: [FinancialBreakup]

        public var gstDetails: BagGSTDetails

        public var noOfBagsOrder: Int?

        public var item: Item

        public var appliedPromos: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var currentOperationalStatus: BagStatusHistory

        public var status: BagReturnableCancelableStatus

        public var identifier: String?

        public var articleDetails: ArticleDetails?

        public var operationalStatus: String?

        public var bagUpdateTime: Double?

        public var orderingStore: Store?

        public var journeyType: String

        public enum CodingKeys: String, CodingKey {
            case entityType = "entity_type"

            case shipmentId = "shipment_id"

            case affiliateDetails = "affiliate_details"

            case brand

            case meta

            case parentPromoBags = "parent_promo_bags"

            case reasons

            case bType = "b_type"

            case orderIntegrationId = "order_integration_id"

            case qcRequired = "qc_required"

            case originalBagList = "original_bag_list"

            case tags

            case bId = "b_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case displayName = "display_name"

            case prices

            case sellerIdentifier = "seller_identifier"

            case bagStatusHistory = "bag_status_history"

            case restorePromos = "restore_promos"

            case article

            case currentStatus = "current_status"

            case dates

            case bagStatus = "bag_status"

            case lineNumber = "line_number"

            case quantity

            case financialBreakup = "financial_breakup"

            case gstDetails = "gst_details"

            case noOfBagsOrder = "no_of_bags_order"

            case item

            case appliedPromos = "applied_promos"

            case restoreCoupon = "restore_coupon"

            case currentOperationalStatus = "current_operational_status"

            case status

            case identifier

            case articleDetails = "article_details"

            case operationalStatus = "operational_status"

            case bagUpdateTime = "bag_update_time"

            case orderingStore = "ordering_store"

            case journeyType = "journey_type"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.entityType = entityType

            self.shipmentId = shipmentId

            self.affiliateDetails = affiliateDetails

            self.brand = brand

            self.meta = meta

            self.parentPromoBags = parentPromoBags

            self.reasons = reasons

            self.bType = bType

            self.orderIntegrationId = orderIntegrationId

            self.qcRequired = qcRequired

            self.originalBagList = originalBagList

            self.tags = tags

            self.bId = bId

            self.affiliateBagDetails = affiliateBagDetails

            self.displayName = displayName

            self.prices = prices

            self.sellerIdentifier = sellerIdentifier

            self.bagStatusHistory = bagStatusHistory

            self.restorePromos = restorePromos

            self.article = article

            self.currentStatus = currentStatus

            self.dates = dates

            self.bagStatus = bagStatus

            self.lineNumber = lineNumber

            self.quantity = quantity

            self.financialBreakup = financialBreakup

            self.gstDetails = gstDetails

            self.noOfBagsOrder = noOfBagsOrder

            self.item = item

            self.appliedPromos = appliedPromos

            self.restoreCoupon = restoreCoupon

            self.currentOperationalStatus = currentOperationalStatus

            self.status = status

            self.identifier = identifier

            self.articleDetails = articleDetails

            self.operationalStatus = operationalStatus

            self.bagUpdateTime = bagUpdateTime

            self.orderingStore = orderingStore

            self.journeyType = journeyType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

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
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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

            bId = try container.decode(Int.self, forKey: .bId)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

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
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
        }
    }
}
