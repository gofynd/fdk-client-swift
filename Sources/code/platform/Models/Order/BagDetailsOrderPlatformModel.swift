

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BagDetails
        Used By: Order
    */

    class BagDetails: Codable {
        
        
        public var bagUpdateTime: Double?
        
        public var id: String?
        
        public var bagId: Int?
        
        public var affiliateBagDetails: AffiliateBagDetails?
        
        public var affiliateDetails: AffiliateDetails?
        
        public var appliedPromos: [[String: Any]]?
        
        public var article: Article?
        
        public var articleDetails: ArticleStatusDetails?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var bagStatusHistory: BagStatusHistory?
        
        public var brand: Brand?
        
        public var company: Company?
        
        public var currentOperationalStatus: BagStatusHistory?
        
        public var currentStatus: BagStatusHistory?
        
        public var dates: Dates?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var deliverySlot: DeliverySlotDetails?
        
        public var displayName: String?
        
        public var dpDetails: [String: Any]?
        
        public var einvoiceInfo: [String: Any]?
        
        public var entityType: String?
        
        public var fallbackUser: [String: Any]?
        
        public var financialBreakup: [FinancialBreakup]?
        
        public var fulfillingStore: Store?
        
        public var fyndstoreEmp: [String: Any]?
        
        public var gstDetails: GSTDetailsData?
        
        public var invoice: InvoiceDetails?
        
        public var item: Item?
        
        public var journeyType: String?
        
        public var lineNumber: Int?
        
        public var lockStatus: Bool?
        
        public var manifestId: String?
        
        public var meta: [String: Any]?
        
        public var modeOfPayment: String?
        
        public var noOfBagsOrder: Int?
        
        public var operationalStatus: String?
        
        public var order: OrderDetails?
        
        public var orderIntegrationId: String?
        
        public var orderType: String?
        
        public var orderValue: Double?
        
        public var orderingStore: Store?
        
        public var parentPromoBags: [String: Any]?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentType: String?
        
        public var payments: [String: Any]?
        
        public var prices: Prices?
        
        public var qcRequired: Bool?
        
        public var quantity: Double?
        
        public var reasons: [[String: Any]]?
        
        public var restoreCoupon: Bool?
        
        public var restorePromos: [String: Any]?
        
        public var rtoAddress: PlatformDeliveryAddress?
        
        public var sellerIdentifier: String?
        
        public var shipment: Shipment?
        
        public var shipmentDetails: ShipmentDetails?
        
        public var shipmentId: String?
        
        public var shipmentGst: ShipmentGstDetails?
        
        public var shipmentStatus: ShipmentStatusData?
        
        public var shipmentStatusHistory: [ShipmentStatusData]?
        
        public var status: BagReturnableCancelableStatus?
        
        public var tags: [String]?
        
        public var totalShipmentBags: Int?
        
        public var totalShipmentsInOrder: Int?
        
        public var transactionType: String?
        
        public var type: String?
        
        public var updatedAt: String?
        
        public var user: UserDetails?
        
        public var weight: WeightData?
        
        public var originalBagList: [Int]?
        
        public var identifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bagUpdateTime = "bag_update_time"
            
            case id = "id"
            
            case bagId = "bag_id"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case affiliateDetails = "affiliate_details"
            
            case appliedPromos = "applied_promos"
            
            case article = "article"
            
            case articleDetails = "article_details"
            
            case bagStatus = "bag_status"
            
            case bagStatusHistory = "bag_status_history"
            
            case brand = "brand"
            
            case company = "company"
            
            case currentOperationalStatus = "current_operational_status"
            
            case currentStatus = "current_status"
            
            case dates = "dates"
            
            case deliveryAddress = "delivery_address"
            
            case deliverySlot = "delivery_slot"
            
            case displayName = "display_name"
            
            case dpDetails = "dp_details"
            
            case einvoiceInfo = "einvoice_info"
            
            case entityType = "entity_type"
            
            case fallbackUser = "fallback_user"
            
            case financialBreakup = "financial_breakup"
            
            case fulfillingStore = "fulfilling_store"
            
            case fyndstoreEmp = "fyndstore_emp"
            
            case gstDetails = "gst_details"
            
            case invoice = "invoice"
            
            case item = "item"
            
            case journeyType = "journey_type"
            
            case lineNumber = "line_number"
            
            case lockStatus = "lock_status"
            
            case manifestId = "manifest_id"
            
            case meta = "meta"
            
            case modeOfPayment = "mode_of_payment"
            
            case noOfBagsOrder = "no_of_bags_order"
            
            case operationalStatus = "operational_status"
            
            case order = "order"
            
            case orderIntegrationId = "order_integration_id"
            
            case orderType = "order_type"
            
            case orderValue = "order_value"
            
            case orderingStore = "ordering_store"
            
            case parentPromoBags = "parent_promo_bags"
            
            case paymentMethods = "payment_methods"
            
            case paymentType = "payment_type"
            
            case payments = "payments"
            
            case prices = "prices"
            
            case qcRequired = "qc_required"
            
            case quantity = "quantity"
            
            case reasons = "reasons"
            
            case restoreCoupon = "restore_coupon"
            
            case restorePromos = "restore_promos"
            
            case rtoAddress = "rto_address"
            
            case sellerIdentifier = "seller_identifier"
            
            case shipment = "shipment"
            
            case shipmentDetails = "shipment_details"
            
            case shipmentId = "shipment_id"
            
            case shipmentGst = "shipment_gst"
            
            case shipmentStatus = "shipment_status"
            
            case shipmentStatusHistory = "shipment_status_history"
            
            case status = "status"
            
            case tags = "tags"
            
            case totalShipmentBags = "total_shipment_bags"
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case transactionType = "transaction_type"
            
            case type = "type"
            
            case updatedAt = "updated_at"
            
            case user = "user"
            
            case weight = "weight"
            
            case originalBagList = "original_bag_list"
            
            case identifier = "identifier"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article? = nil, articleDetails: ArticleStatusDetails? = nil, bagId: Int? = nil, bagStatus: [BagStatusHistory]? = nil, bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand? = nil, company: Company? = nil, currentOperationalStatus: BagStatusHistory? = nil, currentStatus: BagStatusHistory? = nil, dates: Dates? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, deliverySlot: DeliverySlotDetails? = nil, displayName: String? = nil, dpDetails: [String: Any]? = nil, einvoiceInfo: [String: Any]? = nil, entityType: String? = nil, fallbackUser: [String: Any]? = nil, financialBreakup: [FinancialBreakup]? = nil, fulfillingStore: Store? = nil, fyndstoreEmp: [String: Any]? = nil, gstDetails: GSTDetailsData? = nil, id: String? = nil, identifier: String? = nil, invoice: InvoiceDetails? = nil, item: Item? = nil, journeyType: String? = nil, lineNumber: Int? = nil, lockStatus: Bool? = nil, manifestId: String? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, order: OrderDetails? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, orderType: String? = nil, orderValue: Double? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, payments: [String: Any]? = nil, paymentMethods: [String: Any]? = nil, paymentType: String? = nil, prices: Prices? = nil, qcRequired: Bool? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, rtoAddress: PlatformDeliveryAddress? = nil, sellerIdentifier: String? = nil, shipment: Shipment? = nil, shipmentDetails: ShipmentDetails? = nil, shipmentGst: ShipmentGstDetails? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatusData? = nil, shipmentStatusHistory: [ShipmentStatusData]? = nil, status: BagReturnableCancelableStatus? = nil, tags: [String]? = nil, totalShipmentsInOrder: Int? = nil, totalShipmentBags: Int? = nil, transactionType: String? = nil, type: String? = nil, updatedAt: String? = nil, user: UserDetails? = nil, weight: WeightData? = nil) {
            
            self.bagUpdateTime = bagUpdateTime
            
            self.id = id
            
            self.bagId = bagId
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.affiliateDetails = affiliateDetails
            
            self.appliedPromos = appliedPromos
            
            self.article = article
            
            self.articleDetails = articleDetails
            
            self.bagStatus = bagStatus
            
            self.bagStatusHistory = bagStatusHistory
            
            self.brand = brand
            
            self.company = company
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.currentStatus = currentStatus
            
            self.dates = dates
            
            self.deliveryAddress = deliveryAddress
            
            self.deliverySlot = deliverySlot
            
            self.displayName = displayName
            
            self.dpDetails = dpDetails
            
            self.einvoiceInfo = einvoiceInfo
            
            self.entityType = entityType
            
            self.fallbackUser = fallbackUser
            
            self.financialBreakup = financialBreakup
            
            self.fulfillingStore = fulfillingStore
            
            self.fyndstoreEmp = fyndstoreEmp
            
            self.gstDetails = gstDetails
            
            self.invoice = invoice
            
            self.item = item
            
            self.journeyType = journeyType
            
            self.lineNumber = lineNumber
            
            self.lockStatus = lockStatus
            
            self.manifestId = manifestId
            
            self.meta = meta
            
            self.modeOfPayment = modeOfPayment
            
            self.noOfBagsOrder = noOfBagsOrder
            
            self.operationalStatus = operationalStatus
            
            self.order = order
            
            self.orderIntegrationId = orderIntegrationId
            
            self.orderType = orderType
            
            self.orderValue = orderValue
            
            self.orderingStore = orderingStore
            
            self.parentPromoBags = parentPromoBags
            
            self.paymentMethods = paymentMethods
            
            self.paymentType = paymentType
            
            self.payments = payments
            
            self.prices = prices
            
            self.qcRequired = qcRequired
            
            self.quantity = quantity
            
            self.reasons = reasons
            
            self.restoreCoupon = restoreCoupon
            
            self.restorePromos = restorePromos
            
            self.rtoAddress = rtoAddress
            
            self.sellerIdentifier = sellerIdentifier
            
            self.shipment = shipment
            
            self.shipmentDetails = shipmentDetails
            
            self.shipmentId = shipmentId
            
            self.shipmentGst = shipmentGst
            
            self.shipmentStatus = shipmentStatus
            
            self.shipmentStatusHistory = shipmentStatusHistory
            
            self.status = status
            
            self.tags = tags
            
            self.totalShipmentBags = totalShipmentBags
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.transactionType = transactionType
            
            self.type = type
            
            self.updatedAt = updatedAt
            
            self.user = user
            
            self.weight = weight
            
            self.originalBagList = originalBagList
            
            self.identifier = identifier
            
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagId = try container.decode(Int.self, forKey: .bagId)
                
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
                    affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)
                
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
                    article = try container.decode(Article.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleDetails = try container.decode(ArticleStatusDetails.self, forKey: .articleDetails)
                
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
                    bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)
                
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
                    company = try container.decode(Company.self, forKey: .company)
                
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
                    currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
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
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlot = try container.decode(DeliverySlotDetails.self, forKey: .deliverySlot)
                
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
                    dpDetails = try container.decode([String: Any].self, forKey: .dpDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    einvoiceInfo = try container.decode([String: Any].self, forKey: .einvoiceInfo)
                
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
                    fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)
                
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
                    fulfillingStore = try container.decode(Store.self, forKey: .fulfillingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(InvoiceDetails.self, forKey: .invoice)
                
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
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                
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
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manifestId = try container.decode(String.self, forKey: .manifestId)
                
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
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
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
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    order = try container.decode(OrderDetails.self, forKey: .order)
                
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
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(Double.self, forKey: .orderValue)
                
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
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([String: Any].self, forKey: .payments)
                
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
                    qcRequired = try container.decode(Bool.self, forKey: .qcRequired)
                
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
                    reasons = try container.decode([[String: Any]].self, forKey: .reasons)
                
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
                    restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rtoAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .rtoAddress)
                
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
                    shipment = try container.decode(Shipment.self, forKey: .shipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentDetails = try container.decode(ShipmentDetails.self, forKey: .shipmentDetails)
                
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
                    shipmentGst = try container.decode(ShipmentGstDetails.self, forKey: .shipmentGst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatus = try container.decode(ShipmentStatusData.self, forKey: .shipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatusHistory = try container.decode([ShipmentStatusData].self, forKey: .shipmentStatusHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
                
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
                    totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionType = try container.decode(String.self, forKey: .transactionType)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(UserDetails.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(WeightData.self, forKey: .weight)
                
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
                    identifier = try container.decode(String.self, forKey: .identifier)
                
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
            
            
            
            
            try? container.encode(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encode(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(dpDetails, forKey: .dpDetails)
            
            
            
            
            try? container.encode(einvoiceInfo, forKey: .einvoiceInfo)
            
            
            
            
            try? container.encode(entityType, forKey: .entityType)
            
            
            
            
            try? container.encode(fallbackUser, forKey: .fallbackUser)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encode(fyndstoreEmp, forKey: .fyndstoreEmp)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encode(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encode(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encode(noOfBagsOrder, forKey: .noOfBagsOrder)
            
            
            
            
            try? container.encode(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encode(orderType, forKey: .orderType)
            
            
            
            
            try? container.encode(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encode(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encode(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encode(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encode(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encode(qcRequired, forKey: .qcRequired)
            
            
            
            
            try? container.encode(quantity, forKey: .quantity)
            
            
            
            
            try? container.encode(reasons, forKey: .reasons)
            
            
            
            
            try? container.encode(restoreCoupon, forKey: .restoreCoupon)
            
            
            
            
            try? container.encode(restorePromos, forKey: .restorePromos)
            
            
            
            
            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)
            
            
            
            
            try? container.encode(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
            
            
            
            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)
            
            
            
            
            try? container.encode(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)
            
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            
            try? container.encode(shipmentStatusHistory, forKey: .shipmentStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encode(totalShipmentBags, forKey: .totalShipmentBags)
            
            
            
            
            try? container.encode(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            
            try? container.encode(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encode(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encode(originalBagList, forKey: .originalBagList)
            
            
            
            
            try? container.encode(identifier, forKey: .identifier)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BagDetails
        Used By: Order
    */

    class BagDetails: Codable {
        
        
        public var bagUpdateTime: Double?
        
        public var id: String?
        
        public var bagId: Int?
        
        public var affiliateBagDetails: AffiliateBagDetails?
        
        public var affiliateDetails: AffiliateDetails?
        
        public var appliedPromos: [[String: Any]]?
        
        public var article: Article?
        
        public var articleDetails: ArticleStatusDetails?
        
        public var bagStatus: [BagStatusHistory]?
        
        public var bagStatusHistory: BagStatusHistory?
        
        public var brand: Brand?
        
        public var company: Company?
        
        public var currentOperationalStatus: BagStatusHistory?
        
        public var currentStatus: BagStatusHistory?
        
        public var dates: Dates?
        
        public var deliveryAddress: PlatformDeliveryAddress?
        
        public var deliverySlot: DeliverySlotDetails?
        
        public var displayName: String?
        
        public var dpDetails: [String: Any]?
        
        public var einvoiceInfo: [String: Any]?
        
        public var entityType: String?
        
        public var fallbackUser: [String: Any]?
        
        public var financialBreakup: [FinancialBreakup]?
        
        public var fulfillingStore: Store?
        
        public var fyndstoreEmp: [String: Any]?
        
        public var gstDetails: GSTDetailsData?
        
        public var invoice: InvoiceDetails?
        
        public var item: Item?
        
        public var journeyType: String?
        
        public var lineNumber: Int?
        
        public var lockStatus: Bool?
        
        public var manifestId: String?
        
        public var meta: [String: Any]?
        
        public var modeOfPayment: String?
        
        public var noOfBagsOrder: Int?
        
        public var operationalStatus: String?
        
        public var order: OrderDetails?
        
        public var orderIntegrationId: String?
        
        public var orderType: String?
        
        public var orderValue: Double?
        
        public var orderingStore: Store?
        
        public var parentPromoBags: [String: Any]?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentType: String?
        
        public var payments: [String: Any]?
        
        public var prices: Prices?
        
        public var qcRequired: Bool?
        
        public var quantity: Double?
        
        public var reasons: [[String: Any]]?
        
        public var restoreCoupon: Bool?
        
        public var restorePromos: [String: Any]?
        
        public var rtoAddress: PlatformDeliveryAddress?
        
        public var sellerIdentifier: String?
        
        public var shipment: Shipment?
        
        public var shipmentDetails: ShipmentDetails?
        
        public var shipmentId: String?
        
        public var shipmentGst: ShipmentGstDetails?
        
        public var shipmentStatus: ShipmentStatusData?
        
        public var shipmentStatusHistory: [ShipmentStatusData]?
        
        public var status: BagReturnableCancelableStatus?
        
        public var tags: [String]?
        
        public var totalShipmentBags: Int?
        
        public var totalShipmentsInOrder: Int?
        
        public var transactionType: String?
        
        public var type: String?
        
        public var updatedAt: String?
        
        public var user: UserDetails?
        
        public var weight: WeightData?
        
        public var originalBagList: [Int]?
        
        public var identifier: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bagUpdateTime = "bag_update_time"
            
            case id = "id"
            
            case bagId = "bag_id"
            
            case affiliateBagDetails = "affiliate_bag_details"
            
            case affiliateDetails = "affiliate_details"
            
            case appliedPromos = "applied_promos"
            
            case article = "article"
            
            case articleDetails = "article_details"
            
            case bagStatus = "bag_status"
            
            case bagStatusHistory = "bag_status_history"
            
            case brand = "brand"
            
            case company = "company"
            
            case currentOperationalStatus = "current_operational_status"
            
            case currentStatus = "current_status"
            
            case dates = "dates"
            
            case deliveryAddress = "delivery_address"
            
            case deliverySlot = "delivery_slot"
            
            case displayName = "display_name"
            
            case dpDetails = "dp_details"
            
            case einvoiceInfo = "einvoice_info"
            
            case entityType = "entity_type"
            
            case fallbackUser = "fallback_user"
            
            case financialBreakup = "financial_breakup"
            
            case fulfillingStore = "fulfilling_store"
            
            case fyndstoreEmp = "fyndstore_emp"
            
            case gstDetails = "gst_details"
            
            case invoice = "invoice"
            
            case item = "item"
            
            case journeyType = "journey_type"
            
            case lineNumber = "line_number"
            
            case lockStatus = "lock_status"
            
            case manifestId = "manifest_id"
            
            case meta = "meta"
            
            case modeOfPayment = "mode_of_payment"
            
            case noOfBagsOrder = "no_of_bags_order"
            
            case operationalStatus = "operational_status"
            
            case order = "order"
            
            case orderIntegrationId = "order_integration_id"
            
            case orderType = "order_type"
            
            case orderValue = "order_value"
            
            case orderingStore = "ordering_store"
            
            case parentPromoBags = "parent_promo_bags"
            
            case paymentMethods = "payment_methods"
            
            case paymentType = "payment_type"
            
            case payments = "payments"
            
            case prices = "prices"
            
            case qcRequired = "qc_required"
            
            case quantity = "quantity"
            
            case reasons = "reasons"
            
            case restoreCoupon = "restore_coupon"
            
            case restorePromos = "restore_promos"
            
            case rtoAddress = "rto_address"
            
            case sellerIdentifier = "seller_identifier"
            
            case shipment = "shipment"
            
            case shipmentDetails = "shipment_details"
            
            case shipmentId = "shipment_id"
            
            case shipmentGst = "shipment_gst"
            
            case shipmentStatus = "shipment_status"
            
            case shipmentStatusHistory = "shipment_status_history"
            
            case status = "status"
            
            case tags = "tags"
            
            case totalShipmentBags = "total_shipment_bags"
            
            case totalShipmentsInOrder = "total_shipments_in_order"
            
            case transactionType = "transaction_type"
            
            case type = "type"
            
            case updatedAt = "updated_at"
            
            case user = "user"
            
            case weight = "weight"
            
            case originalBagList = "original_bag_list"
            
            case identifier = "identifier"
            
        }

        public init(affiliateBagDetails: AffiliateBagDetails? = nil, affiliateDetails: AffiliateDetails? = nil, appliedPromos: [[String: Any]]? = nil, article: Article? = nil, articleDetails: ArticleStatusDetails? = nil, bagId: Int? = nil, bagStatus: [BagStatusHistory]? = nil, bagStatusHistory: BagStatusHistory? = nil, bagUpdateTime: Double? = nil, brand: Brand? = nil, company: Company? = nil, currentOperationalStatus: BagStatusHistory? = nil, currentStatus: BagStatusHistory? = nil, dates: Dates? = nil, deliveryAddress: PlatformDeliveryAddress? = nil, deliverySlot: DeliverySlotDetails? = nil, displayName: String? = nil, dpDetails: [String: Any]? = nil, einvoiceInfo: [String: Any]? = nil, entityType: String? = nil, fallbackUser: [String: Any]? = nil, financialBreakup: [FinancialBreakup]? = nil, fulfillingStore: Store? = nil, fyndstoreEmp: [String: Any]? = nil, gstDetails: GSTDetailsData? = nil, id: String? = nil, identifier: String? = nil, invoice: InvoiceDetails? = nil, item: Item? = nil, journeyType: String? = nil, lineNumber: Int? = nil, lockStatus: Bool? = nil, manifestId: String? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, noOfBagsOrder: Int? = nil, operationalStatus: String? = nil, order: OrderDetails? = nil, orderingStore: Store? = nil, orderIntegrationId: String? = nil, orderType: String? = nil, orderValue: Double? = nil, originalBagList: [Int]? = nil, parentPromoBags: [String: Any]? = nil, payments: [String: Any]? = nil, paymentMethods: [String: Any]? = nil, paymentType: String? = nil, prices: Prices? = nil, qcRequired: Bool? = nil, quantity: Double? = nil, reasons: [[String: Any]]? = nil, restoreCoupon: Bool? = nil, restorePromos: [String: Any]? = nil, rtoAddress: PlatformDeliveryAddress? = nil, sellerIdentifier: String? = nil, shipment: Shipment? = nil, shipmentDetails: ShipmentDetails? = nil, shipmentGst: ShipmentGstDetails? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatusData? = nil, shipmentStatusHistory: [ShipmentStatusData]? = nil, status: BagReturnableCancelableStatus? = nil, tags: [String]? = nil, totalShipmentsInOrder: Int? = nil, totalShipmentBags: Int? = nil, transactionType: String? = nil, type: String? = nil, updatedAt: String? = nil, user: UserDetails? = nil, weight: WeightData? = nil) {
            
            self.bagUpdateTime = bagUpdateTime
            
            self.id = id
            
            self.bagId = bagId
            
            self.affiliateBagDetails = affiliateBagDetails
            
            self.affiliateDetails = affiliateDetails
            
            self.appliedPromos = appliedPromos
            
            self.article = article
            
            self.articleDetails = articleDetails
            
            self.bagStatus = bagStatus
            
            self.bagStatusHistory = bagStatusHistory
            
            self.brand = brand
            
            self.company = company
            
            self.currentOperationalStatus = currentOperationalStatus
            
            self.currentStatus = currentStatus
            
            self.dates = dates
            
            self.deliveryAddress = deliveryAddress
            
            self.deliverySlot = deliverySlot
            
            self.displayName = displayName
            
            self.dpDetails = dpDetails
            
            self.einvoiceInfo = einvoiceInfo
            
            self.entityType = entityType
            
            self.fallbackUser = fallbackUser
            
            self.financialBreakup = financialBreakup
            
            self.fulfillingStore = fulfillingStore
            
            self.fyndstoreEmp = fyndstoreEmp
            
            self.gstDetails = gstDetails
            
            self.invoice = invoice
            
            self.item = item
            
            self.journeyType = journeyType
            
            self.lineNumber = lineNumber
            
            self.lockStatus = lockStatus
            
            self.manifestId = manifestId
            
            self.meta = meta
            
            self.modeOfPayment = modeOfPayment
            
            self.noOfBagsOrder = noOfBagsOrder
            
            self.operationalStatus = operationalStatus
            
            self.order = order
            
            self.orderIntegrationId = orderIntegrationId
            
            self.orderType = orderType
            
            self.orderValue = orderValue
            
            self.orderingStore = orderingStore
            
            self.parentPromoBags = parentPromoBags
            
            self.paymentMethods = paymentMethods
            
            self.paymentType = paymentType
            
            self.payments = payments
            
            self.prices = prices
            
            self.qcRequired = qcRequired
            
            self.quantity = quantity
            
            self.reasons = reasons
            
            self.restoreCoupon = restoreCoupon
            
            self.restorePromos = restorePromos
            
            self.rtoAddress = rtoAddress
            
            self.sellerIdentifier = sellerIdentifier
            
            self.shipment = shipment
            
            self.shipmentDetails = shipmentDetails
            
            self.shipmentId = shipmentId
            
            self.shipmentGst = shipmentGst
            
            self.shipmentStatus = shipmentStatus
            
            self.shipmentStatusHistory = shipmentStatusHistory
            
            self.status = status
            
            self.tags = tags
            
            self.totalShipmentBags = totalShipmentBags
            
            self.totalShipmentsInOrder = totalShipmentsInOrder
            
            self.transactionType = transactionType
            
            self.type = type
            
            self.updatedAt = updatedAt
            
            self.user = user
            
            self.weight = weight
            
            self.originalBagList = originalBagList
            
            self.identifier = identifier
            
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
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagId = try container.decode(Int.self, forKey: .bagId)
                
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
                    affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)
                
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
                    article = try container.decode(Article.self, forKey: .article)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleDetails = try container.decode(ArticleStatusDetails.self, forKey: .articleDetails)
                
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
                    bagStatusHistory = try container.decode(BagStatusHistory.self, forKey: .bagStatusHistory)
                
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
                    company = try container.decode(Company.self, forKey: .company)
                
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
                    currentStatus = try container.decode(BagStatusHistory.self, forKey: .currentStatus)
                
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
                    deliveryAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlot = try container.decode(DeliverySlotDetails.self, forKey: .deliverySlot)
                
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
                    dpDetails = try container.decode([String: Any].self, forKey: .dpDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    einvoiceInfo = try container.decode([String: Any].self, forKey: .einvoiceInfo)
                
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
                    fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)
                
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
                    fulfillingStore = try container.decode(Store.self, forKey: .fulfillingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(InvoiceDetails.self, forKey: .invoice)
                
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
                    journeyType = try container.decode(String.self, forKey: .journeyType)
                
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
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manifestId = try container.decode(String.self, forKey: .manifestId)
                
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
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
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
                    operationalStatus = try container.decode(String.self, forKey: .operationalStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    order = try container.decode(OrderDetails.self, forKey: .order)
                
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
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderValue = try container.decode(Double.self, forKey: .orderValue)
                
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
                    parentPromoBags = try container.decode([String: Any].self, forKey: .parentPromoBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentType = try container.decode(String.self, forKey: .paymentType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode([String: Any].self, forKey: .payments)
                
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
                    qcRequired = try container.decode(Bool.self, forKey: .qcRequired)
                
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
                    reasons = try container.decode([[String: Any]].self, forKey: .reasons)
                
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
                    restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rtoAddress = try container.decode(PlatformDeliveryAddress.self, forKey: .rtoAddress)
                
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
                    shipment = try container.decode(Shipment.self, forKey: .shipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentDetails = try container.decode(ShipmentDetails.self, forKey: .shipmentDetails)
                
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
                    shipmentGst = try container.decode(ShipmentGstDetails.self, forKey: .shipmentGst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatus = try container.decode(ShipmentStatusData.self, forKey: .shipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatusHistory = try container.decode([ShipmentStatusData].self, forKey: .shipmentStatusHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(BagReturnableCancelableStatus.self, forKey: .status)
                
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
                    totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transactionType = try container.decode(String.self, forKey: .transactionType)
                
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
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(UserDetails.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    weight = try container.decode(WeightData.self, forKey: .weight)
                
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
                    identifier = try container.decode(String.self, forKey: .identifier)
                
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
            
            
            
            
            try? container.encode(bagId, forKey: .bagId)
            
            
            
            
            try? container.encodeIfPresent(affiliateBagDetails, forKey: .affiliateBagDetails)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encode(appliedPromos, forKey: .appliedPromos)
            
            
            
            
            try? container.encodeIfPresent(article, forKey: .article)
            
            
            
            
            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)
            
            
            
            
            try? container.encodeIfPresent(bagStatus, forKey: .bagStatus)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(currentOperationalStatus, forKey: .currentOperationalStatus)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(dates, forKey: .dates)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
            
            
            
            
            try? container.encode(displayName, forKey: .displayName)
            
            
            
            
            try? container.encode(dpDetails, forKey: .dpDetails)
            
            
            
            
            try? container.encode(einvoiceInfo, forKey: .einvoiceInfo)
            
            
            
            
            try? container.encode(entityType, forKey: .entityType)
            
            
            
            
            try? container.encode(fallbackUser, forKey: .fallbackUser)
            
            
            
            
            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encode(fyndstoreEmp, forKey: .fyndstoreEmp)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(item, forKey: .item)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(lineNumber, forKey: .lineNumber)
            
            
            
            
            try? container.encode(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encode(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encode(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encode(noOfBagsOrder, forKey: .noOfBagsOrder)
            
            
            
            
            try? container.encode(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            
            try? container.encode(orderIntegrationId, forKey: .orderIntegrationId)
            
            
            
            
            try? container.encode(orderType, forKey: .orderType)
            
            
            
            
            try? container.encode(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encode(parentPromoBags, forKey: .parentPromoBags)
            
            
            
            
            try? container.encode(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encode(paymentType, forKey: .paymentType)
            
            
            
            
            try? container.encode(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encode(qcRequired, forKey: .qcRequired)
            
            
            
            
            try? container.encode(quantity, forKey: .quantity)
            
            
            
            
            try? container.encode(reasons, forKey: .reasons)
            
            
            
            
            try? container.encode(restoreCoupon, forKey: .restoreCoupon)
            
            
            
            
            try? container.encode(restorePromos, forKey: .restorePromos)
            
            
            
            
            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)
            
            
            
            
            try? container.encode(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
            
            
            
            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)
            
            
            
            
            try? container.encode(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)
            
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            
            try? container.encode(shipmentStatusHistory, forKey: .shipmentStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encode(tags, forKey: .tags)
            
            
            
            
            try? container.encode(totalShipmentBags, forKey: .totalShipmentBags)
            
            
            
            
            try? container.encode(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
            
            
            
            
            try? container.encode(transactionType, forKey: .transactionType)
            
            
            
            
            try? container.encode(type, forKey: .type)
            
            
            
            
            try? container.encode(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(weight, forKey: .weight)
            
            
            
            
            try? container.encode(originalBagList, forKey: .originalBagList)
            
            
            
            
            try? container.encode(identifier, forKey: .identifier)
            
            
        }
        
    }
}


