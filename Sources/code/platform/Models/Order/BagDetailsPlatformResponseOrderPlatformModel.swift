

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagDetailsPlatformResponse
        Used By: Order
    */

    class BagDetailsPlatformResponse: Codable {
        
        
        public var bagUpdateTime: Double?
        
        public var id: Int?
        
        public var gstDetails: BagGSTDetails?
        
        public var parentPromoBags: [String: Any]?
        
        public var tags: [String]?
        
        public var financialBreakup: [FinancialBreakup]?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var sellerIdentifier: String?
        
        public var originalBagList: [Int]?
        
        public var articleDetails: ArticleDetails?
        
        public var currentOperationalStatus: BagStatusHistory?
        
        public var orderingStore: Store?
        
        public var article: Article?
        
        public var brand: Brand?
        
        public var affiliateBagDetails: AffiliateBagDetails?
        
        public var item: Item?
        
        public var qcRequired: [String: Any]?
        
        public var identifier: String?
        
        public var quantity: Double?
        
        public var restorePromos: [String: Any]?
        
        public var affiliateDetails: AffiliateDetails?
        
        public var reasons: [[String: Any]]?
        
        public var bagStatusHistory: BagStatusHistory?
        
        public var displayName: String?
        
        public var type: String?
        
        public var lineNumber: Int?
        
        public var restoreCoupon: Bool?
        
        public var meta: BagMeta?
        
        public var noOfBagsOrder: Int?
        
        public var appliedPromos: [[String: Any]]?
        
        public var journeyType: String?
        
        public var prices: Prices?
        
        public var dates: Dates?
        
        public var shipmentId: String?
        
        public var currentStatus: BagStatusHistory?
        
        public var orderIntegrationId: String?
        
        public var operationalStatus: String?
        
        public var entityType: String?
        
        public var status: BagReturnableCancelableStatus1?
        

        public enum CodingKeys: String, CodingKey {
            
            case bagUpdateTime = "bag_update_time"
            
            case id = "id"
            
            case gstDetails = "gst_details"
            
            case parentPromoBags = "parent_promo_bags"
            
            case tags = "tags"
            
            case financialBreakup = "financial_breakup"
            
            case bagStatus = "bag_status"
            
            case sellerIdentifier = "seller_identifier"
            
            case originalBagList = "original_bag_list"
            
            case articleDetails = "article_details"
            
            case currentOperationalStatus = "current_operational_status"
            
            case orderingStore = "ordering_store"
            
            case article = "article"
            
            case brand = "brand"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case item = "item"
            
            case qcRequired = "qc_required"
            
            case identifier = "identifier"
            
            case quantity = "quantity"
            
            case restorePromos = "restore_promos"
            
            case affiliateDetails = "affiliate_details"
            
            case reasons = "reasons"
            
            case bagStatusHistory = "bag_status_history"
            
            case displayName = "display_name"
            
            case type = "type"
            
            case lineNumber = "line_number"
            
            case restoreCoupon = "restore_coupon"
            
            case meta = "meta"
            
            case noOfBagsOrder = "no_of_bags_order"
            
            case appliedPromos = "applied_promos"
            
            case journeyType = "journey_type"
            
            case prices = "prices"
            
            case dates = "dates"
            
            case shipmentId = "shipment_id"
            
            case currentStatus = "current_status"
            
            case orderIntegrationId = "order_integration_id"
            
            case operationalStatus = "operational_status"
            
            case entityType = "entity_type"
            
            case status = "status"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article? = nil, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory]? = nil, bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand? = nil, currentOperationalStatus: BagStatusHistory? = nil, currentStatus: BagStatusHistory? = nil, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGSTDetails? = nil, id: Int? = nil, identifier: String? = nil, item: Item? = nil, journeyType: String? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus1? = nil, tags: [String]? = nil, type: String? = nil) {
            
            self.bagUpdateTime = bagUpdateTime
            
            self.id = id
            
            self.gstDetails = gstDetails
            
            self.parentPromoBags = parentPromoBags
            
            self.tags = tags
            
            self.financialBreakup = financialBreakup
            
            self.bagStatus = bagStatus
            
            self.sellerIdentifier = sellerIdentifier
            
            self.originalBagList = originalBagList
            
            self.articleDetails = articleDetails
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.orderingStore = orderingStore
            
            self.article = article
            
            self.brand = brand
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.item = item
            
            self.qcRequired = qcRequired
            
            self.identifier = identifier
            
            self.quantity = quantity
            
            self.restorePromos = restorePromos
            
            self.affiliateDetails = affiliateDetails
            
            self.reasons = reasons
            
            self.bagStatusHistory = bagStatusHistory
            
            self.displayName = displayName
            
            self.type = type
            
            self.lineNumber = lineNumber
            
            self.restoreCoupon = restoreCoupon
            
            self.meta = meta
            
            self.noOfBagsOrder = noOfBagsOrder
            
            self.appliedPromos = appliedPromos
            
            self.journeyType = journeyType
            
            self.prices = prices
            
            self.dates = dates
            
            self.shipmentId = shipmentId
            
            self.currentStatus = currentStatus
            
            self.orderIntegrationId = orderIntegrationId
            
            self.operationalStatus = operationalStatus
            
            self.entityType = entityType
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    originalBagList = try container.decode([Int].self, forKey: .originalBagList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(Store.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(Article.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(Brand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    item = try container.decode(Item.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Double.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reasons = try container.decode([[String: Any]].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(BagMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dates = try container.decode(Dates.self, forKey: .dates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(BagReturnableCancelableStatus1.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(bagUpdateTime, forKey: .bagUpdateTime)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encode(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encode(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encode(originalBagList, forKey: .originalBagList)
            
            
            
            
            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encode(qcRequired, forKey: .qcRequired)
            
            
            
            
            try? container.encode(identifier, forKey: .identifier)
            
            
            
            
            try? container.encode(quantity, forKey: .quantity)
            
            
            
            
            try? container.encode(restorePromos, forKey: .restorePromos)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encode(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encode(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encode(restoreCoupon, forKey: .restoreCoupon)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(noOfBagsOrder, forKey: .noOfBagsOrder)
            
            
            
            
            try? container.encode(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encode(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encode(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encode(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encode(entityType, forKey: .entityType)
            
            
            
            
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
        
        
        public var bagUpdateTime: Double?
        
        public var id: Int?
        
        public var gstDetails: BagGSTDetails?
        
        public var parentPromoBags: [String: Any]?
        
        public var tags: [String]?
        
        public var financialBreakup: [FinancialBreakup]?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var sellerIdentifier: String?
        
        public var originalBagList: [Int]?
        
        public var articleDetails: ArticleDetails?
        
        public var currentOperationalStatus: BagStatusHistory?
        
        public var orderingStore: Store?
        
        public var article: Article?
        
        public var brand: Brand?
        
        public var affiliateBagDetails: AffiliateBagDetails?
        
        public var item: Item?
        
        public var qcRequired: [String: Any]?
        
        public var identifier: String?
        
        public var quantity: Double?
        
        public var restorePromos: [String: Any]?
        
        public var affiliateDetails: AffiliateDetails?
        
        public var reasons: [[String: Any]]?
        
        public var bagStatusHistory: BagStatusHistory?
        
        public var displayName: String?
        
        public var type: String?
        
        public var lineNumber: Int?
        
        public var restoreCoupon: Bool?
        
        public var meta: BagMeta?
        
        public var noOfBagsOrder: Int?
        
        public var appliedPromos: [[String: Any]]?
        
        public var journeyType: String?
        
        public var prices: Prices?
        
        public var dates: Dates?
        
        public var shipmentId: String?
        
        public var currentStatus: BagStatusHistory?
        
        public var orderIntegrationId: String?
        
        public var operationalStatus: String?
        
        public var entityType: String?
        
        public var status: BagReturnableCancelableStatus1?
        

        public enum CodingKeys: String, CodingKey {
            
            case bagUpdateTime = "bag_update_time"
            
            case id = "id"
            
            case gstDetails = "gst_details"
            
            case parentPromoBags = "parent_promo_bags"
            
            case tags = "tags"
            
            case financialBreakup = "financial_breakup"
            
            case bagStatus = "bag_status"
            
            case sellerIdentifier = "seller_identifier"
            
            case originalBagList = "original_bag_list"
            
            case articleDetails = "article_details"
            
            case currentOperationalStatus = "current_operational_status"
            
            case orderingStore = "ordering_store"
            
            case article = "article"
            
            case brand = "brand"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case item = "item"
            
            case qcRequired = "qc_required"
            
            case identifier = "identifier"
            
            case quantity = "quantity"
            
            case restorePromos = "restore_promos"
            
            case affiliateDetails = "affiliate_details"
            
            case reasons = "reasons"
            
            case bagStatusHistory = "bag_status_history"
            
            case displayName = "display_name"
            
            case type = "type"
            
            case lineNumber = "line_number"
            
            case restoreCoupon = "restore_coupon"
            
            case meta = "meta"
            
            case noOfBagsOrder = "no_of_bags_order"
            
            case appliedPromos = "applied_promos"
            
            case journeyType = "journey_type"
            
            case prices = "prices"
            
            case dates = "dates"
            
            case shipmentId = "shipment_id"
            
            case currentStatus = "current_status"
            
            case orderIntegrationId = "order_integration_id"
            
            case operationalStatus = "operational_status"
            
            case entityType = "entity_type"
            
            case status = "status"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article? = nil, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory]? = nil, bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand? = nil, currentOperationalStatus: BagStatusHistory? = nil, currentStatus: BagStatusHistory? = nil, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup]? = nil, gstDetails: BagGSTDetails? = nil, id: Int? = nil, identifier: String? = nil, item: Item? = nil, journeyType: String? = nil, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices? = nil, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus1? = nil, tags: [String]? = nil, type: String? = nil) {
            
            self.bagUpdateTime = bagUpdateTime
            
            self.id = id
            
            self.gstDetails = gstDetails
            
            self.parentPromoBags = parentPromoBags
            
            self.tags = tags
            
            self.financialBreakup = financialBreakup
            
            self.bagStatus = bagStatus
            
            self.sellerIdentifier = sellerIdentifier
            
            self.originalBagList = originalBagList
            
            self.articleDetails = articleDetails
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.orderingStore = orderingStore
            
            self.article = article
            
            self.brand = brand
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.item = item
            
            self.qcRequired = qcRequired
            
            self.identifier = identifier
            
            self.quantity = quantity
            
            self.restorePromos = restorePromos
            
            self.affiliateDetails = affiliateDetails
            
            self.reasons = reasons
            
            self.bagStatusHistory = bagStatusHistory
            
            self.displayName = displayName
            
            self.type = type
            
            self.lineNumber = lineNumber
            
            self.restoreCoupon = restoreCoupon
            
            self.meta = meta
            
            self.noOfBagsOrder = noOfBagsOrder
            
            self.appliedPromos = appliedPromos
            
            self.journeyType = journeyType
            
            self.prices = prices
            
            self.dates = dates
            
            self.shipmentId = shipmentId
            
            self.currentStatus = currentStatus
            
            self.orderIntegrationId = orderIntegrationId
            
            self.operationalStatus = operationalStatus
            
            self.entityType = entityType
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    originalBagList = try container.decode([Int].self, forKey: .originalBagList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleDetails = try container.decode(ArticleDetails.self, forKey: .articleDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(Store.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(Article.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(Brand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    item = try container.decode(Item.self, forKey: .item)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    identifier = try container.decode(String.self, forKey: .identifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Double.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reasons = try container.decode([[String: Any]].self, forKey: .reasons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lineNumber = try container.decode(Int.self, forKey: .lineNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode(BagMeta.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedPromos = try container.decode([[String: Any]].self, forKey: .appliedPromos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dates = try container.decode(Dates.self, forKey: .dates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(BagReturnableCancelableStatus1.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(bagUpdateTime, forKey: .bagUpdateTime)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encode(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encode(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encode(originalBagList, forKey: .originalBagList)
            
            
            
            
            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encode(qcRequired, forKey: .qcRequired)
            
            
            
            
            try? container.encode(identifier, forKey: .identifier)
            
            
            
            
            try? container.encode(quantity, forKey: .quantity)
            
            
            
            
            try? container.encode(restorePromos, forKey: .restorePromos)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encode(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encode(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encode(restoreCoupon, forKey: .restoreCoupon)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(noOfBagsOrder, forKey: .noOfBagsOrder)
            
            
            
            
            try? container.encode(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encode(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encode(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encode(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encode(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


