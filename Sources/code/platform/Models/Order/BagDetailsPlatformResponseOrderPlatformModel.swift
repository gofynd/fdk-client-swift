

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var appliedPromos: [[String: Any]]?

        public var article: Article

        public var meta: BagMeta?

        public var bagStatus: [BagStatusHistory]

        public var bId: Int

        public var status: BagReturnableCancelableStatus

        public var gstDetails: BagGSTDetails

        public var shipmentId: String?

        public var bType: String?

        public var currentStatus: BagStatusHistory

        public var operationalStatus: String?

        public var financialBreakup: [FinancialBreakup]

        public var identifier: String?

        public var restoreCoupon: Bool?

        public var originalBagList: [Int]?

        public var bagStatusHistory: BagStatusHistory?

        public var entityType: String?

        public var dates: Dates?

        public var noOfBagsOrder: Int?

        public var restorePromos: [String: Any]?

        public var reasons: [[String: Any]]?

        public var quantity: Double?

        public var affiliateBagDetails: AffiliateBagDetails

        public var sellerIdentifier: String?

        public var lineNumber: Int?

        public var qcRequired: [String: Any]?

        public var displayName: String?

        public var journeyType: String

        public var brand: Brand

        public var parentPromoBags: [String: Any]?

        public var item: Item

        public var orderingStore: Store?

        public var bagUpdateTime: Double?

        public var orderIntegrationId: String?

        public var tags: [String]?

        public var prices: Prices

        public var currentOperationalStatus: BagStatusHistory

        public var articleDetails: ArticleDetails?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case appliedPromos = "applied_promos"

            case article

            case meta

            case bagStatus = "bag_status"

            case bId = "b_id"

            case status

            case gstDetails = "gst_details"

            case shipmentId = "shipment_id"

            case bType = "b_type"

            case currentStatus = "current_status"

            case operationalStatus = "operational_status"

            case financialBreakup = "financial_breakup"

            case identifier

            case restoreCoupon = "restore_coupon"

            case originalBagList = "original_bag_list"

            case bagStatusHistory = "bag_status_history"

            case entityType = "entity_type"

            case dates

            case noOfBagsOrder = "no_of_bags_order"

            case restorePromos = "restore_promos"

            case reasons

            case quantity

            case affiliateBagDetails = "affiliate_bag_details"

            case sellerIdentifier = "seller_identifier"

            case lineNumber = "line_number"

            case qcRequired = "qc_required"

            case displayName = "display_name"

            case journeyType = "journey_type"

            case brand

            case parentPromoBags = "parent_promo_bags"

            case item

            case orderingStore = "ordering_store"

            case bagUpdateTime = "bag_update_time"

            case orderIntegrationId = "order_integration_id"

            case tags

            case prices

            case currentOperationalStatus = "current_operational_status"

            case articleDetails = "article_details"

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.appliedPromos = appliedPromos

            self.article = article

            self.meta = meta

            self.bagStatus = bagStatus

            self.bId = bId

            self.status = status

            self.gstDetails = gstDetails

            self.shipmentId = shipmentId

            self.bType = bType

            self.currentStatus = currentStatus

            self.operationalStatus = operationalStatus

            self.financialBreakup = financialBreakup

            self.identifier = identifier

            self.restoreCoupon = restoreCoupon

            self.originalBagList = originalBagList

            self.bagStatusHistory = bagStatusHistory

            self.entityType = entityType

            self.dates = dates

            self.noOfBagsOrder = noOfBagsOrder

            self.restorePromos = restorePromos

            self.reasons = reasons

            self.quantity = quantity

            self.affiliateBagDetails = affiliateBagDetails

            self.sellerIdentifier = sellerIdentifier

            self.lineNumber = lineNumber

            self.qcRequired = qcRequired

            self.displayName = displayName

            self.journeyType = journeyType

            self.brand = brand

            self.parentPromoBags = parentPromoBags

            self.item = item

            self.orderingStore = orderingStore

            self.bagUpdateTime = bagUpdateTime

            self.orderIntegrationId = orderIntegrationId

            self.tags = tags

            self.prices = prices

            self.currentOperationalStatus = currentOperationalStatus

            self.articleDetails = articleDetails

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            bId = try container.decode(Int.self, forKey: .bId)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                dates = try container.decode(Dates.self, forKey: .dates)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
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

        public var article: Article

        public var meta: BagMeta?

        public var bagStatus: [BagStatusHistory]

        public var bId: Int

        public var status: BagReturnableCancelableStatus

        public var gstDetails: BagGSTDetails

        public var shipmentId: String?

        public var bType: String?

        public var currentStatus: BagStatusHistory

        public var operationalStatus: String?

        public var financialBreakup: [FinancialBreakup]

        public var identifier: String?

        public var restoreCoupon: Bool?

        public var originalBagList: [Int]?

        public var bagStatusHistory: BagStatusHistory?

        public var entityType: String?

        public var dates: Dates?

        public var noOfBagsOrder: Int?

        public var restorePromos: [String: Any]?

        public var reasons: [[String: Any]]?

        public var quantity: Double?

        public var affiliateBagDetails: AffiliateBagDetails

        public var sellerIdentifier: String?

        public var lineNumber: Int?

        public var qcRequired: [String: Any]?

        public var displayName: String?

        public var journeyType: String

        public var brand: Brand

        public var parentPromoBags: [String: Any]?

        public var item: Item

        public var orderingStore: Store?

        public var bagUpdateTime: Double?

        public var orderIntegrationId: String?

        public var tags: [String]?

        public var prices: Prices

        public var currentOperationalStatus: BagStatusHistory

        public var articleDetails: ArticleDetails?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case appliedPromos = "applied_promos"

            case article

            case meta

            case bagStatus = "bag_status"

            case bId = "b_id"

            case status

            case gstDetails = "gst_details"

            case shipmentId = "shipment_id"

            case bType = "b_type"

            case currentStatus = "current_status"

            case operationalStatus = "operational_status"

            case financialBreakup = "financial_breakup"

            case identifier

            case restoreCoupon = "restore_coupon"

            case originalBagList = "original_bag_list"

            case bagStatusHistory = "bag_status_history"

            case entityType = "entity_type"

            case dates

            case noOfBagsOrder = "no_of_bags_order"

            case restorePromos = "restore_promos"

            case reasons

            case quantity

            case affiliateBagDetails = "affiliate_bag_details"

            case sellerIdentifier = "seller_identifier"

            case lineNumber = "line_number"

            case qcRequired = "qc_required"

            case displayName = "display_name"

            case journeyType = "journey_type"

            case brand

            case parentPromoBags = "parent_promo_bags"

            case item

            case orderingStore = "ordering_store"

            case bagUpdateTime = "bag_update_time"

            case orderIntegrationId = "order_integration_id"

            case tags

            case prices

            case currentOperationalStatus = "current_operational_status"

            case articleDetails = "article_details"

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.appliedPromos = appliedPromos

            self.article = article

            self.meta = meta

            self.bagStatus = bagStatus

            self.bId = bId

            self.status = status

            self.gstDetails = gstDetails

            self.shipmentId = shipmentId

            self.bType = bType

            self.currentStatus = currentStatus

            self.operationalStatus = operationalStatus

            self.financialBreakup = financialBreakup

            self.identifier = identifier

            self.restoreCoupon = restoreCoupon

            self.originalBagList = originalBagList

            self.bagStatusHistory = bagStatusHistory

            self.entityType = entityType

            self.dates = dates

            self.noOfBagsOrder = noOfBagsOrder

            self.restorePromos = restorePromos

            self.reasons = reasons

            self.quantity = quantity

            self.affiliateBagDetails = affiliateBagDetails

            self.sellerIdentifier = sellerIdentifier

            self.lineNumber = lineNumber

            self.qcRequired = qcRequired

            self.displayName = displayName

            self.journeyType = journeyType

            self.brand = brand

            self.parentPromoBags = parentPromoBags

            self.item = item

            self.orderingStore = orderingStore

            self.bagUpdateTime = bagUpdateTime

            self.orderIntegrationId = orderIntegrationId

            self.tags = tags

            self.prices = prices

            self.currentOperationalStatus = currentOperationalStatus

            self.articleDetails = articleDetails

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            bId = try container.decode(Int.self, forKey: .bId)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                dates = try container.decode(Dates.self, forKey: .dates)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

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

            prices = try container.decode(Prices.self, forKey: .prices)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)

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

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}
