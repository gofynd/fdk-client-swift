

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var affiliateBagDetails: AffiliateBagDetails

        public var financialBreakup: [FinancialBreakup]

        public var reasons: [[String: Any]]?

        public var journeyType: String

        public var article: Article

        public var brand: Brand

        public var tags: [String]?

        public var currentOperationalStatus: BagStatusHistory

        public var entityType: String?

        public var noOfBagsOrder: Int?

        public var affiliateDetails: AffiliateDetails?

        public var parentPromoBags: [String: Any]?

        public var orderingStore: Store?

        public var bagUpdateTime: Double?

        public var bagStatus: [BagStatusHistory]

        public var item: Item

        public var displayName: String?

        public var shipmentId: String?

        public var qcRequired: [String: Any]?

        public var bType: String?

        public var currentStatus: BagStatusHistory

        public var quantity: Double?

        public var meta: BagMeta?

        public var restorePromos: [String: Any]?

        public var status: BagReturnableCancelableStatus

        public var restoreCoupon: Bool?

        public var identifier: String?

        public var gstDetails: BagGSTDetails

        public var originalBagList: [Int]?

        public var sellerIdentifier: String?

        public var appliedPromos: [[String: Any]]?

        public var articleDetails: ArticleDetails?

        public var operationalStatus: String?

        public var orderIntegrationId: String?

        public var dates: Dates?

        public var bagStatusHistory: BagStatusHistory?

        public var lineNumber: Int?

        public var bId: Int

        public var prices: Prices

        public enum CodingKeys: String, CodingKey {
            case affiliateBagDetails = "affiliate_bag_details"

            case financialBreakup = "financial_breakup"

            case reasons

            case journeyType = "journey_type"

            case article

            case brand

            case tags

            case currentOperationalStatus = "current_operational_status"

            case entityType = "entity_type"

            case noOfBagsOrder = "no_of_bags_order"

            case affiliateDetails = "affiliate_details"

            case parentPromoBags = "parent_promo_bags"

            case orderingStore = "ordering_store"

            case bagUpdateTime = "bag_update_time"

            case bagStatus = "bag_status"

            case item

            case displayName = "display_name"

            case shipmentId = "shipment_id"

            case qcRequired = "qc_required"

            case bType = "b_type"

            case currentStatus = "current_status"

            case quantity

            case meta

            case restorePromos = "restore_promos"

            case status

            case restoreCoupon = "restore_coupon"

            case identifier

            case gstDetails = "gst_details"

            case originalBagList = "original_bag_list"

            case sellerIdentifier = "seller_identifier"

            case appliedPromos = "applied_promos"

            case articleDetails = "article_details"

            case operationalStatus = "operational_status"

            case orderIntegrationId = "order_integration_id"

            case dates

            case bagStatusHistory = "bag_status_history"

            case lineNumber = "line_number"

            case bId = "b_id"

            case prices
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.affiliateBagDetails = affiliateBagDetails

            self.financialBreakup = financialBreakup

            self.reasons = reasons

            self.journeyType = journeyType

            self.article = article

            self.brand = brand

            self.tags = tags

            self.currentOperationalStatus = currentOperationalStatus

            self.entityType = entityType

            self.noOfBagsOrder = noOfBagsOrder

            self.affiliateDetails = affiliateDetails

            self.parentPromoBags = parentPromoBags

            self.orderingStore = orderingStore

            self.bagUpdateTime = bagUpdateTime

            self.bagStatus = bagStatus

            self.item = item

            self.displayName = displayName

            self.shipmentId = shipmentId

            self.qcRequired = qcRequired

            self.bType = bType

            self.currentStatus = currentStatus

            self.quantity = quantity

            self.meta = meta

            self.restorePromos = restorePromos

            self.status = status

            self.restoreCoupon = restoreCoupon

            self.identifier = identifier

            self.gstDetails = gstDetails

            self.originalBagList = originalBagList

            self.sellerIdentifier = sellerIdentifier

            self.appliedPromos = appliedPromos

            self.articleDetails = articleDetails

            self.operationalStatus = operationalStatus

            self.orderIntegrationId = orderIntegrationId

            self.dates = dates

            self.bagStatusHistory = bagStatusHistory

            self.lineNumber = lineNumber

            self.bId = bId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            article = try container.decode(Article.self, forKey: .article)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            item = try container.decode(Item.self, forKey: .item)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            prices = try container.decode(Prices.self, forKey: .prices)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(prices, forKey: .prices)
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

        public var financialBreakup: [FinancialBreakup]

        public var reasons: [[String: Any]]?

        public var journeyType: String

        public var article: Article

        public var brand: Brand

        public var tags: [String]?

        public var currentOperationalStatus: BagStatusHistory

        public var entityType: String?

        public var noOfBagsOrder: Int?

        public var affiliateDetails: AffiliateDetails?

        public var parentPromoBags: [String: Any]?

        public var orderingStore: Store?

        public var bagUpdateTime: Double?

        public var bagStatus: [BagStatusHistory]

        public var item: Item

        public var displayName: String?

        public var shipmentId: String?

        public var qcRequired: [String: Any]?

        public var bType: String?

        public var currentStatus: BagStatusHistory

        public var quantity: Double?

        public var meta: BagMeta?

        public var restorePromos: [String: Any]?

        public var status: BagReturnableCancelableStatus

        public var restoreCoupon: Bool?

        public var identifier: String?

        public var gstDetails: BagGSTDetails

        public var originalBagList: [Int]?

        public var sellerIdentifier: String?

        public var appliedPromos: [[String: Any]]?

        public var articleDetails: ArticleDetails?

        public var operationalStatus: String?

        public var orderIntegrationId: String?

        public var dates: Dates?

        public var bagStatusHistory: BagStatusHistory?

        public var lineNumber: Int?

        public var bId: Int

        public var prices: Prices

        public enum CodingKeys: String, CodingKey {
            case affiliateBagDetails = "affiliate_bag_details"

            case financialBreakup = "financial_breakup"

            case reasons

            case journeyType = "journey_type"

            case article

            case brand

            case tags

            case currentOperationalStatus = "current_operational_status"

            case entityType = "entity_type"

            case noOfBagsOrder = "no_of_bags_order"

            case affiliateDetails = "affiliate_details"

            case parentPromoBags = "parent_promo_bags"

            case orderingStore = "ordering_store"

            case bagUpdateTime = "bag_update_time"

            case bagStatus = "bag_status"

            case item

            case displayName = "display_name"

            case shipmentId = "shipment_id"

            case qcRequired = "qc_required"

            case bType = "b_type"

            case currentStatus = "current_status"

            case quantity

            case meta

            case restorePromos = "restore_promos"

            case status

            case restoreCoupon = "restore_coupon"

            case identifier

            case gstDetails = "gst_details"

            case originalBagList = "original_bag_list"

            case sellerIdentifier = "seller_identifier"

            case appliedPromos = "applied_promos"

            case articleDetails = "article_details"

            case operationalStatus = "operational_status"

            case orderIntegrationId = "order_integration_id"

            case dates

            case bagStatusHistory = "bag_status_history"

            case lineNumber = "line_number"

            case bId = "b_id"

            case prices
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.affiliateBagDetails = affiliateBagDetails

            self.financialBreakup = financialBreakup

            self.reasons = reasons

            self.journeyType = journeyType

            self.article = article

            self.brand = brand

            self.tags = tags

            self.currentOperationalStatus = currentOperationalStatus

            self.entityType = entityType

            self.noOfBagsOrder = noOfBagsOrder

            self.affiliateDetails = affiliateDetails

            self.parentPromoBags = parentPromoBags

            self.orderingStore = orderingStore

            self.bagUpdateTime = bagUpdateTime

            self.bagStatus = bagStatus

            self.item = item

            self.displayName = displayName

            self.shipmentId = shipmentId

            self.qcRequired = qcRequired

            self.bType = bType

            self.currentStatus = currentStatus

            self.quantity = quantity

            self.meta = meta

            self.restorePromos = restorePromos

            self.status = status

            self.restoreCoupon = restoreCoupon

            self.identifier = identifier

            self.gstDetails = gstDetails

            self.originalBagList = originalBagList

            self.sellerIdentifier = sellerIdentifier

            self.appliedPromos = appliedPromos

            self.articleDetails = articleDetails

            self.operationalStatus = operationalStatus

            self.orderIntegrationId = orderIntegrationId

            self.dates = dates

            self.bagStatusHistory = bagStatusHistory

            self.lineNumber = lineNumber

            self.bId = bId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            article = try container.decode(Article.self, forKey: .article)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            item = try container.decode(Item.self, forKey: .item)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            prices = try container.decode(Prices.self, forKey: .prices)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
