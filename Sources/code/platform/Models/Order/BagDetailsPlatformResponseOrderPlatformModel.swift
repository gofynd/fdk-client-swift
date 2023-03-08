

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var bagUpdateTime: Double?

        public var prices: Prices

        public var meta: BagMeta?

        public var operationalStatus: String?

        public var bId: Int

        public var brand: Brand

        public var article: Article

        public var bagStatus: [BagStatusHistory]

        public var sellerIdentifier: String?

        public var reasons: [[String: Any]]?

        public var shipmentId: String?

        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var appliedPromos: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var identifier: String?

        public var item: Item

        public var restorePromos: [String: Any]?

        public var currentStatus: BagStatusHistory

        public var status: BagReturnableCancelableStatus

        public var parentPromoBags: [String: Any]?

        public var orderIntegrationId: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var tags: [String]?

        public var displayName: String?

        public var bType: String?

        public var financialBreakup: [FinancialBreakup]

        public var noOfBagsOrder: Int?

        public var lineNumber: Int?

        public var orderingStore: Store?

        public var quantity: Double?

        public var currentOperationalStatus: BagStatusHistory

        public var articleDetails: ArticleDetails?

        public var dates: Dates?

        public var affiliateDetails: AffiliateDetails?

        public var gstDetails: BagGSTDetails

        public var entityType: String?

        public var originalBagList: [Int]?

        public var bagStatusHistory: BagStatusHistory?

        public enum CodingKeys: String, CodingKey {
            case bagUpdateTime = "bag_update_time"

            case prices

            case meta

            case operationalStatus = "operational_status"

            case bId = "b_id"

            case brand

            case article

            case bagStatus = "bag_status"

            case sellerIdentifier = "seller_identifier"

            case reasons

            case shipmentId = "shipment_id"

            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case appliedPromos = "applied_promos"

            case restoreCoupon = "restore_coupon"

            case identifier

            case item

            case restorePromos = "restore_promos"

            case currentStatus = "current_status"

            case status

            case parentPromoBags = "parent_promo_bags"

            case orderIntegrationId = "order_integration_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case tags

            case displayName = "display_name"

            case bType = "b_type"

            case financialBreakup = "financial_breakup"

            case noOfBagsOrder = "no_of_bags_order"

            case lineNumber = "line_number"

            case orderingStore = "ordering_store"

            case quantity

            case currentOperationalStatus = "current_operational_status"

            case articleDetails = "article_details"

            case dates

            case affiliateDetails = "affiliate_details"

            case gstDetails = "gst_details"

            case entityType = "entity_type"

            case originalBagList = "original_bag_list"

            case bagStatusHistory = "bag_status_history"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.bagUpdateTime = bagUpdateTime

            self.prices = prices

            self.meta = meta

            self.operationalStatus = operationalStatus

            self.bId = bId

            self.brand = brand

            self.article = article

            self.bagStatus = bagStatus

            self.sellerIdentifier = sellerIdentifier

            self.reasons = reasons

            self.shipmentId = shipmentId

            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.appliedPromos = appliedPromos

            self.restoreCoupon = restoreCoupon

            self.identifier = identifier

            self.item = item

            self.restorePromos = restorePromos

            self.currentStatus = currentStatus

            self.status = status

            self.parentPromoBags = parentPromoBags

            self.orderIntegrationId = orderIntegrationId

            self.affiliateBagDetails = affiliateBagDetails

            self.tags = tags

            self.displayName = displayName

            self.bType = bType

            self.financialBreakup = financialBreakup

            self.noOfBagsOrder = noOfBagsOrder

            self.lineNumber = lineNumber

            self.orderingStore = orderingStore

            self.quantity = quantity

            self.currentOperationalStatus = currentOperationalStatus

            self.articleDetails = articleDetails

            self.dates = dates

            self.affiliateDetails = affiliateDetails

            self.gstDetails = gstDetails

            self.entityType = entityType

            self.originalBagList = originalBagList

            self.bagStatusHistory = bagStatusHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

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

            bId = try container.decode(Int.self, forKey: .bId)

            brand = try container.decode(Brand.self, forKey: .brand)

            article = try container.decode(Article.self, forKey: .article)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

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

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var bagUpdateTime: Double?

        public var prices: Prices

        public var meta: BagMeta?

        public var operationalStatus: String?

        public var bId: Int

        public var brand: Brand

        public var article: Article

        public var bagStatus: [BagStatusHistory]

        public var sellerIdentifier: String?

        public var reasons: [[String: Any]]?

        public var shipmentId: String?

        public var journeyType: String

        public var qcRequired: [String: Any]?

        public var appliedPromos: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var identifier: String?

        public var item: Item

        public var restorePromos: [String: Any]?

        public var currentStatus: BagStatusHistory

        public var status: BagReturnableCancelableStatus

        public var parentPromoBags: [String: Any]?

        public var orderIntegrationId: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var tags: [String]?

        public var displayName: String?

        public var bType: String?

        public var financialBreakup: [FinancialBreakup]

        public var noOfBagsOrder: Int?

        public var lineNumber: Int?

        public var orderingStore: Store?

        public var quantity: Double?

        public var currentOperationalStatus: BagStatusHistory

        public var articleDetails: ArticleDetails?

        public var dates: Dates?

        public var affiliateDetails: AffiliateDetails?

        public var gstDetails: BagGSTDetails

        public var entityType: String?

        public var originalBagList: [Int]?

        public var bagStatusHistory: BagStatusHistory?

        public enum CodingKeys: String, CodingKey {
            case bagUpdateTime = "bag_update_time"

            case prices

            case meta

            case operationalStatus = "operational_status"

            case bId = "b_id"

            case brand

            case article

            case bagStatus = "bag_status"

            case sellerIdentifier = "seller_identifier"

            case reasons

            case shipmentId = "shipment_id"

            case journeyType = "journey_type"

            case qcRequired = "qc_required"

            case appliedPromos = "applied_promos"

            case restoreCoupon = "restore_coupon"

            case identifier

            case item

            case restorePromos = "restore_promos"

            case currentStatus = "current_status"

            case status

            case parentPromoBags = "parent_promo_bags"

            case orderIntegrationId = "order_integration_id"

            case affiliateBagDetails = "affiliate_bag_details"

            case tags

            case displayName = "display_name"

            case bType = "b_type"

            case financialBreakup = "financial_breakup"

            case noOfBagsOrder = "no_of_bags_order"

            case lineNumber = "line_number"

            case orderingStore = "ordering_store"

            case quantity

            case currentOperationalStatus = "current_operational_status"

            case articleDetails = "article_details"

            case dates

            case affiliateDetails = "affiliate_details"

            case gstDetails = "gst_details"

            case entityType = "entity_type"

            case originalBagList = "original_bag_list"

            case bagStatusHistory = "bag_status_history"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.bagUpdateTime = bagUpdateTime

            self.prices = prices

            self.meta = meta

            self.operationalStatus = operationalStatus

            self.bId = bId

            self.brand = brand

            self.article = article

            self.bagStatus = bagStatus

            self.sellerIdentifier = sellerIdentifier

            self.reasons = reasons

            self.shipmentId = shipmentId

            self.journeyType = journeyType

            self.qcRequired = qcRequired

            self.appliedPromos = appliedPromos

            self.restoreCoupon = restoreCoupon

            self.identifier = identifier

            self.item = item

            self.restorePromos = restorePromos

            self.currentStatus = currentStatus

            self.status = status

            self.parentPromoBags = parentPromoBags

            self.orderIntegrationId = orderIntegrationId

            self.affiliateBagDetails = affiliateBagDetails

            self.tags = tags

            self.displayName = displayName

            self.bType = bType

            self.financialBreakup = financialBreakup

            self.noOfBagsOrder = noOfBagsOrder

            self.lineNumber = lineNumber

            self.orderingStore = orderingStore

            self.quantity = quantity

            self.currentOperationalStatus = currentOperationalStatus

            self.articleDetails = articleDetails

            self.dates = dates

            self.affiliateDetails = affiliateDetails

            self.gstDetails = gstDetails

            self.entityType = entityType

            self.originalBagList = originalBagList

            self.bagStatusHistory = bagStatusHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                meta = try container.decode(BagMeta.self, forKey: .meta)

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

            bId = try container.decode(Int.self, forKey: .bId)

            brand = try container.decode(Brand.self, forKey: .brand)

            article = try container.decode(Article.self, forKey: .article)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

            do {
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            do {
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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

            do {
                quantity = try container.decode(Double.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

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

            do {
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
        }
    }
}
