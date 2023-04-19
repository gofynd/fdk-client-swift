

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var affiliateBagDetails: AffiliateBagDetails

        public var currentOperationalStatus: BagStatusHistory

        public var originalBagList: [Int]?

        public var shipmentId: String?

        public var currentStatus: BagStatusHistory

        public var brand: Brand

        public var identifier: String?

        public var status: BagReturnableCancelableStatus

        public var journeyType: String

        public var affiliateDetails: AffiliateDetails?

        public var bagStatusHistory: BagStatusHistory?

        public var quantity: Double?

        public var article: Article

        public var appliedPromos: [[String: Any]]?

        public var entityType: String?

        public var parentPromoBags: [String: Any]?

        public var dates: Dates?

        public var qcRequired: [String: Any]?

        public var restoreCoupon: Bool?

        public var sellerIdentifier: String?

        public var restorePromos: [String: Any]?

        public var orderIntegrationId: String?

        public var reasons: [[String: Any]]?

        public var articleDetails: ArticleDetails?

        public var bagUpdateTime: Double?

        public var displayName: String?

        public var bagStatus: [BagStatusHistory]

        public var lineNumber: Int?

        public var item: Item

        public var gstDetails: BagGSTDetails

        public var orderingStore: Store?

        public var tags: [String]?

        public var bType: String?

        public var noOfBagsOrder: Int?

        public var meta: BagMeta?

        public var bId: Int

        public var financialBreakup: [FinancialBreakup]

        public var prices: Prices

        public var operationalStatus: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateBagDetails = "affiliate_bag_details"

            case currentOperationalStatus = "current_operational_status"

            case originalBagList = "original_bag_list"

            case shipmentId = "shipment_id"

            case currentStatus = "current_status"

            case brand

            case identifier

            case status

            case journeyType = "journey_type"

            case affiliateDetails = "affiliate_details"

            case bagStatusHistory = "bag_status_history"

            case quantity

            case article

            case appliedPromos = "applied_promos"

            case entityType = "entity_type"

            case parentPromoBags = "parent_promo_bags"

            case dates

            case qcRequired = "qc_required"

            case restoreCoupon = "restore_coupon"

            case sellerIdentifier = "seller_identifier"

            case restorePromos = "restore_promos"

            case orderIntegrationId = "order_integration_id"

            case reasons

            case articleDetails = "article_details"

            case bagUpdateTime = "bag_update_time"

            case displayName = "display_name"

            case bagStatus = "bag_status"

            case lineNumber = "line_number"

            case item

            case gstDetails = "gst_details"

            case orderingStore = "ordering_store"

            case tags

            case bType = "b_type"

            case noOfBagsOrder = "no_of_bags_order"

            case meta

            case bId = "b_id"

            case financialBreakup = "financial_breakup"

            case prices

            case operationalStatus = "operational_status"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.affiliateBagDetails = affiliateBagDetails

            self.currentOperationalStatus = currentOperationalStatus

            self.originalBagList = originalBagList

            self.shipmentId = shipmentId

            self.currentStatus = currentStatus

            self.brand = brand

            self.identifier = identifier

            self.status = status

            self.journeyType = journeyType

            self.affiliateDetails = affiliateDetails

            self.bagStatusHistory = bagStatusHistory

            self.quantity = quantity

            self.article = article

            self.appliedPromos = appliedPromos

            self.entityType = entityType

            self.parentPromoBags = parentPromoBags

            self.dates = dates

            self.qcRequired = qcRequired

            self.restoreCoupon = restoreCoupon

            self.sellerIdentifier = sellerIdentifier

            self.restorePromos = restorePromos

            self.orderIntegrationId = orderIntegrationId

            self.reasons = reasons

            self.articleDetails = articleDetails

            self.bagUpdateTime = bagUpdateTime

            self.displayName = displayName

            self.bagStatus = bagStatus

            self.lineNumber = lineNumber

            self.item = item

            self.gstDetails = gstDetails

            self.orderingStore = orderingStore

            self.tags = tags

            self.bType = bType

            self.noOfBagsOrder = noOfBagsOrder

            self.meta = meta

            self.bId = bId

            self.financialBreakup = financialBreakup

            self.prices = prices

            self.operationalStatus = operationalStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

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
                entityType = try container.decode(String.self, forKey: .entityType)

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
                dates = try container.decode(Dates.self, forKey: .dates)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

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
                bType = try container.decode(String.self, forKey: .bType)

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
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var affiliateBagDetails: AffiliateBagDetails

        public var currentOperationalStatus: BagStatusHistory

        public var originalBagList: [Int]?

        public var shipmentId: String?

        public var currentStatus: BagStatusHistory

        public var brand: Brand

        public var identifier: String?

        public var status: BagReturnableCancelableStatus

        public var journeyType: String

        public var affiliateDetails: AffiliateDetails?

        public var bagStatusHistory: BagStatusHistory?

        public var quantity: Double?

        public var article: Article

        public var appliedPromos: [[String: Any]]?

        public var entityType: String?

        public var parentPromoBags: [String: Any]?

        public var dates: Dates?

        public var qcRequired: [String: Any]?

        public var restoreCoupon: Bool?

        public var sellerIdentifier: String?

        public var restorePromos: [String: Any]?

        public var orderIntegrationId: String?

        public var reasons: [[String: Any]]?

        public var articleDetails: ArticleDetails?

        public var bagUpdateTime: Double?

        public var displayName: String?

        public var bagStatus: [BagStatusHistory]

        public var lineNumber: Int?

        public var item: Item

        public var gstDetails: BagGSTDetails

        public var orderingStore: Store?

        public var tags: [String]?

        public var bType: String?

        public var noOfBagsOrder: Int?

        public var meta: BagMeta?

        public var bId: Int

        public var financialBreakup: [FinancialBreakup]

        public var prices: Prices

        public var operationalStatus: String?

        public enum CodingKeys: String, CodingKey {
            case affiliateBagDetails = "affiliate_bag_details"

            case currentOperationalStatus = "current_operational_status"

            case originalBagList = "original_bag_list"

            case shipmentId = "shipment_id"

            case currentStatus = "current_status"

            case brand

            case identifier

            case status

            case journeyType = "journey_type"

            case affiliateDetails = "affiliate_details"

            case bagStatusHistory = "bag_status_history"

            case quantity

            case article

            case appliedPromos = "applied_promos"

            case entityType = "entity_type"

            case parentPromoBags = "parent_promo_bags"

            case dates

            case qcRequired = "qc_required"

            case restoreCoupon = "restore_coupon"

            case sellerIdentifier = "seller_identifier"

            case restorePromos = "restore_promos"

            case orderIntegrationId = "order_integration_id"

            case reasons

            case articleDetails = "article_details"

            case bagUpdateTime = "bag_update_time"

            case displayName = "display_name"

            case bagStatus = "bag_status"

            case lineNumber = "line_number"

            case item

            case gstDetails = "gst_details"

            case orderingStore = "ordering_store"

            case tags

            case bType = "b_type"

            case noOfBagsOrder = "no_of_bags_order"

            case meta

            case bId = "b_id"

            case financialBreakup = "financial_breakup"

            case prices

            case operationalStatus = "operational_status"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.affiliateBagDetails = affiliateBagDetails

            self.currentOperationalStatus = currentOperationalStatus

            self.originalBagList = originalBagList

            self.shipmentId = shipmentId

            self.currentStatus = currentStatus

            self.brand = brand

            self.identifier = identifier

            self.status = status

            self.journeyType = journeyType

            self.affiliateDetails = affiliateDetails

            self.bagStatusHistory = bagStatusHistory

            self.quantity = quantity

            self.article = article

            self.appliedPromos = appliedPromos

            self.entityType = entityType

            self.parentPromoBags = parentPromoBags

            self.dates = dates

            self.qcRequired = qcRequired

            self.restoreCoupon = restoreCoupon

            self.sellerIdentifier = sellerIdentifier

            self.restorePromos = restorePromos

            self.orderIntegrationId = orderIntegrationId

            self.reasons = reasons

            self.articleDetails = articleDetails

            self.bagUpdateTime = bagUpdateTime

            self.displayName = displayName

            self.bagStatus = bagStatus

            self.lineNumber = lineNumber

            self.item = item

            self.gstDetails = gstDetails

            self.orderingStore = orderingStore

            self.tags = tags

            self.bType = bType

            self.noOfBagsOrder = noOfBagsOrder

            self.meta = meta

            self.bId = bId

            self.financialBreakup = financialBreakup

            self.prices = prices

            self.operationalStatus = operationalStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

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
                entityType = try container.decode(String.self, forKey: .entityType)

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
                dates = try container.decode(Dates.self, forKey: .dates)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

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
                bType = try container.decode(String.self, forKey: .bType)

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
                meta = try container.decode(BagMeta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
        }
    }
}
