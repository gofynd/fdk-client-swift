

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderBags
        Used By: Order
    */

    class OrderBags: Codable {
        
        
        public var gstDetails: GSTDetailsData?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var parentPromoBags: [String: Any]?
        
        public var financialBreakup: FinancialBreakup?
        
        public var bagConfigs: BagConfigs?
        
        public var sellerIdentifier: String?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var article: OrderBagArticle?
        
        public var brand: OrderBrandName?
        
        public var groupId: String?
        
        public var affiliateBagDetails: AffiliateBagsDetails?
        
        public var item: PlatformItem?
        
        public var paymentMethods: [BagPaymentMethods]?
        
        public var quantity: Int?
        
        public var identifier: String?
        
        public var canReturn: Bool?
        
        public var canCancel: Bool?
        
        public var displayName: String?
        
        public var lineNumber: Int?
        
        public var meta: [String: Any]?
        
        public var appliedPromos: [AppliedPromos]?
        
        public var prices: Prices?
        
        public var currentStatus: CurrentStatus?
        
        public var bagId: Int
        
        public var entityType: String?
        
        public var isParent: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstDetails = "gst_details"
            
            case bagStatus = "bag_status"
            
            case parentPromoBags = "parent_promo_bags"
            
            case financialBreakup = "financial_breakup"
            
            case bagConfigs = "bag_configs"
            
            case sellerIdentifier = "seller_identifier"
            
            case deliveryAddress = "delivery_address"
            
            case article = "article"
            
            case brand = "brand"
            
            case groupId = "group_id"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case item = "item"
            
            case paymentMethods = "payment_methods"
            
            case quantity = "quantity"
            
            case identifier = "identifier"
            
            case canReturn = "can_return"
            
            case canCancel = "can_cancel"
            
            case displayName = "display_name"
            
            case lineNumber = "line_number"
            
            case meta = "meta"
            
            case appliedPromos = "applied_promos"
            
            case prices = "prices"
            
            case currentStatus = "current_status"
            
            case bagId = "bag_id"
            
            case entityType = "entity_type"
            
            case isParent = "is_parent"
            
        }

        public init(affiliateBagDetails: AffiliateBagsDetails? = nil, appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, bagStatus: [BagStatusHistory]? = nil, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: FinancialBreakup? = nil, groupId: String? = nil, gstDetails: GSTDetailsData? = nil, identifier: String? = nil, isParent: Bool? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: [String: Any]? = nil, parentPromoBags: [String: Any]? = nil, paymentMethods: [BagPaymentMethods]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            
            self.gstDetails = gstDetails
            
            self.bagStatus = bagStatus
            
            self.parentPromoBags = parentPromoBags
            
            self.financialBreakup = financialBreakup
            
            self.bagConfigs = bagConfigs
            
            self.sellerIdentifier = sellerIdentifier
            
            self.deliveryAddress = deliveryAddress
            
            self.article = article
            
            self.brand = brand
            
            self.groupId = groupId
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.item = item
            
            self.paymentMethods = paymentMethods
            
            self.quantity = quantity
            
            self.identifier = identifier
            
            self.canReturn = canReturn
            
            self.canCancel = canCancel
            
            self.displayName = displayName
            
            self.lineNumber = lineNumber
            
            self.meta = meta
            
            self.appliedPromos = appliedPromos
            
            self.prices = prices
            
            self.currentStatus = currentStatus
            
            self.bagId = bagId
            
            self.entityType = entityType
            
            self.isParent = isParent
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)
                
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
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialBreakup = try container.decode(FinancialBreakup.self, forKey: .financialBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)
                
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
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(OrderBagArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(OrderBrandName.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateBagDetails = try container.decode(AffiliateBagsDetails.self, forKey: .affiliateBagDetails)
                
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
                    paymentMethods = try container.decode([BagPaymentMethods].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)
                
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
                    currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bagId = try container.decode(Int.self, forKey: .bagId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isParent = try container.decode(Bool.self, forKey: .isParent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(isParent, forKey: .isParent)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderBags
        Used By: Order
    */

    class OrderBags: Codable {
        
        
        public var gstDetails: GSTDetailsData?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var parentPromoBags: [String: Any]?
        
        public var financialBreakup: FinancialBreakup?
        
        public var bagConfigs: BagConfigs?
        
        public var sellerIdentifier: String?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var article: OrderBagArticle?
        
        public var brand: OrderBrandName?
        
        public var groupId: String?
        
        public var affiliateBagDetails: AffiliateBagsDetails?
        
        public var item: PlatformItem?
        
        public var paymentMethods: [BagPaymentMethods]?
        
        public var quantity: Int?
        
        public var identifier: String?
        
        public var canReturn: Bool?
        
        public var canCancel: Bool?
        
        public var displayName: String?
        
        public var lineNumber: Int?
        
        public var meta: [String: Any]?
        
        public var appliedPromos: [AppliedPromos]?
        
        public var prices: Prices?
        
        public var currentStatus: CurrentStatus?
        
        public var bagId: Int
        
        public var entityType: String?
        
        public var isParent: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstDetails = "gst_details"
            
            case bagStatus = "bag_status"
            
            case parentPromoBags = "parent_promo_bags"
            
            case financialBreakup = "financial_breakup"
            
            case bagConfigs = "bag_configs"
            
            case sellerIdentifier = "seller_identifier"
            
            case deliveryAddress = "delivery_address"
            
            case article = "article"
            
            case brand = "brand"
            
            case groupId = "group_id"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case item = "item"
            
            case paymentMethods = "payment_methods"
            
            case quantity = "quantity"
            
            case identifier = "identifier"
            
            case canReturn = "can_return"
            
            case canCancel = "can_cancel"
            
            case displayName = "display_name"
            
            case lineNumber = "line_number"
            
            case meta = "meta"
            
            case appliedPromos = "applied_promos"
            
            case prices = "prices"
            
            case currentStatus = "current_status"
            
            case bagId = "bag_id"
            
            case entityType = "entity_type"
            
            case isParent = "is_parent"
            
        }

        public init(affiliateBagDetails: AffiliateBagsDetails? = nil, appliedPromos: [AppliedPromos]? = nil, article: OrderBagArticle? = nil, bagConfigs: BagConfigs? = nil, bagId: Int, bagStatus: [BagStatusHistory]? = nil, brand: OrderBrandName? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, currentStatus: CurrentStatus? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, displayName: String? = nil, entityType: String? = nil, financialBreakup: FinancialBreakup? = nil, groupId: String? = nil, gstDetails: GSTDetailsData? = nil, identifier: String? = nil, isParent: Bool? = nil, item: PlatformItem? = nil, lineNumber: Int? = nil, meta: [String: Any]? = nil, parentPromoBags: [String: Any]? = nil, paymentMethods: [BagPaymentMethods]? = nil, prices: Prices? = nil, quantity: Int? = nil, sellerIdentifier: String? = nil) {
            
            self.gstDetails = gstDetails
            
            self.bagStatus = bagStatus
            
            self.parentPromoBags = parentPromoBags
            
            self.financialBreakup = financialBreakup
            
            self.bagConfigs = bagConfigs
            
            self.sellerIdentifier = sellerIdentifier
            
            self.deliveryAddress = deliveryAddress
            
            self.article = article
            
            self.brand = brand
            
            self.groupId = groupId
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.item = item
            
            self.paymentMethods = paymentMethods
            
            self.quantity = quantity
            
            self.identifier = identifier
            
            self.canReturn = canReturn
            
            self.canCancel = canCancel
            
            self.displayName = displayName
            
            self.lineNumber = lineNumber
            
            self.meta = meta
            
            self.appliedPromos = appliedPromos
            
            self.prices = prices
            
            self.currentStatus = currentStatus
            
            self.bagId = bagId
            
            self.entityType = entityType
            
            self.isParent = isParent
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)
                
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
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialBreakup = try container.decode(FinancialBreakup.self, forKey: .financialBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagConfigs = try container.decode(BagConfigs.self, forKey: .bagConfigs)
                
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
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    article = try container.decode(OrderBagArticle.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(OrderBrandName.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateBagDetails = try container.decode(AffiliateBagsDetails.self, forKey: .affiliateBagDetails)
                
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
                    paymentMethods = try container.decode([BagPaymentMethods].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
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
                    canReturn = try container.decode(Bool.self, forKey: .canReturn)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    appliedPromos = try container.decode([AppliedPromos].self, forKey: .appliedPromos)
                
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
                    currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                bagId = try container.decode(Int.self, forKey: .bagId)
                
            
            
            
                do {
                    entityType = try container.decode(String.self, forKey: .entityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isParent = try container.decode(Bool.self, forKey: .isParent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(bagConfigs, forKey: .bagConfigs)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(isParent, forKey: .isParent)
            
            
        }
        
    }
}


