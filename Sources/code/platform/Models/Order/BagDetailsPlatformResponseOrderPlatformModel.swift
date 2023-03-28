

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var appliedPromos: [[String: Any]]?

        public var gstDetails: BagGSTDetails

        public var parentPromoBags: [String: Any]?

        public var dates: Dates?

        public var bagStatusHistory: BagStatusHistory?

        public var operationalStatus: String?

        public var meta: BagMeta?

        public var displayName: String?

        public var currentOperationalStatus: BagStatusHistory

        public var bagUpdateTime: Double?

        public var reasons: [[String: Any]]?

        public var lineNumber: Int?

        public var orderingStore: Store?

        public var journeyType: String

        public var articleDetails: ArticleDetails?

        public var qcRequired: [String: Any]?

        public var brand: Brand

        public var currentStatus: BagStatusHistory

        public var affiliateDetails: AffiliateDetails?

        public var shipmentId: String?

        public var originalBagList: [Int]?

        public var entityType: String?

        public var restoreCoupon: Bool?

        public var sellerIdentifier: String?

        public var identifier: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var bType: String?

        public var restorePromos: [String: Any]?

        public var bId: Int

        public var item: Item

        public var bagStatus: [BagStatusHistory]

        public var tags: [String]?

        public var article: Article

        public var prices: Prices

        public var noOfBagsOrder: Int?

        public var status: BagReturnableCancelableStatus

        public var quantity: Double?

        public var orderIntegrationId: String?

        public var financialBreakup: [FinancialBreakup]

        public enum CodingKeys: String, CodingKey {
            case appliedPromos = "applied_promos"

            case gstDetails = "gst_details"

            case parentPromoBags = "parent_promo_bags"

            case dates

            case bagStatusHistory = "bag_status_history"

            case operationalStatus = "operational_status"

            case meta

            case displayName = "display_name"

            case currentOperationalStatus = "current_operational_status"

            case bagUpdateTime = "bag_update_time"

            case reasons

            case lineNumber = "line_number"

            case orderingStore = "ordering_store"

            case journeyType = "journey_type"

            case articleDetails = "article_details"

            case qcRequired = "qc_required"

            case brand

            case currentStatus = "current_status"

            case affiliateDetails = "affiliate_details"

            case shipmentId = "shipment_id"

            case originalBagList = "original_bag_list"

            case entityType = "entity_type"

            case restoreCoupon = "restore_coupon"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case affiliateBagDetails = "affiliate_bag_details"

            case bType = "b_type"

            case restorePromos = "restore_promos"

            case bId = "b_id"

            case item

            case bagStatus = "bag_status"

            case tags

            case article

            case prices

            case noOfBagsOrder = "no_of_bags_order"

            case status

            case quantity

            case orderIntegrationId = "order_integration_id"

            case financialBreakup = "financial_breakup"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.appliedPromos = appliedPromos

            self.gstDetails = gstDetails

            self.parentPromoBags = parentPromoBags

            self.dates = dates

            self.bagStatusHistory = bagStatusHistory

            self.operationalStatus = operationalStatus

            self.meta = meta

            self.displayName = displayName

            self.currentOperationalStatus = currentOperationalStatus

            self.bagUpdateTime = bagUpdateTime

            self.reasons = reasons

            self.lineNumber = lineNumber

            self.orderingStore = orderingStore

            self.journeyType = journeyType

            self.articleDetails = articleDetails

            self.qcRequired = qcRequired

            self.brand = brand

            self.currentStatus = currentStatus

            self.affiliateDetails = affiliateDetails

            self.shipmentId = shipmentId

            self.originalBagList = originalBagList

            self.entityType = entityType

            self.restoreCoupon = restoreCoupon

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.affiliateBagDetails = affiliateBagDetails

            self.bType = bType

            self.restorePromos = restorePromos

            self.bId = bId

            self.item = item

            self.bagStatus = bagStatus

            self.tags = tags

            self.article = article

            self.prices = prices

            self.noOfBagsOrder = noOfBagsOrder

            self.status = status

            self.quantity = quantity

            self.orderIntegrationId = orderIntegrationId

            self.financialBreakup = financialBreakup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                meta = try container.decode(BagMeta.self, forKey: .meta)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                bType = try container.decode(String.self, forKey: .bType)

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

            bId = try container.decode(Int.self, forKey: .bId)

            item = try container.decode(Item.self, forKey: .item)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

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

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var appliedPromos: [[String: Any]]?

        public var gstDetails: BagGSTDetails

        public var parentPromoBags: [String: Any]?

        public var dates: Dates?

        public var bagStatusHistory: BagStatusHistory?

        public var operationalStatus: String?

        public var meta: BagMeta?

        public var displayName: String?

        public var currentOperationalStatus: BagStatusHistory

        public var bagUpdateTime: Double?

        public var reasons: [[String: Any]]?

        public var lineNumber: Int?

        public var orderingStore: Store?

        public var journeyType: String

        public var articleDetails: ArticleDetails?

        public var qcRequired: [String: Any]?

        public var brand: Brand

        public var currentStatus: BagStatusHistory

        public var affiliateDetails: AffiliateDetails?

        public var shipmentId: String?

        public var originalBagList: [Int]?

        public var entityType: String?

        public var restoreCoupon: Bool?

        public var sellerIdentifier: String?

        public var identifier: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var bType: String?

        public var restorePromos: [String: Any]?

        public var bId: Int

        public var item: Item

        public var bagStatus: [BagStatusHistory]

        public var tags: [String]?

        public var article: Article

        public var prices: Prices

        public var noOfBagsOrder: Int?

        public var status: BagReturnableCancelableStatus

        public var quantity: Double?

        public var orderIntegrationId: String?

        public var financialBreakup: [FinancialBreakup]

        public enum CodingKeys: String, CodingKey {
            case appliedPromos = "applied_promos"

            case gstDetails = "gst_details"

            case parentPromoBags = "parent_promo_bags"

            case dates

            case bagStatusHistory = "bag_status_history"

            case operationalStatus = "operational_status"

            case meta

            case displayName = "display_name"

            case currentOperationalStatus = "current_operational_status"

            case bagUpdateTime = "bag_update_time"

            case reasons

            case lineNumber = "line_number"

            case orderingStore = "ordering_store"

            case journeyType = "journey_type"

            case articleDetails = "article_details"

            case qcRequired = "qc_required"

            case brand

            case currentStatus = "current_status"

            case affiliateDetails = "affiliate_details"

            case shipmentId = "shipment_id"

            case originalBagList = "original_bag_list"

            case entityType = "entity_type"

            case restoreCoupon = "restore_coupon"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case affiliateBagDetails = "affiliate_bag_details"

            case bType = "b_type"

            case restorePromos = "restore_promos"

            case bId = "b_id"

            case item

            case bagStatus = "bag_status"

            case tags

            case article

            case prices

            case noOfBagsOrder = "no_of_bags_order"

            case status

            case quantity

            case orderIntegrationId = "order_integration_id"

            case financialBreakup = "financial_breakup"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.appliedPromos = appliedPromos

            self.gstDetails = gstDetails

            self.parentPromoBags = parentPromoBags

            self.dates = dates

            self.bagStatusHistory = bagStatusHistory

            self.operationalStatus = operationalStatus

            self.meta = meta

            self.displayName = displayName

            self.currentOperationalStatus = currentOperationalStatus

            self.bagUpdateTime = bagUpdateTime

            self.reasons = reasons

            self.lineNumber = lineNumber

            self.orderingStore = orderingStore

            self.journeyType = journeyType

            self.articleDetails = articleDetails

            self.qcRequired = qcRequired

            self.brand = brand

            self.currentStatus = currentStatus

            self.affiliateDetails = affiliateDetails

            self.shipmentId = shipmentId

            self.originalBagList = originalBagList

            self.entityType = entityType

            self.restoreCoupon = restoreCoupon

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.affiliateBagDetails = affiliateBagDetails

            self.bType = bType

            self.restorePromos = restorePromos

            self.bId = bId

            self.item = item

            self.bagStatus = bagStatus

            self.tags = tags

            self.article = article

            self.prices = prices

            self.noOfBagsOrder = noOfBagsOrder

            self.status = status

            self.quantity = quantity

            self.orderIntegrationId = orderIntegrationId

            self.financialBreakup = financialBreakup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                meta = try container.decode(BagMeta.self, forKey: .meta)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                bType = try container.decode(String.self, forKey: .bType)

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

            bId = try container.decode(Int.self, forKey: .bId)

            item = try container.decode(Item.self, forKey: .item)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

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

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
        }
    }
}
