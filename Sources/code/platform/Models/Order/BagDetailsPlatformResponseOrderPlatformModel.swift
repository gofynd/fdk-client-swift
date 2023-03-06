

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var reasons: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var articleDetails: ArticleDetails?

        public var originalBagList: [Int]?

        public var orderIntegrationId: String?

        public var restorePromos: [String: Any]?

        public var bType: String?

        public var bId: Int

        public var affiliateBagDetails: AffiliateBagDetails

        public var bagUpdateTime: Double?

        public var currentOperationalStatus: BagStatusHistory

        public var shipmentId: String?

        public var gstDetails: BagGSTDetails

        public var bagStatusHistory: BagStatusHistory?

        public var sellerIdentifier: String?

        public var displayName: String?

        public var brand: Brand

        public var noOfBagsOrder: Int?

        public var article: Article

        public var operationalStatus: String?

        public var dates: Dates?

        public var status: BagReturnableCancelableStatus

        public var lineNumber: Int?

        public var bagStatus: [BagStatusHistory]

        public var tags: [String]?

        public var meta: BagMeta?

        public var quantity: Double?

        public var financialBreakup: [FinancialBreakup]

        public var prices: Prices

        public var entityType: String?

        public var affiliateDetails: AffiliateDetails?

        public var identifier: String?

        public var item: Item

        public var parentPromoBags: [String: Any]?

        public var currentStatus: BagStatusHistory

        public var appliedPromos: [[String: Any]]?

        public var orderingStore: Store?

        public enum CodingKeys: String, CodingKey {
            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case reasons

            case restoreCoupon = "restore_coupon"

            case articleDetails = "article_details"

            case originalBagList = "original_bag_list"

            case orderIntegrationId = "order_integration_id"

            case restorePromos = "restore_promos"

            case bType = "b_type"

            case bId = "b_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case bagUpdateTime = "bag_update_time"

            case currentOperationalStatus = "current_operational_status"

            case shipmentId = "shipment_id"

            case gstDetails = "gst_details"

            case bagStatusHistory = "bag_status_history"

            case sellerIdentifier = "seller_identifier"

            case displayName = "display_name"

            case brand

            case noOfBagsOrder = "no_of_bags_order"

            case article

            case operationalStatus = "operational_status"

            case dates

            case status

            case lineNumber = "line_number"

            case bagStatus = "bag_status"

            case tags

            case meta

            case quantity

            case financialBreakup = "financial_breakup"

            case prices

            case entityType = "entity_type"

            case affiliateDetails = "affiliate_details"

            case identifier

            case item

            case parentPromoBags = "parent_promo_bags"

            case currentStatus = "current_status"

            case appliedPromos = "applied_promos"

            case orderingStore = "ordering_store"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.reasons = reasons

            self.restoreCoupon = restoreCoupon

            self.articleDetails = articleDetails

            self.originalBagList = originalBagList

            self.orderIntegrationId = orderIntegrationId

            self.restorePromos = restorePromos

            self.bType = bType

            self.bId = bId

            self.affiliateBagDetails = affiliateBagDetails

            self.bagUpdateTime = bagUpdateTime

            self.currentOperationalStatus = currentOperationalStatus

            self.shipmentId = shipmentId

            self.gstDetails = gstDetails

            self.bagStatusHistory = bagStatusHistory

            self.sellerIdentifier = sellerIdentifier

            self.displayName = displayName

            self.brand = brand

            self.noOfBagsOrder = noOfBagsOrder

            self.article = article

            self.operationalStatus = operationalStatus

            self.dates = dates

            self.status = status

            self.lineNumber = lineNumber

            self.bagStatus = bagStatus

            self.tags = tags

            self.meta = meta

            self.quantity = quantity

            self.financialBreakup = financialBreakup

            self.prices = prices

            self.entityType = entityType

            self.affiliateDetails = affiliateDetails

            self.identifier = identifier

            self.item = item

            self.parentPromoBags = parentPromoBags

            self.currentStatus = currentStatus

            self.appliedPromos = appliedPromos

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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

            article = try container.decode(Article.self, forKey: .article)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var reasons: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var articleDetails: ArticleDetails?

        public var originalBagList: [Int]?

        public var orderIntegrationId: String?

        public var restorePromos: [String: Any]?

        public var bType: String?

        public var bId: Int

        public var affiliateBagDetails: AffiliateBagDetails

        public var bagUpdateTime: Double?

        public var currentOperationalStatus: BagStatusHistory

        public var shipmentId: String?

        public var gstDetails: BagGSTDetails

        public var bagStatusHistory: BagStatusHistory?

        public var sellerIdentifier: String?

        public var displayName: String?

        public var brand: Brand

        public var noOfBagsOrder: Int?

        public var article: Article

        public var operationalStatus: String?

        public var dates: Dates?

        public var status: BagReturnableCancelableStatus

        public var lineNumber: Int?

        public var bagStatus: [BagStatusHistory]

        public var tags: [String]?

        public var meta: BagMeta?

        public var quantity: Double?

        public var financialBreakup: [FinancialBreakup]

        public var prices: Prices

        public var entityType: String?

        public var affiliateDetails: AffiliateDetails?

        public var identifier: String?

        public var item: Item

        public var parentPromoBags: [String: Any]?

        public var currentStatus: BagStatusHistory

        public var appliedPromos: [[String: Any]]?

        public var orderingStore: Store?

        public enum CodingKeys: String, CodingKey {
            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case reasons

            case restoreCoupon = "restore_coupon"

            case articleDetails = "article_details"

            case originalBagList = "original_bag_list"

            case orderIntegrationId = "order_integration_id"

            case restorePromos = "restore_promos"

            case bType = "b_type"

            case bId = "b_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case bagUpdateTime = "bag_update_time"

            case currentOperationalStatus = "current_operational_status"

            case shipmentId = "shipment_id"

            case gstDetails = "gst_details"

            case bagStatusHistory = "bag_status_history"

            case sellerIdentifier = "seller_identifier"

            case displayName = "display_name"

            case brand

            case noOfBagsOrder = "no_of_bags_order"

            case article

            case operationalStatus = "operational_status"

            case dates

            case status

            case lineNumber = "line_number"

            case bagStatus = "bag_status"

            case tags

            case meta

            case quantity

            case financialBreakup = "financial_breakup"

            case prices

            case entityType = "entity_type"

            case affiliateDetails = "affiliate_details"

            case identifier

            case item

            case parentPromoBags = "parent_promo_bags"

            case currentStatus = "current_status"

            case appliedPromos = "applied_promos"

            case orderingStore = "ordering_store"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.reasons = reasons

            self.restoreCoupon = restoreCoupon

            self.articleDetails = articleDetails

            self.originalBagList = originalBagList

            self.orderIntegrationId = orderIntegrationId

            self.restorePromos = restorePromos

            self.bType = bType

            self.bId = bId

            self.affiliateBagDetails = affiliateBagDetails

            self.bagUpdateTime = bagUpdateTime

            self.currentOperationalStatus = currentOperationalStatus

            self.shipmentId = shipmentId

            self.gstDetails = gstDetails

            self.bagStatusHistory = bagStatusHistory

            self.sellerIdentifier = sellerIdentifier

            self.displayName = displayName

            self.brand = brand

            self.noOfBagsOrder = noOfBagsOrder

            self.article = article

            self.operationalStatus = operationalStatus

            self.dates = dates

            self.status = status

            self.lineNumber = lineNumber

            self.bagStatus = bagStatus

            self.tags = tags

            self.meta = meta

            self.quantity = quantity

            self.financialBreakup = financialBreakup

            self.prices = prices

            self.entityType = entityType

            self.affiliateDetails = affiliateDetails

            self.identifier = identifier

            self.item = item

            self.parentPromoBags = parentPromoBags

            self.currentStatus = currentStatus

            self.appliedPromos = appliedPromos

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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
                restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

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
                originalBagList = try container.decode([Int].self, forKey: .originalBagList)

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
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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

            article = try container.decode(Article.self, forKey: .article)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

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

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                entityType = try container.decode(String.self, forKey: .entityType)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            do {
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        }
    }
}
