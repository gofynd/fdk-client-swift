

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var articleDetails: ArticleDetails?

        public var originalBagList: [Int]?

        public var affiliateBagDetails: AffiliateBagDetails

        public var dates: Dates?

        public var bagStatus: [BagStatusHistory]

        public var prices: Prices

        public var reasons: [[String: Any]]?

        public var lineNumber: Int?

        public var sellerIdentifier: String?

        public var shipmentId: String?

        public var currentOperationalStatus: BagStatusHistory

        public var tags: [String]?

        public var quantity: Double?

        public var bType: String?

        public var bId: Int

        public var operationalStatus: String?

        public var displayName: String?

        public var currentStatus: BagStatusHistory

        public var orderingStore: Store?

        public var parentPromoBags: [String: Any]?

        public var bagStatusHistory: BagStatusHistory?

        public var noOfBagsOrder: Int?

        public var entityType: String?

        public var restoreCoupon: Bool?

        public var bagUpdateTime: Double?

        public var identifier: String?

        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var meta: BagMeta?

        public var orderIntegrationId: String?

        public var restorePromos: [String: Any]?

        public var affiliateDetails: AffiliateDetails?

        public var item: Item

        public var brand: Brand

        public var article: Article

        public var financialBreakup: [FinancialBreakup]

        public var gstDetails: BagGSTDetails

        public var appliedPromos: [[String: Any]]?

        public var status: BagReturnableCancelableStatus

        public enum CodingKeys: String, CodingKey {
            case articleDetails = "article_details"

            case originalBagList = "original_bag_list"

            case affiliateBagDetails = "affiliate_bag_details"

            case dates

            case bagStatus = "bag_status"

            case prices

            case reasons

            case lineNumber = "line_number"

            case sellerIdentifier = "seller_identifier"

            case shipmentId = "shipment_id"

            case currentOperationalStatus = "current_operational_status"

            case tags

            case quantity

            case bType = "b_type"

            case bId = "b_id"

            case operationalStatus = "operational_status"

            case displayName = "display_name"

            case currentStatus = "current_status"

            case orderingStore = "ordering_store"

            case parentPromoBags = "parent_promo_bags"

            case bagStatusHistory = "bag_status_history"

            case noOfBagsOrder = "no_of_bags_order"

            case entityType = "entity_type"

            case restoreCoupon = "restore_coupon"

            case bagUpdateTime = "bag_update_time"

            case identifier

            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case meta

            case orderIntegrationId = "order_integration_id"

            case restorePromos = "restore_promos"

            case affiliateDetails = "affiliate_details"

            case item

            case brand

            case article

            case financialBreakup = "financial_breakup"

            case gstDetails = "gst_details"

            case appliedPromos = "applied_promos"

            case status
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.articleDetails = articleDetails

            self.originalBagList = originalBagList

            self.affiliateBagDetails = affiliateBagDetails

            self.dates = dates

            self.bagStatus = bagStatus

            self.prices = prices

            self.reasons = reasons

            self.lineNumber = lineNumber

            self.sellerIdentifier = sellerIdentifier

            self.shipmentId = shipmentId

            self.currentOperationalStatus = currentOperationalStatus

            self.tags = tags

            self.quantity = quantity

            self.bType = bType

            self.bId = bId

            self.operationalStatus = operationalStatus

            self.displayName = displayName

            self.currentStatus = currentStatus

            self.orderingStore = orderingStore

            self.parentPromoBags = parentPromoBags

            self.bagStatusHistory = bagStatusHistory

            self.noOfBagsOrder = noOfBagsOrder

            self.entityType = entityType

            self.restoreCoupon = restoreCoupon

            self.bagUpdateTime = bagUpdateTime

            self.identifier = identifier

            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.restorePromos = restorePromos

            self.affiliateDetails = affiliateDetails

            self.item = item

            self.brand = brand

            self.article = article

            self.financialBreakup = financialBreakup

            self.gstDetails = gstDetails

            self.appliedPromos = appliedPromos

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            prices = try container.decode(Prices.self, forKey: .prices)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

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

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            brand = try container.decode(Brand.self, forKey: .brand)

            article = try container.decode(Article.self, forKey: .article)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var articleDetails: ArticleDetails?

        public var originalBagList: [Int]?

        public var affiliateBagDetails: AffiliateBagDetails

        public var dates: Dates?

        public var bagStatus: [BagStatusHistory]

        public var prices: Prices

        public var reasons: [[String: Any]]?

        public var lineNumber: Int?

        public var sellerIdentifier: String?

        public var shipmentId: String?

        public var currentOperationalStatus: BagStatusHistory

        public var tags: [String]?

        public var quantity: Double?

        public var bType: String?

        public var bId: Int

        public var operationalStatus: String?

        public var displayName: String?

        public var currentStatus: BagStatusHistory

        public var orderingStore: Store?

        public var parentPromoBags: [String: Any]?

        public var bagStatusHistory: BagStatusHistory?

        public var noOfBagsOrder: Int?

        public var entityType: String?

        public var restoreCoupon: Bool?

        public var bagUpdateTime: Double?

        public var identifier: String?

        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var meta: BagMeta?

        public var orderIntegrationId: String?

        public var restorePromos: [String: Any]?

        public var affiliateDetails: AffiliateDetails?

        public var item: Item

        public var brand: Brand

        public var article: Article

        public var financialBreakup: [FinancialBreakup]

        public var gstDetails: BagGSTDetails

        public var appliedPromos: [[String: Any]]?

        public var status: BagReturnableCancelableStatus

        public enum CodingKeys: String, CodingKey {
            case articleDetails = "article_details"

            case originalBagList = "original_bag_list"

            case affiliateBagDetails = "affiliate_bag_details"

            case dates

            case bagStatus = "bag_status"

            case prices

            case reasons

            case lineNumber = "line_number"

            case sellerIdentifier = "seller_identifier"

            case shipmentId = "shipment_id"

            case currentOperationalStatus = "current_operational_status"

            case tags

            case quantity

            case bType = "b_type"

            case bId = "b_id"

            case operationalStatus = "operational_status"

            case displayName = "display_name"

            case currentStatus = "current_status"

            case orderingStore = "ordering_store"

            case parentPromoBags = "parent_promo_bags"

            case bagStatusHistory = "bag_status_history"

            case noOfBagsOrder = "no_of_bags_order"

            case entityType = "entity_type"

            case restoreCoupon = "restore_coupon"

            case bagUpdateTime = "bag_update_time"

            case identifier

            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case meta

            case orderIntegrationId = "order_integration_id"

            case restorePromos = "restore_promos"

            case affiliateDetails = "affiliate_details"

            case item

            case brand

            case article

            case financialBreakup = "financial_breakup"

            case gstDetails = "gst_details"

            case appliedPromos = "applied_promos"

            case status
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.articleDetails = articleDetails

            self.originalBagList = originalBagList

            self.affiliateBagDetails = affiliateBagDetails

            self.dates = dates

            self.bagStatus = bagStatus

            self.prices = prices

            self.reasons = reasons

            self.lineNumber = lineNumber

            self.sellerIdentifier = sellerIdentifier

            self.shipmentId = shipmentId

            self.currentOperationalStatus = currentOperationalStatus

            self.tags = tags

            self.quantity = quantity

            self.bType = bType

            self.bId = bId

            self.operationalStatus = operationalStatus

            self.displayName = displayName

            self.currentStatus = currentStatus

            self.orderingStore = orderingStore

            self.parentPromoBags = parentPromoBags

            self.bagStatusHistory = bagStatusHistory

            self.noOfBagsOrder = noOfBagsOrder

            self.entityType = entityType

            self.restoreCoupon = restoreCoupon

            self.bagUpdateTime = bagUpdateTime

            self.identifier = identifier

            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.meta = meta

            self.orderIntegrationId = orderIntegrationId

            self.restorePromos = restorePromos

            self.affiliateDetails = affiliateDetails

            self.item = item

            self.brand = brand

            self.article = article

            self.financialBreakup = financialBreakup

            self.gstDetails = gstDetails

            self.appliedPromos = appliedPromos

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            prices = try container.decode(Prices.self, forKey: .prices)

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

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

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

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            brand = try container.decode(Brand.self, forKey: .brand)

            article = try container.decode(Article.self, forKey: .article)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
