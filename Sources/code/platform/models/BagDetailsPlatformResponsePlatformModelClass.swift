

import Foundation
public extension PlatformClient {
    /*
        Model: BagDetailsPlatformResponse
        Used By: Order
    */

    class BagDetailsPlatformResponse: Codable {
        
        
        public var parentPromoBags: [String: Any]?
        
        public var journeyType: String
        
        public var restorePromos: [String: Any]?
        
        public var bagStatusHistory: BagStatusHistory?
        
        public var reasons: [[String: Any]]?
        
        public var orderingStore: Store?
        
        public var article: Article
        
        public var affiliateDetails: AffiliateDetails?
        
        public var lineNumber: Int?
        
        public var financialBreakup: [FinancialBreakup]
        
        public var currentOperationalStatus: BagStatusHistory
        
        public var dates: Dates?
        
        public var bType: String?
        
        public var identifier: String?
        
        public var brand: Brand
        
        public var gstDetails: BagGSTDetails
        
        public var originalBagList: [Int]?
        
        public var noOfBagsOrder: Int?
        
        public var tags: [String]?
        
        public var sellerIdentifier: String?
        
        public var meta: BagMeta?
        
        public var restoreCoupon: Bool?
        
        public var currentStatus: BagStatusHistory
        
        public var displayName: String?
        
        public var prices: Prices
        
        public var item: Item
        
        public var affiliateBagDetails: AffiliateBagDetails
        
        public var operationalStatus: String?
        
        public var quantity: Double?
        
        public var status: BagReturnableCancelableStatus
        
        public var shipmentId: String?
        
        public var articleDetails: ArticleDetails?
        
        public var bagUpdateTime: Double?
        
        public var appliedPromos: [[String: Any]]?
        
        public var bId: Int
        
        public var entityType: String?
        
        public var bagStatus: [BagStatusHistory]
        
        public var qcRequired: [String: Any]?
        
        public var orderIntegrationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case parentPromoBags = "parent_promo_bags"
            
            case journeyType = "journey_type"
            
            case restorePromos = "restore_promos"
            
            case bagStatusHistory = "bag_status_history"
            
            case reasons = "reasons"
            
            case orderingStore = "ordering_store"
            
            case article = "article"
            
            case affiliateDetails = "affiliate_details"
            
            case lineNumber = "line_number"
            
            case financialBreakup = "financial_breakup"
            
            case currentOperationalStatus = "current_operational_status"
            
            case dates = "dates"
            
            case bType = "b_type"
            
            case identifier = "identifier"
            
            case brand = "brand"
            
            case gstDetails = "gst_details"
            
            case originalBagList = "original_bag_list"
            
            case noOfBagsOrder = "no_of_bags_order"
            
            case tags = "tags"
            
            case sellerIdentifier = "seller_identifier"
            
            case meta = "meta"
            
            case restoreCoupon = "restore_coupon"
            
            case currentStatus = "current_status"
            
            case displayName = "display_name"
            
            case prices = "prices"
            
            case item = "item"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case operationalStatus = "operational_status"
            
            case quantity = "quantity"
            
            case status = "status"
            
            case shipmentId = "shipment_id"
            
            case articleDetails = "article_details"
            
            case bagUpdateTime = "bag_update_time"
            
            case appliedPromos = "applied_promos"
            
            case bId = "b_id"
            
            case entityType = "entity_type"
            
            case bagStatus = "bag_status"
            
            case qcRequired = "qc_required"
            
            case orderIntegrationId = "order_integration_id"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article, articleDetails: ArticleDetails? = nil, bagStatus: [BagStatusHistory], bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand, bId: Int, bType: String? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gstDetails: BagGSTDetails, identifier: String? = nil, item: Item, journeyType: String, lineNumber: Int? = nil, meta: BagMeta? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, prices: Prices, qcRequired: [String: Any]? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, sellerIdentifier: String? = nil, shipmentId: String? = nil, status: BagReturnableCancelableStatus, tags: [String]? = nil) {
            
            self.parentPromoBags = parentPromoBags
            
            self.journeyType = journeyType
            
            self.restorePromos = restorePromos
            
            self.bagStatusHistory = bagStatusHistory
            
            self.reasons = reasons
            
            self.orderingStore = orderingStore
            
            self.article = article
            
            self.affiliateDetails = affiliateDetails
            
            self.lineNumber = lineNumber
            
            self.financialBreakup = financialBreakup
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.dates = dates
            
            self.bType = bType
            
            self.identifier = identifier
            
            self.brand = brand
            
            self.gstDetails = gstDetails
            
            self.originalBagList = originalBagList
            
            self.noOfBagsOrder = noOfBagsOrder
            
            self.tags = tags
            
            self.sellerIdentifier = sellerIdentifier
            
            self.meta = meta
            
            self.restoreCoupon = restoreCoupon
            
            self.currentStatus = currentStatus
            
            self.displayName = displayName
            
            self.prices = prices
            
            self.item = item
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.operationalStatus = operationalStatus
            
            self.quantity = quantity
            
            self.status = status
            
            self.shipmentId = shipmentId
            
            self.articleDetails = articleDetails
            
            self.bagUpdateTime = bagUpdateTime
            
            self.appliedPromos = appliedPromos
            
            self.bId = bId
            
            self.entityType = entityType
            
            self.bagStatus = bagStatus
            
            self.qcRequired = qcRequired
            
            self.orderIntegrationId = orderIntegrationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                journeyType = try container.decode(String.self, forKey: .journeyType)
                
            
            
            
                do {
                    restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)
                
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
                    reasons = try container.decode([[String: Any]].self, forKey: .reasons)
                
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
                
            
            
                article = try container.decode(Article.self, forKey: .article)
                
            
            
            
                do {
                    affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)
                
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
                
            
            
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
                
            
            
            
                currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)
                
            
            
            
                do {
                    dates = try container.decode(Dates.self, forKey: .dates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bType = try container.decode(String.self, forKey: .bType)
                
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
                
            
            
                brand = try container.decode(Brand.self, forKey: .brand)
                
            
            
            
                gstDetails = try container.decode(BagGSTDetails.self, forKey: .gstDetails)
                
            
            
            
                do {
                    originalBagList = try container.decode([Int].self, forKey: .originalBagList)
                
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
                    tags = try container.decode([String].self, forKey: .tags)
                
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
                    meta = try container.decode(BagMeta.self, forKey: .meta)
                
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
                
            
            
                currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
            
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                prices = try container.decode(Prices.self, forKey: .prices)
                
            
            
            
                item = try container.decode(Item.self, forKey: .item)
                
            
            
            
                affiliateBagDetails = try container.decode(AffiliateBagDetails.self, forKey: .affiliateBagDetails)
                
            
            
            
                do {
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
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
                
            
            
                status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
                
            
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
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
                    bagUpdateTime = try container.decode(Double.self, forKey: .bagUpdateTime)
                
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
                
            
            
                bId = try container.decode(Int.self, forKey: .bId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bagStatus = try container.decode([BagStatusHistory].self, forKey: .bagStatus)
                
            
            
            
                do {
                    qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encodeIfPresent(bType, forKey: .bType)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)
            
            
            
            
            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)
            
            
            
            
            try? container.encodeIfPresent(bagUpdateTime, forKey: .bagUpdateTime)
            
            
            
            
            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encodeIfPresent(bId, forKey: .bId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encode(qcRequired, forKey: .qcRequired)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
        }
        
    }
}
