

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var tags: [String]?

        public var originalBagList: [Int]?

        public var operationalStatus: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var brand: Brand

        public var reasons: [[String: Any]]?

        public var bagUpdateTime: Double?

        public var parentPromoBags: [String: Any]?

        public var affiliateDetails: AffiliateDetails?

        public var journeyType: String

        public var bagStatus: [BagStatusHistory]

        public var dates: Dates?

        public var appliedPromos: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var orderIntegrationId: String?

        public var meta: BagMeta?

        public var bagStatusHistory: BagStatusHistory?

        public var entityType: String?

        public var noOfBagsOrder: Int?

        public var qcRequired: [String: Any]?

        public var sellerIdentifier: String?

        public var shipmentId: String?

        public var currentOperationalStatus: BagStatusHistory

        public var currentStatus: BagStatusHistory

        public var financialBreakup: [FinancialBreakup]

        public var gstDetails: BagGSTDetails

        public var restorePromos: [String: Any]?

        public var article: Article

        public var bType: String?

        public var bId: Int

        public var status: BagReturnableCancelableStatus

        public var quantity: Double?

        public var displayName: String?

        public var lineNumber: Int?

        public var articleDetails: ArticleDetails?

        public var identifier: String?

        public var item: Item

        public var prices: Prices

        public var orderingStore: Store?

        public enum CodingKeys: String, CodingKey {
            case tags

            case originalBagList = "original_bag_list"

            case operationalStatus = "operational_status"

            case affiliateBagDetails = "affiliate_bag_details"

            case brand

            case reasons

            case bagUpdateTime = "bag_update_time"

            case parentPromoBags = "parent_promo_bags"

            case affiliateDetails = "affiliate_details"

            case journeyType = "journey_type"

            case bagStatus = "bag_status"

            case dates

            case appliedPromos = "applied_promos"

            case restoreCoupon = "restore_coupon"

            case orderIntegrationId = "order_integration_id"

            case meta

            case bagStatusHistory = "bag_status_history"

            case entityType = "entity_type"

            case noOfBagsOrder = "no_of_bags_order"

            case qcRequired = "qc_required"

            case sellerIdentifier = "seller_identifier"

            case shipmentId = "shipment_id"

            case currentOperationalStatus = "current_operational_status"

            case currentStatus = "current_status"

            case financialBreakup = "financial_breakup"

            case gstDetails = "gst_details"

            case restorePromos = "restore_promos"

            case article

            case bType = "b_type"

            case bId = "b_id"

            case status

            case quantity

            case displayName = "display_name"

            case lineNumber = "line_number"

            case articleDetails = "article_details"

            case identifier

            case item

            case prices

            case orderingStore = "ordering_store"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.tags = tags

            self.originalBagList = originalBagList

            self.operationalStatus = operationalStatus

            self.affiliateBagDetails = affiliateBagDetails

            self.brand = brand

            self.reasons = reasons

            self.bagUpdateTime = bagUpdateTime

            self.parentPromoBags = parentPromoBags

            self.affiliateDetails = affiliateDetails

            self.journeyType = journeyType

            self.bagStatus = bagStatus

            self.dates = dates

            self.appliedPromos = appliedPromos

            self.restoreCoupon = restoreCoupon

            self.orderIntegrationId = orderIntegrationId

            self.meta = meta

            self.bagStatusHistory = bagStatusHistory

            self.entityType = entityType

            self.noOfBagsOrder = noOfBagsOrder

            self.qcRequired = qcRequired

            self.sellerIdentifier = sellerIdentifier

            self.shipmentId = shipmentId

            self.currentOperationalStatus = currentOperationalStatus

            self.currentStatus = currentStatus

            self.financialBreakup = financialBreakup

            self.gstDetails = gstDetails

            self.restorePromos = restorePromos

            self.article = article

            self.bType = bType

            self.bId = bId

            self.status = status

            self.quantity = quantity

            self.displayName = displayName

            self.lineNumber = lineNumber

            self.articleDetails = articleDetails

            self.identifier = identifier

            self.item = item

            self.prices = prices

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

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

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

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
        public var tags: [String]?

        public var originalBagList: [Int]?

        public var operationalStatus: String?

        public var affiliateBagDetails: AffiliateBagDetails

        public var brand: Brand

        public var reasons: [[String: Any]]?

        public var bagUpdateTime: Double?

        public var parentPromoBags: [String: Any]?

        public var affiliateDetails: AffiliateDetails?

        public var journeyType: String

        public var bagStatus: [BagStatusHistory]

        public var dates: Dates?

        public var appliedPromos: [[String: Any]]?

        public var restoreCoupon: Bool?

        public var orderIntegrationId: String?

        public var meta: BagMeta?

        public var bagStatusHistory: BagStatusHistory?

        public var entityType: String?

        public var noOfBagsOrder: Int?

        public var qcRequired: [String: Any]?

        public var sellerIdentifier: String?

        public var shipmentId: String?

        public var currentOperationalStatus: BagStatusHistory

        public var currentStatus: BagStatusHistory

        public var financialBreakup: [FinancialBreakup]

        public var gstDetails: BagGSTDetails

        public var restorePromos: [String: Any]?

        public var article: Article

        public var bType: String?

        public var bId: Int

        public var status: BagReturnableCancelableStatus

        public var quantity: Double?

        public var displayName: String?

        public var lineNumber: Int?

        public var articleDetails: ArticleDetails?

        public var identifier: String?

        public var item: Item

        public var prices: Prices

        public var orderingStore: Store?

        public enum CodingKeys: String, CodingKey {
            case tags

            case originalBagList = "original_bag_list"

            case operationalStatus = "operational_status"

            case affiliateBagDetails = "affiliate_bag_details"

            case brand

            case reasons

            case bagUpdateTime = "bag_update_time"

            case parentPromoBags = "parent_promo_bags"

            case affiliateDetails = "affiliate_details"

            case journeyType = "journey_type"

            case bagStatus = "bag_status"

            case dates

            case appliedPromos = "applied_promos"

            case restoreCoupon = "restore_coupon"

            case orderIntegrationId = "order_integration_id"

            case meta

            case bagStatusHistory = "bag_status_history"

            case entityType = "entity_type"

            case noOfBagsOrder = "no_of_bags_order"

            case qcRequired = "qc_required"

            case sellerIdentifier = "seller_identifier"

            case shipmentId = "shipment_id"

            case currentOperationalStatus = "current_operational_status"

            case currentStatus = "current_status"

            case financialBreakup = "financial_breakup"

            case gstDetails = "gst_details"

            case restorePromos = "restore_promos"

            case article

            case bType = "b_type"

            case bId = "b_id"

            case status

            case quantity

            case displayName = "display_name"

            case lineNumber = "line_number"

            case articleDetails = "article_details"

            case identifier

            case item

            case prices

            case orderingStore = "ordering_store"
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            self.tags = tags

            self.originalBagList = originalBagList

            self.operationalStatus = operationalStatus

            self.affiliateBagDetails = affiliateBagDetails

            self.brand = brand

            self.reasons = reasons

            self.bagUpdateTime = bagUpdateTime

            self.parentPromoBags = parentPromoBags

            self.affiliateDetails = affiliateDetails

            self.journeyType = journeyType

            self.bagStatus = bagStatus

            self.dates = dates

            self.appliedPromos = appliedPromos

            self.restoreCoupon = restoreCoupon

            self.orderIntegrationId = orderIntegrationId

            self.meta = meta

            self.bagStatusHistory = bagStatusHistory

            self.entityType = entityType

            self.noOfBagsOrder = noOfBagsOrder

            self.qcRequired = qcRequired

            self.sellerIdentifier = sellerIdentifier

            self.shipmentId = shipmentId

            self.currentOperationalStatus = currentOperationalStatus

            self.currentStatus = currentStatus

            self.financialBreakup = financialBreakup

            self.gstDetails = gstDetails

            self.restorePromos = restorePromos

            self.article = article

            self.bType = bType

            self.bId = bId

            self.status = status

            self.quantity = quantity

            self.displayName = displayName

            self.lineNumber = lineNumber

            self.articleDetails = articleDetails

            self.identifier = identifier

            self.item = item

            self.prices = prices

            self.orderingStore = orderingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

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
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                reasons = try container.decode([[String: Any]].self, forKey: .reasons)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

            do {
                dates = try container.decode(Dates.self, forKey: .dates)

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
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

            currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

            financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            article = try container.decode(Article.self, forKey: .article)

            do {
                bType = try container.decode(String.self, forKey: .bType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bId = try container.decode(Int.self, forKey: .bId)

            status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)

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

            do {
                lineNumber = try container.decode(Int.self, forKey: .lineNumber)

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
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            item = try container.decode(Item.self, forKey: .item)

            prices = try container.decode(Prices.self, forKey: .prices)

            do {
                orderingStore = try container.decode(Store.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(bType, forKey: .bType)

            try? container.encodeIfPresent(bId, forKey: .bId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
        }
    }
}
