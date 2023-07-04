

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var prices: Prices?

        public var qcRequired: [String: Any]?

        public var appliedPromos: [[String: Any]]?

        public var id: Int?

        public var sellerIdentifier: String?

        public var identifier: String?

        public var operationalStatus: String?

        public var currentOperationalStatus: BagStatusHistory?

        public var articleDetails: ArticleDetails?

        public var tags: [String]?

        public var restoreCoupon: Bool?

        public var affiliateDetails: AffiliateDetails?

        public var orderingStore: Store?

        public var brand: Brand?

        public var quantity: Double?

        public var noOfBagsOrder: Int?

        public var journeyType: String?

        public var gstDetails: BagGSTDetails?

        public var entityType: String?

        public var meta: BagMeta?

        public var reasons: [[String: Any]]?

        public var parentPromoBags: [String: Any]?

        public var type: String?

        public var item: Item?

        public var affiliateBagDetails: AffiliateBagDetails?

        public var bagUpdateTime: Double?

        public var bagStatus: [BagStatusHistory]?

        public var dates: Dates?

        public var restorePromos: [String: Any]?

        public var lineNumber: Int?

        public var bagStatusHistory: BagStatusHistory?

        public var status: BagReturnableCancelableStatus1?

        public var financialBreakup: [FinancialBreakup]?

        public var orderIntegrationId: String?

        public var article: Article?

        public var displayName: String?

        public var currentStatus: BagStatusHistory?

        public var shipmentId: String?

        public var originalBagList: [Int]?

        public enum CodingKeys: String, CodingKey {
            case prices

            case qcRequired = "qc_required"

            case appliedPromos = "applied_promos"

            case id

            case sellerIdentifier = "seller_identifier"

            case identifier

            case operationalStatus = "operational_status"

            case currentOperationalStatus = "current_operational_status"

            case articleDetails = "article_details"

            case tags

            case restoreCoupon = "restore_coupon"

            case affiliateDetails = "affiliate_details"

            case orderingStore = "ordering_store"

            case brand

            case quantity

            case noOfBagsOrder = "no_of_bags_order"

            case journeyType = "journey_type"

            case gstDetails = "gst_details"

            case entityType = "entity_type"

            case meta

            case reasons

            case parentPromoBags = "parent_promo_bags"

            case type

            case item

            case affiliateBagDetails = "affiliate_bag_details"

            case bagUpdateTime = "bag_update_time"

            case bagStatus = "bag_status"

            case dates

            case restorePromos = "restore_promos"

            case lineNumber = "line_number"

            case bagStatusHistory = "bag_status_history"

            case status

            case financialBreakup = "financial_breakup"

            case orderIntegrationId = "order_integration_id"

            case article

            case displayName = "display_name"

            case currentStatus = "current_status"

            case shipmentId = "shipment_id"

            case originalBagList = "original_bag_list"
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article? = nil, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory]? = nil, bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand? = nil, currentOperationalStatus: BagStatusHistory? = nil, currentStatus: BagStatusHistory? = nil, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGSTDetails? = nil, id: Int? = nil, identifier: String? = nil, item: Item? = nil, journeyType: String? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus1? = nil, tags: [String]? = nil, type: String? = nil) {
            self.prices = prices

            self.qcRequired = qcRequired

            self.appliedPromos = appliedPromos

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.operationalStatus = operationalStatus

            self.currentOperationalStatus = currentOperationalStatus

            self.articleDetails = articleDetails

            self.tags = tags

            self.restoreCoupon = restoreCoupon

            self.affiliateDetails = affiliateDetails

            self.orderingStore = orderingStore

            self.brand = brand

            self.quantity = quantity

            self.noOfBagsOrder = noOfBagsOrder

            self.journeyType = journeyType

            self.gstDetails = gstDetails

            self.entityType = entityType

            self.meta = meta

            self.reasons = reasons

            self.parentPromoBags = parentPromoBags

            self.type = type

            self.item = item

            self.affiliateBagDetails = affiliateBagDetails

            self.bagUpdateTime = bagUpdateTime

            self.bagStatus = bagStatus

            self.dates = dates

            self.restorePromos = restorePromos

            self.lineNumber = lineNumber

            self.bagStatusHistory = bagStatusHistory

            self.status = status

            self.financialBreakup = financialBreakup

            self.orderIntegrationId = orderIntegrationId

            self.article = article

            self.displayName = displayName

            self.currentStatus = currentStatus

            self.shipmentId = shipmentId

            self.originalBagList = originalBagList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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
                brand = try container.decode(Brand.self, forKey: .brand)

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
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

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
                meta = try container.decode(BagMeta.self, forKey: .meta)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

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
                bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(BagReturnableCancelableStatus1.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

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
                article = try container.decode(Article.self, forKey: .article)

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
                currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagDetailsPlatformResponse
         Used By: Order
     */

    class BagDetailsPlatformResponse: Codable {
        public var prices: Prices?

        public var qcRequired: [String: Any]?

        public var appliedPromos: [[String: Any]]?

        public var id: Int?

        public var sellerIdentifier: String?

        public var identifier: String?

        public var operationalStatus: String?

        public var currentOperationalStatus: BagStatusHistory?

        public var articleDetails: ArticleDetails?

        public var tags: [String]?

        public var restoreCoupon: Bool?

        public var affiliateDetails: AffiliateDetails?

        public var orderingStore: Store?

        public var brand: Brand?

        public var quantity: Double?

        public var noOfBagsOrder: Int?

        public var journeyType: String?

        public var gstDetails: BagGSTDetails?

        public var entityType: String?

        public var meta: BagMeta?

        public var reasons: [[String: Any]]?

        public var parentPromoBags: [String: Any]?

        public var type: String?

        public var item: Item?

        public var affiliateBagDetails: AffiliateBagDetails?

        public var bagUpdateTime: Double?

        public var bagStatus: [BagStatusHistory]?

        public var dates: Dates?

        public var restorePromos: [String: Any]?

        public var lineNumber: Int?

        public var bagStatusHistory: BagStatusHistory?

        public var status: BagReturnableCancelableStatus1?

        public var financialBreakup: [FinancialBreakup]?

        public var orderIntegrationId: String?

        public var article: Article?

        public var displayName: String?

        public var currentStatus: BagStatusHistory?

        public var shipmentId: String?

        public var originalBagList: [Int]?

        public enum CodingKeys: String, CodingKey {
            case prices

            case qcRequired = "qc_required"

            case appliedPromos = "applied_promos"

            case id

            case sellerIdentifier = "seller_identifier"

            case identifier

            case operationalStatus = "operational_status"

            case currentOperationalStatus = "current_operational_status"

            case articleDetails = "article_details"

            case tags

            case restoreCoupon = "restore_coupon"

            case affiliateDetails = "affiliate_details"

            case orderingStore = "ordering_store"

            case brand

            case quantity

            case noOfBagsOrder = "no_of_bags_order"

            case journeyType = "journey_type"

            case gstDetails = "gst_details"

            case entityType = "entity_type"

            case meta

            case reasons

            case parentPromoBags = "parent_promo_bags"

            case type

            case item

            case affiliateBagDetails = "affiliate_bag_details"

            case bagUpdateTime = "bag_update_time"

            case bagStatus = "bag_status"

            case dates

            case restorePromos = "restore_promos"

            case lineNumber = "line_number"

            case bagStatusHistory = "bag_status_history"

            case status

            case financialBreakup = "financial_breakup"

            case orderIntegrationId = "order_integration_id"

            case article

            case displayName = "display_name"

            case currentStatus = "current_status"

            case shipmentId = "shipment_id"

            case originalBagList = "original_bag_list"
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article? = nil, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory]? = nil, bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand? = nil, currentOperationalStatus: BagStatusHistory? = nil, currentStatus: BagStatusHistory? = nil, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGSTDetails? = nil, id: Int? = nil, identifier: String? = nil, item: Item? = nil, journeyType: String? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus1? = nil, tags: [String]? = nil, type: String? = nil) {
            self.prices = prices

            self.qcRequired = qcRequired

            self.appliedPromos = appliedPromos

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.operationalStatus = operationalStatus

            self.currentOperationalStatus = currentOperationalStatus

            self.articleDetails = articleDetails

            self.tags = tags

            self.restoreCoupon = restoreCoupon

            self.affiliateDetails = affiliateDetails

            self.orderingStore = orderingStore

            self.brand = brand

            self.quantity = quantity

            self.noOfBagsOrder = noOfBagsOrder

            self.journeyType = journeyType

            self.gstDetails = gstDetails

            self.entityType = entityType

            self.meta = meta

            self.reasons = reasons

            self.parentPromoBags = parentPromoBags

            self.type = type

            self.item = item

            self.affiliateBagDetails = affiliateBagDetails

            self.bagUpdateTime = bagUpdateTime

            self.bagStatus = bagStatus

            self.dates = dates

            self.restorePromos = restorePromos

            self.lineNumber = lineNumber

            self.bagStatusHistory = bagStatusHistory

            self.status = status

            self.financialBreakup = financialBreakup

            self.orderIntegrationId = orderIntegrationId

            self.article = article

            self.displayName = displayName

            self.currentStatus = currentStatus

            self.shipmentId = shipmentId

            self.originalBagList = originalBagList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

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

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)

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
                tags = try container.decode([String].self, forKey: .tags)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

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
                brand = try container.decode(Brand.self, forKey: .brand)

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
                noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)

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
                meta = try container.decode(BagMeta.self, forKey: .meta)

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
                parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)

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
                bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

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
                bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(BagReturnableCancelableStatus1.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

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
                article = try container.decode(Article.self, forKey: .article)

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
                currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(entityType, forKey: .entityType)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)

            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)

            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)

            try? container.encodeIfPresent(dates, forKey: .dates)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)

            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(article, forKey: .article)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)
        }
    }
}
