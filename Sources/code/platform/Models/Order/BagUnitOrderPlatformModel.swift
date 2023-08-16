

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagUnit
        Used By: Order
    */

    class BagUnit: Codable {
        
        
        public var bagType: String?
        
        public var gst: GSTDetailsData?
        
        public var financialBreakup: [FinancialBreakup]
        
        public var bagExpiryDate: String?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var currentOperationalStatus: BagStatusHistory
        
        public var article: Article?
        
        public var brand: ShipmentListingBrand?
        
        public var affiliateBagDetails: AffiliateBagDetails?
        
        public var item: PlatformItem?
        
        public var reasons: [[String: Any]]?
        
        public var productQuantity: Int
        
        public var canReturn: Bool?
        
        public var displayName: String?
        
        public var canCancel: Bool?
        
        public var size: String?
        
        public var lineNumber: Int?
        
        public var meta: [String: Any]?
        
        public var prices: Prices?
        
        public var dates: Dates?
        
        public var currentStatus: BagStatusHistory
        
        public var bagId: Int
        
        public var entityType: String?
        
        public var status: BagReturnableCancelableStatus
        

        public enum CodingKeys: String, CodingKey {
            
            case bagType = "bag_type"
            
            case gst = "gst"
            
            case financialBreakup = "financial_breakup"
            
            case bagExpiryDate = "bag_expiry_date"
            
            case bagStatus = "bag_status"
            
            case currentOperationalStatus = "current_operational_status"
            
            case article = "article"
            
            case brand = "brand"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case item = "item"
            
            case reasons = "reasons"
            
            case productQuantity = "product_quantity"
            
            case canReturn = "can_return"
            
            case displayName = "display_name"
            
            case canCancel = "can_cancel"
            
            case size = "size"
            
            case lineNumber = "line_number"
            
            case meta = "meta"
            
            case prices = "prices"
            
            case dates = "dates"
            
            case currentStatus = "current_status"
            
            case bagId = "bag_id"
            
            case entityType = "entity_type"
            
            case status = "status"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, article: Article? = nil, bagExpiryDate: String? = nil, bagId: Int, bagStatus: [BagStatusHistory]? = nil, bagType: String? = nil, brand: ShipmentListingBrand? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gst: GSTDetailsData? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: [String: Any]? = nil, prices: Prices? = nil, productQuantity: Int, reasons: [[String: Any]]? = nil, size: String? = nil, status: BagReturnableCancelableStatus) {
            
            self.bagType = bagType
            
            self.gst = gst
            
            self.financialBreakup = financialBreakup
            
            self.bagExpiryDate = bagExpiryDate
            
            self.bagStatus = bagStatus
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.article = article
            
            self.brand = brand
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.item = item
            
            self.reasons = reasons
            
            self.productQuantity = productQuantity
            
            self.canReturn = canReturn
            
            self.displayName = displayName
            
            self.canCancel = canCancel
            
            self.size = size
            
            self.lineNumber = lineNumber
            
            self.meta = meta
            
            self.prices = prices
            
            self.dates = dates
            
            self.currentStatus = currentStatus
            
            self.bagId = bagId
            
            self.entityType = entityType
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bagType = try container.decode(String.self, forKey: .bagType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(GSTDetailsData.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
                
            
            
            
                do {
                    bagExpiryDate = try container.decode(String.self, forKey: .bagExpiryDate)
                
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
                
            
            
                currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)
                
            
            
            
                do {
                    article = try container.decode(Article.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(ShipmentListingBrand.self, forKey: .brand)
                
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
                    item = try container.decode(PlatformItem.self, forKey: .item)
                
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
                
            
            
                productQuantity = try container.decode(Int.self, forKey: .productQuantity)
                
            
            
            
                do {
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
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
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                
            
            
                currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
            
            
            
                bagId = try container.decode(Int.self, forKey: .bagId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bagType, forKey: .bagType)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encode(bagExpiryDate, forKey: .bagExpiryDate)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(productQuantity, forKey: .productQuantity)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagUnit
        Used By: Order
    */

    class BagUnit: Codable {
        
        
        public var bagType: String?
        
        public var gst: GSTDetailsData?
        
        public var financialBreakup: [FinancialBreakup]
        
        public var bagExpiryDate: String?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var currentOperationalStatus: BagStatusHistory
        
        public var article: Article?
        
        public var brand: ShipmentListingBrand?
        
        public var affiliateBagDetails: AffiliateBagDetails?
        
        public var item: PlatformItem?
        
        public var reasons: [[String: Any]]?
        
        public var productQuantity: Int
        
        public var canReturn: Bool?
        
        public var displayName: String?
        
        public var canCancel: Bool?
        
        public var size: String?
        
        public var lineNumber: Int?
        
        public var meta: [String: Any]?
        
        public var prices: Prices?
        
        public var dates: Dates?
        
        public var currentStatus: BagStatusHistory
        
        public var bagId: Int
        
        public var entityType: String?
        
        public var status: BagReturnableCancelableStatus
        

        public enum CodingKeys: String, CodingKey {
            
            case bagType = "bag_type"
            
            case gst = "gst"
            
            case financialBreakup = "financial_breakup"
            
            case bagExpiryDate = "bag_expiry_date"
            
            case bagStatus = "bag_status"
            
            case currentOperationalStatus = "current_operational_status"
            
            case article = "article"
            
            case brand = "brand"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case item = "item"
            
            case reasons = "reasons"
            
            case productQuantity = "product_quantity"
            
            case canReturn = "can_return"
            
            case displayName = "display_name"
            
            case canCancel = "can_cancel"
            
            case size = "size"
            
            case lineNumber = "line_number"
            
            case meta = "meta"
            
            case prices = "prices"
            
            case dates = "dates"
            
            case currentStatus = "current_status"
            
            case bagId = "bag_id"
            
            case entityType = "entity_type"
            
            case status = "status"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, article: Article? = nil, bagExpiryDate: String? = nil, bagId: Int, bagStatus: [BagStatusHistory]? = nil, bagType: String? = nil, brand: ShipmentListingBrand? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentOperationalStatus: BagStatusHistory, currentStatus: BagStatusHistory, dates: Dates? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: [FinancialBreakup], gst: GSTDetailsData? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: [String: Any]? = nil, prices: Prices? = nil, productQuantity: Int, reasons: [[String: Any]]? = nil, size: String? = nil, status: BagReturnableCancelableStatus) {
            
            self.bagType = bagType
            
            self.gst = gst
            
            self.financialBreakup = financialBreakup
            
            self.bagExpiryDate = bagExpiryDate
            
            self.bagStatus = bagStatus
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.article = article
            
            self.brand = brand
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.item = item
            
            self.reasons = reasons
            
            self.productQuantity = productQuantity
            
            self.canReturn = canReturn
            
            self.displayName = displayName
            
            self.canCancel = canCancel
            
            self.size = size
            
            self.lineNumber = lineNumber
            
            self.meta = meta
            
            self.prices = prices
            
            self.dates = dates
            
            self.currentStatus = currentStatus
            
            self.bagId = bagId
            
            self.entityType = entityType
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bagType = try container.decode(String.self, forKey: .bagType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gst = try container.decode(GSTDetailsData.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)
                
            
            
            
                do {
                    bagExpiryDate = try container.decode(String.self, forKey: .bagExpiryDate)
                
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
                
            
            
                currentOperationalStatus = try container.decode(BagStatusHistory.self, forKey: .currentOperationalStatus)
                
            
            
            
                do {
                    article = try container.decode(Article.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(ShipmentListingBrand.self, forKey: .brand)
                
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
                    item = try container.decode(PlatformItem.self, forKey: .item)
                
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
                
            
            
                productQuantity = try container.decode(Int.self, forKey: .productQuantity)
                
            
            
            
                do {
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
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
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    size = try container.decode(String.self, forKey: .size)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                
            
            
                currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
            
            
            
                bagId = try container.decode(Int.self, forKey: .bagId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bagType, forKey: .bagType)
            
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encode(bagExpiryDate, forKey: .bagExpiryDate)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
            
            
            try? container.encodeIfPresent(productQuantity, forKey: .productQuantity)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


