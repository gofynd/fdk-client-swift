

import Foundation


public extension PlatformClient.Order {
    /*
        Model: PlatformShipment
        Used By: Order
    */

    class PlatformShipment: Codable {
        
        
        public var pickedDate: String?
        
        public var trackingList: [TrackingList]?
        
        public var invoice: InvoiceInfo?
        
        public var shipmentStatus: String?
        
        public var gstDetails: GSTDetailsData?
        
        public var orderStatus: OrderStatusData?
        
        public var deliverySlot: [String: Any]?
        
        public var order: OrderDetailsData?
        
        public var user: UserDataInfo?
        
        public var enableDpTracking: Bool?
        
        public var customMessage: String?
        
        public var estimatedSlaTime: String?
        
        public var estimatedSlaTs: String?
        
        public var canUpdateDimension: Bool?
        
        public var shipmentImages: [String]?
        
        public var deliveryDetails: [String: Any]?
        
        public var billingDetails: [String: Any]?
        
        public var forwardShipmentId: String?
        
        public var fulfilmentPriority: Int?
        
        public var shipmentDetails: ShipmentLockDetails?
        
        public var customMeta: [[String: Any]]?
        
        public var shipmentQuantity: Int?
        
        public var companyDetails: CompanyDetails?
        
        public var orderingStore: OrderingStoreDetails?
        
        public var orderPlatform: String?
        
        public var lockStatus: Bool?
        
        public var platformLogo: String?
        
        public var userAgent: String?
        
        public var dpDetails: DPDetailsData?
        
        public var invoiceId: String?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [ShipmentPaymentInfoData]?
        
        public var coupon: [String: Any]?
        
        public var affiliateDetails: AffiliateDetails?
        
        public var priorityText: String?
        
        public var bagStatusHistory: [BagStatusHistory]?
        
        public var isDpAssignEnabled: Bool?
        
        public var bags: [OrderBags]?
        
        public var dpAssignment: Bool?
        
        public var totalItems: Int?
        
        public var fulfillingStore: FulfillingStore?
        
        public var meta: [String: Any]?
        
        public var pdfLinks: [String: Any]?
        
        public var paymentMode: String?
        
        public var packagingType: String?
        
        public var journeyType: String?
        
        public var prices: Prices?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var vertical: String?
        
        public var shipmentId: String
        
        public var payments: ShipmentPayments?
        
        public var operationalStatus: String?
        
        public var status: ShipmentStatusData?
        
        public var totalBags: Int?
        
        public var shipmentCreatedAt: String?
        
        public var shipmentCreatedTs: String?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var isLapaEnabled: Bool?
        
        public var previousShipmentId: String?
        
        public var shipmentUpdateTime: Double?
        
        public var rtoAddress: Address?
        
        public var creditNoteId: String?
        
        public var isSelfShip: Bool?
        
        public var modeOfPayment: String?
        
        public var affiliateShipmentId: String?
        
        public var trackingUrl: String?
        
        public var forwardEndShipmentId: String?
        
        public var logisticsMeta: [String: Any]?
        
        public var refundInformation: [[String: Any]]?
        
        public var manifestId: String?
        
        public var companyId: Double?
        
        public var pickupSlot: [String: Any]?
        
        public var canProcess: Bool?
        
        public var markAsReturnable: Bool?
        
        public var orderSourceDomain: String?
        
        public var actionable: Bool?
        
        public var transitionConfig: [String: Any]?
        
        public var nextPossibleStates: [String: Any]?
        
        public var isProcessing: Bool?
        
        public var totalBagQty: Double?
        
        public var orderCreatedTime: String?
        
        public var orderCreatedTs: String?
        
        public var company: [String: Any]?
        
        public var fyndstoreEmp: [String: Any]?
        
        public var isNotFyndSource: Bool?
        
        public var isFyndCoupon: Bool?
        
        public var userId: String?
        
        public var emailId: String?
        
        public var escalation: [String: Any]?
        
        public var beneficiaryDetails: Bool?
        
        public var canBreak: Bool?
        
        public var isPackagingOrder: Bool?
        
        public var deliveryStatus: [[String: Any]]?
        
        public var currentShipmentStatus: [String: Any]?
        
        public var orderType: String?
        
        public var canCancel: Bool?
        
        public var enableTracking: Bool?
        
        public var canReturn: Bool?
        
        public var isInvoiced: Bool?
        
        public var childNodes: [[String: Any]]?
        
        public var userInfo: [String: Any]?
        
        public var statusProgress: Double?
        
        public var items: [[String: Any]]?
        
        public var refundDetails: [[String: Any]]?
        
        public var financialStatus: String?
        
        public var trackInfo: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pickedDate = "picked_date"
            
            case trackingList = "tracking_list"
            
            case invoice = "invoice"
            
            case shipmentStatus = "shipment_status"
            
            case gstDetails = "gst_details"
            
            case orderStatus = "order_status"
            
            case deliverySlot = "delivery_slot"
            
            case order = "order"
            
            case user = "user"
            
            case enableDpTracking = "enable_dp_tracking"
            
            case customMessage = "custom_message"
            
            case estimatedSlaTime = "estimated_sla_time"
            
            case estimatedSlaTs = "estimated_sla_ts"
            
            case canUpdateDimension = "can_update_dimension"
            
            case shipmentImages = "shipment_images"
            
            case deliveryDetails = "delivery_details"
            
            case billingDetails = "billing_details"
            
            case forwardShipmentId = "forward_shipment_id"
            
            case fulfilmentPriority = "fulfilment_priority"
            
            case shipmentDetails = "shipment_details"
            
            case customMeta = "custom_meta"
            
            case shipmentQuantity = "shipment_quantity"
            
            case companyDetails = "company_details"
            
            case orderingStore = "ordering_store"
            
            case orderPlatform = "order_platform"
            
            case lockStatus = "lock_status"
            
            case platformLogo = "platform_logo"
            
            case userAgent = "user_agent"
            
            case dpDetails = "dp_details"
            
            case invoiceId = "invoice_id"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case coupon = "coupon"
            
            case affiliateDetails = "affiliate_details"
            
            case priorityText = "priority_text"
            
            case bagStatusHistory = "bag_status_history"
            
            case isDpAssignEnabled = "is_dp_assign_enabled"
            
            case bags = "bags"
            
            case dpAssignment = "dp_assignment"
            
            case totalItems = "total_items"
            
            case fulfillingStore = "fulfilling_store"
            
            case meta = "meta"
            
            case pdfLinks = "pdf_links"
            
            case paymentMode = "payment_mode"
            
            case packagingType = "packaging_type"
            
            case journeyType = "journey_type"
            
            case prices = "prices"
            
            case charges = "charges"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case vertical = "vertical"
            
            case shipmentId = "shipment_id"
            
            case payments = "payments"
            
            case operationalStatus = "operational_status"
            
            case status = "status"
            
            case totalBags = "total_bags"
            
            case shipmentCreatedAt = "shipment_created_at"
            
            case shipmentCreatedTs = "shipment_created_ts"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case isLapaEnabled = "is_lapa_enabled"
            
            case previousShipmentId = "previous_shipment_id"
            
            case shipmentUpdateTime = "shipment_update_time"
            
            case rtoAddress = "rto_address"
            
            case creditNoteId = "credit_note_id"
            
            case isSelfShip = "is_self_ship"
            
            case modeOfPayment = "mode_of_payment"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case trackingUrl = "tracking_url"
            
            case forwardEndShipmentId = "forward_end_shipment_id"
            
            case logisticsMeta = "logistics_meta"
            
            case refundInformation = "refund_information"
            
            case manifestId = "manifest_id"
            
            case companyId = "company_id"
            
            case pickupSlot = "pickup_slot"
            
            case canProcess = "can_process"
            
            case markAsReturnable = "mark_as_returnable"
            
            case orderSourceDomain = "order_source_domain"
            
            case actionable = "actionable"
            
            case transitionConfig = "transition_config"
            
            case nextPossibleStates = "next_possible_states"
            
            case isProcessing = "is_processing"
            
            case totalBagQty = "total_bag_qty"
            
            case orderCreatedTime = "order_created_time"
            
            case orderCreatedTs = "order_created_ts"
            
            case company = "company"
            
            case fyndstoreEmp = "fyndstore_emp"
            
            case isNotFyndSource = "is_not_fynd_source"
            
            case isFyndCoupon = "is_fynd_coupon"
            
            case userId = "user_id"
            
            case emailId = "email_id"
            
            case escalation = "escalation"
            
            case beneficiaryDetails = "beneficiary_details"
            
            case canBreak = "can_break"
            
            case isPackagingOrder = "is_packaging_order"
            
            case deliveryStatus = "delivery_status"
            
            case currentShipmentStatus = "current_shipment_status"
            
            case orderType = "order_type"
            
            case canCancel = "can_cancel"
            
            case enableTracking = "enable_tracking"
            
            case canReturn = "can_return"
            
            case isInvoiced = "is_invoiced"
            
            case childNodes = "child_nodes"
            
            case userInfo = "user_info"
            
            case statusProgress = "status_progress"
            
            case items = "items"
            
            case refundDetails = "refund_details"
            
            case financialStatus = "financial_status"
            
            case trackInfo = "track_info"
            
        }

        public init(actionable: Bool? = nil, affiliateDetails: AffiliateDetails? = nil, affiliateShipmentId: String? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: [String: Any]? = nil, canBreak: Bool? = nil, canCancel: Bool? = nil, canProcess: Bool? = nil, canReturn: Bool? = nil, canUpdateDimension: Bool? = nil, charges: [PriceAdjustmentCharge]? = nil, childNodes: [[String: Any]]? = nil, company: [String: Any]? = nil, companyDetails: CompanyDetails? = nil, companyId: Double? = nil, coupon: [String: Any]? = nil, creditNoteId: String? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, currentShipmentStatus: [String: Any]? = nil, customMessage: String? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: [String: Any]? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]]? = nil, dpAssignment: Bool? = nil, dpDetails: DPDetailsData? = nil, emailId: String? = nil, enableDpTracking: Bool? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, estimatedSlaTime: String? = nil, estimatedSlaTs: String? = nil, financialStatus: String? = nil, forwardEndShipmentId: String? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, fyndstoreEmp: [String: Any]? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, isDpAssignEnabled: Bool? = nil, isFyndCoupon: Bool? = nil, isInvoiced: Bool? = nil, isLapaEnabled: Bool? = nil, isNotFyndSource: Bool? = nil, isPackagingOrder: Bool? = nil, isProcessing: Bool? = nil, isSelfShip: Bool? = nil, items: [[String: Any]]? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, logisticsMeta: [String: Any]? = nil, manifestId: String? = nil, markAsReturnable: Bool? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, nextPossibleStates: [String: Any]? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderingStore: OrderingStoreDetails? = nil, orderCreatedTime: String? = nil, orderCreatedTs: String? = nil, orderPlatform: String? = nil, orderSourceDomain: String? = nil, orderStatus: OrderStatusData? = nil, orderType: String? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentInfo: [ShipmentPaymentInfoData]? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pdfLinks: [String: Any]? = nil, pickedDate: String? = nil, pickupSlot: [String: Any]? = nil, platformLogo: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [[String: Any]]? = nil, refundInformation: [[String: Any]]? = nil, rtoAddress: Address? = nil, shipmentCreatedAt: String? = nil, shipmentCreatedTs: String? = nil, shipmentDetails: ShipmentLockDetails? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, shipmentUpdateTime: Double? = nil, status: ShipmentStatusData? = nil, statusProgress: Double? = nil, totalBags: Int? = nil, totalBagQty: Double? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String? = nil, trackInfo: [[String: Any]]? = nil, transitionConfig: [String: Any]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, userId: String? = nil, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            
            self.pickedDate = pickedDate
            
            self.trackingList = trackingList
            
            self.invoice = invoice
            
            self.shipmentStatus = shipmentStatus
            
            self.gstDetails = gstDetails
            
            self.orderStatus = orderStatus
            
            self.deliverySlot = deliverySlot
            
            self.order = order
            
            self.user = user
            
            self.enableDpTracking = enableDpTracking
            
            self.customMessage = customMessage
            
            self.estimatedSlaTime = estimatedSlaTime
            
            self.estimatedSlaTs = estimatedSlaTs
            
            self.canUpdateDimension = canUpdateDimension
            
            self.shipmentImages = shipmentImages
            
            self.deliveryDetails = deliveryDetails
            
            self.billingDetails = billingDetails
            
            self.forwardShipmentId = forwardShipmentId
            
            self.fulfilmentPriority = fulfilmentPriority
            
            self.shipmentDetails = shipmentDetails
            
            self.customMeta = customMeta
            
            self.shipmentQuantity = shipmentQuantity
            
            self.companyDetails = companyDetails
            
            self.orderingStore = orderingStore
            
            self.orderPlatform = orderPlatform
            
            self.lockStatus = lockStatus
            
            self.platformLogo = platformLogo
            
            self.userAgent = userAgent
            
            self.dpDetails = dpDetails
            
            self.invoiceId = invoiceId
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.coupon = coupon
            
            self.affiliateDetails = affiliateDetails
            
            self.priorityText = priorityText
            
            self.bagStatusHistory = bagStatusHistory
            
            self.isDpAssignEnabled = isDpAssignEnabled
            
            self.bags = bags
            
            self.dpAssignment = dpAssignment
            
            self.totalItems = totalItems
            
            self.fulfillingStore = fulfillingStore
            
            self.meta = meta
            
            self.pdfLinks = pdfLinks
            
            self.paymentMode = paymentMode
            
            self.packagingType = packagingType
            
            self.journeyType = journeyType
            
            self.prices = prices
            
            self.charges = charges
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.vertical = vertical
            
            self.shipmentId = shipmentId
            
            self.payments = payments
            
            self.operationalStatus = operationalStatus
            
            self.status = status
            
            self.totalBags = totalBags
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
            self.shipmentCreatedTs = shipmentCreatedTs
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.isLapaEnabled = isLapaEnabled
            
            self.previousShipmentId = previousShipmentId
            
            self.shipmentUpdateTime = shipmentUpdateTime
            
            self.rtoAddress = rtoAddress
            
            self.creditNoteId = creditNoteId
            
            self.isSelfShip = isSelfShip
            
            self.modeOfPayment = modeOfPayment
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.trackingUrl = trackingUrl
            
            self.forwardEndShipmentId = forwardEndShipmentId
            
            self.logisticsMeta = logisticsMeta
            
            self.refundInformation = refundInformation
            
            self.manifestId = manifestId
            
            self.companyId = companyId
            
            self.pickupSlot = pickupSlot
            
            self.canProcess = canProcess
            
            self.markAsReturnable = markAsReturnable
            
            self.orderSourceDomain = orderSourceDomain
            
            self.actionable = actionable
            
            self.transitionConfig = transitionConfig
            
            self.nextPossibleStates = nextPossibleStates
            
            self.isProcessing = isProcessing
            
            self.totalBagQty = totalBagQty
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderCreatedTs = orderCreatedTs
            
            self.company = company
            
            self.fyndstoreEmp = fyndstoreEmp
            
            self.isNotFyndSource = isNotFyndSource
            
            self.isFyndCoupon = isFyndCoupon
            
            self.userId = userId
            
            self.emailId = emailId
            
            self.escalation = escalation
            
            self.beneficiaryDetails = beneficiaryDetails
            
            self.canBreak = canBreak
            
            self.isPackagingOrder = isPackagingOrder
            
            self.deliveryStatus = deliveryStatus
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.orderType = orderType
            
            self.canCancel = canCancel
            
            self.enableTracking = enableTracking
            
            self.canReturn = canReturn
            
            self.isInvoiced = isInvoiced
            
            self.childNodes = childNodes
            
            self.userInfo = userInfo
            
            self.statusProgress = statusProgress
            
            self.items = items
            
            self.refundDetails = refundDetails
            
            self.financialStatus = financialStatus
            
            self.trackInfo = trackInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pickedDate = try container.decode(String.self, forKey: .pickedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingList = try container.decode([TrackingList].self, forKey: .trackingList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(InvoiceInfo.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)
                
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
                    orderStatus = try container.decode(OrderStatusData.self, forKey: .orderStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    order = try container.decode(OrderDetailsData.self, forKey: .order)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(UserDataInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMessage = try container.decode(String.self, forKey: .customMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTs = try container.decode(String.self, forKey: .estimatedSlaTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canUpdateDimension = try container.decode(Bool.self, forKey: .canUpdateDimension)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentImages = try container.decode([String].self, forKey: .shipmentImages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryDetails = try container.decode([String: Any].self, forKey: .deliveryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingDetails = try container.decode([String: Any].self, forKey: .billingDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardShipmentId = try container.decode(String.self, forKey: .forwardShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentDetails = try container.decode(ShipmentLockDetails.self, forKey: .shipmentDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDetails = try container.decode(CompanyDetails.self, forKey: .companyDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(OrderingStoreDetails.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
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
                    platformLogo = try container.decode(String.self, forKey: .platformLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userAgent = try container.decode(String.self, forKey: .userAgent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
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
                    paymentInfo = try container.decode([ShipmentPaymentInfoData].self, forKey: .paymentInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode([String: Any].self, forKey: .coupon)
                
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
                    priorityText = try container.decode(String.self, forKey: .priorityText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDpAssignEnabled = try container.decode(Bool.self, forKey: .isDpAssignEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bags = try container.decode([OrderBags].self, forKey: .bags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Int.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)
                
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
                    pdfLinks = try container.decode([String: Any].self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
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
                    charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingCurrencyPrices = try container.decode(OrderingCurrencyPrices.self, forKey: .orderingCurrencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vertical = try container.decode(String.self, forKey: .vertical)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                do {
                    payments = try container.decode(ShipmentPayments.self, forKey: .payments)
                
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
                    status = try container.decode(ShipmentStatusData.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalBags = try container.decode(Int.self, forKey: .totalBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedTs = try container.decode(String.self, forKey: .shipmentCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLapaEnabled = try container.decode(Bool.self, forKey: .isLapaEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rtoAddress = try container.decode(Address.self, forKey: .rtoAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
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
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardEndShipmentId = try container.decode(String.self, forKey: .forwardEndShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logisticsMeta = try container.decode([String: Any].self, forKey: .logisticsMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundInformation = try container.decode([[String: Any]].self, forKey: .refundInformation)
                
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
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickupSlot = try container.decode([String: Any].self, forKey: .pickupSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canProcess = try container.decode(Bool.self, forKey: .canProcess)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    markAsReturnable = try container.decode(Bool.self, forKey: .markAsReturnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderSourceDomain = try container.decode(String.self, forKey: .orderSourceDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionable = try container.decode(Bool.self, forKey: .actionable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transitionConfig = try container.decode([String: Any].self, forKey: .transitionConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextPossibleStates = try container.decode([String: Any].self, forKey: .nextPossibleStates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isProcessing = try container.decode(Bool.self, forKey: .isProcessing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalBagQty = try container.decode(Double.self, forKey: .totalBagQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode([String: Any].self, forKey: .company)
                
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
                    isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emailId = try container.decode(String.self, forKey: .emailId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    escalation = try container.decode([String: Any].self, forKey: .escalation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canBreak = try container.decode(Bool.self, forKey: .canBreak)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)
                
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
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
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
                    isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    childNodes = try container.decode([[String: Any]].self, forKey: .childNodes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userInfo = try container.decode([String: Any].self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusProgress = try container.decode(Double.self, forKey: .statusProgress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundDetails = try container.decode([[String: Any]].self, forKey: .refundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialStatus = try container.decode(String.self, forKey: .financialStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInfo = try container.decode([[String: Any]].self, forKey: .trackInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)
            
            
            
            
            try? container.encodeIfPresent(trackingList, forKey: .trackingList)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)
            
            
            
            
            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
            
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)
            
            
            
            
            try? container.encodeIfPresent(customMessage, forKey: .customMessage)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTs, forKey: .estimatedSlaTs)
            
            
            
            
            try? container.encodeIfPresent(canUpdateDimension, forKey: .canUpdateDimension)
            
            
            
            
            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)
            
            
            
            
            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)
            
            
            
            
            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)
            
            
            
            
            try? container.encodeIfPresent(forwardShipmentId, forKey: .forwardShipmentId)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)
            
            
            
            
            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)
            
            
            
            
            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)
            
            
            
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
            
            
            
            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encodeIfPresent(priorityText, forKey: .priorityText)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(isDpAssignEnabled, forKey: .isDpAssignEnabled)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(vertical, forKey: .vertical)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(totalBags, forKey: .totalBags)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedTs, forKey: .shipmentCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(isLapaEnabled, forKey: .isLapaEnabled)
            
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            
            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)
            
            
            
            
            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(forwardEndShipmentId, forKey: .forwardEndShipmentId)
            
            
            
            
            try? container.encodeIfPresent(logisticsMeta, forKey: .logisticsMeta)
            
            
            
            
            try? container.encodeIfPresent(refundInformation, forKey: .refundInformation)
            
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(pickupSlot, forKey: .pickupSlot)
            
            
            
            
            try? container.encodeIfPresent(canProcess, forKey: .canProcess)
            
            
            
            
            try? container.encodeIfPresent(markAsReturnable, forKey: .markAsReturnable)
            
            
            
            
            try? container.encodeIfPresent(orderSourceDomain, forKey: .orderSourceDomain)
            
            
            
            
            try? container.encodeIfPresent(actionable, forKey: .actionable)
            
            
            
            
            try? container.encodeIfPresent(transitionConfig, forKey: .transitionConfig)
            
            
            
            
            try? container.encodeIfPresent(nextPossibleStates, forKey: .nextPossibleStates)
            
            
            
            
            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)
            
            
            
            
            try? container.encodeIfPresent(totalBagQty, forKey: .totalBagQty)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)
            
            
            
            
            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)
            
            
            
            
            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(escalation, forKey: .escalation)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
            
            
            try? container.encodeIfPresent(canBreak, forKey: .canBreak)
            
            
            
            
            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)
            
            
            
            
            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)
            
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)
            
            
            
            
            try? container.encodeIfPresent(childNodes, forKey: .childNodes)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            
            try? container.encodeIfPresent(financialStatus, forKey: .financialStatus)
            
            
            
            
            try? container.encodeIfPresent(trackInfo, forKey: .trackInfo)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: PlatformShipment
        Used By: Order
    */

    class PlatformShipment: Codable {
        
        
        public var pickedDate: String?
        
        public var trackingList: [TrackingList]?
        
        public var invoice: InvoiceInfo?
        
        public var shipmentStatus: String?
        
        public var gstDetails: GSTDetailsData?
        
        public var orderStatus: OrderStatusData?
        
        public var deliverySlot: [String: Any]?
        
        public var order: OrderDetailsData?
        
        public var user: UserDataInfo?
        
        public var enableDpTracking: Bool?
        
        public var customMessage: String?
        
        public var estimatedSlaTime: String?
        
        public var estimatedSlaTs: String?
        
        public var canUpdateDimension: Bool?
        
        public var shipmentImages: [String]?
        
        public var deliveryDetails: [String: Any]?
        
        public var billingDetails: [String: Any]?
        
        public var forwardShipmentId: String?
        
        public var fulfilmentPriority: Int?
        
        public var shipmentDetails: ShipmentLockDetails?
        
        public var customMeta: [[String: Any]]?
        
        public var shipmentQuantity: Int?
        
        public var companyDetails: CompanyDetails?
        
        public var orderingStore: OrderingStoreDetails?
        
        public var orderPlatform: String?
        
        public var lockStatus: Bool?
        
        public var platformLogo: String?
        
        public var userAgent: String?
        
        public var dpDetails: DPDetailsData?
        
        public var invoiceId: String?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [ShipmentPaymentInfoData]?
        
        public var coupon: [String: Any]?
        
        public var affiliateDetails: AffiliateDetails?
        
        public var priorityText: String?
        
        public var bagStatusHistory: [BagStatusHistory]?
        
        public var isDpAssignEnabled: Bool?
        
        public var bags: [OrderBags]?
        
        public var dpAssignment: Bool?
        
        public var totalItems: Int?
        
        public var fulfillingStore: FulfillingStore?
        
        public var meta: [String: Any]?
        
        public var pdfLinks: [String: Any]?
        
        public var paymentMode: String?
        
        public var packagingType: String?
        
        public var journeyType: String?
        
        public var prices: Prices?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var orderingCurrencyPrices: OrderingCurrencyPrices?
        
        public var vertical: String?
        
        public var shipmentId: String
        
        public var payments: ShipmentPayments?
        
        public var operationalStatus: String?
        
        public var status: ShipmentStatusData?
        
        public var totalBags: Int?
        
        public var shipmentCreatedAt: String?
        
        public var shipmentCreatedTs: String?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var isLapaEnabled: Bool?
        
        public var previousShipmentId: String?
        
        public var shipmentUpdateTime: Double?
        
        public var rtoAddress: Address?
        
        public var creditNoteId: String?
        
        public var isSelfShip: Bool?
        
        public var modeOfPayment: String?
        
        public var affiliateShipmentId: String?
        
        public var trackingUrl: String?
        
        public var forwardEndShipmentId: String?
        
        public var logisticsMeta: [String: Any]?
        
        public var refundInformation: [[String: Any]]?
        
        public var manifestId: String?
        
        public var companyId: Double?
        
        public var pickupSlot: [String: Any]?
        
        public var canProcess: Bool?
        
        public var markAsReturnable: Bool?
        
        public var orderSourceDomain: String?
        
        public var actionable: Bool?
        
        public var transitionConfig: [String: Any]?
        
        public var nextPossibleStates: [String: Any]?
        
        public var isProcessing: Bool?
        
        public var totalBagQty: Double?
        
        public var orderCreatedTime: String?
        
        public var orderCreatedTs: String?
        
        public var company: [String: Any]?
        
        public var fyndstoreEmp: [String: Any]?
        
        public var isNotFyndSource: Bool?
        
        public var isFyndCoupon: Bool?
        
        public var userId: String?
        
        public var emailId: String?
        
        public var escalation: [String: Any]?
        
        public var beneficiaryDetails: Bool?
        
        public var canBreak: Bool?
        
        public var isPackagingOrder: Bool?
        
        public var deliveryStatus: [[String: Any]]?
        
        public var currentShipmentStatus: [String: Any]?
        
        public var orderType: String?
        
        public var canCancel: Bool?
        
        public var enableTracking: Bool?
        
        public var canReturn: Bool?
        
        public var isInvoiced: Bool?
        
        public var childNodes: [[String: Any]]?
        
        public var userInfo: [String: Any]?
        
        public var statusProgress: Double?
        
        public var items: [[String: Any]]?
        
        public var refundDetails: [[String: Any]]?
        
        public var financialStatus: String?
        
        public var trackInfo: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case pickedDate = "picked_date"
            
            case trackingList = "tracking_list"
            
            case invoice = "invoice"
            
            case shipmentStatus = "shipment_status"
            
            case gstDetails = "gst_details"
            
            case orderStatus = "order_status"
            
            case deliverySlot = "delivery_slot"
            
            case order = "order"
            
            case user = "user"
            
            case enableDpTracking = "enable_dp_tracking"
            
            case customMessage = "custom_message"
            
            case estimatedSlaTime = "estimated_sla_time"
            
            case estimatedSlaTs = "estimated_sla_ts"
            
            case canUpdateDimension = "can_update_dimension"
            
            case shipmentImages = "shipment_images"
            
            case deliveryDetails = "delivery_details"
            
            case billingDetails = "billing_details"
            
            case forwardShipmentId = "forward_shipment_id"
            
            case fulfilmentPriority = "fulfilment_priority"
            
            case shipmentDetails = "shipment_details"
            
            case customMeta = "custom_meta"
            
            case shipmentQuantity = "shipment_quantity"
            
            case companyDetails = "company_details"
            
            case orderingStore = "ordering_store"
            
            case orderPlatform = "order_platform"
            
            case lockStatus = "lock_status"
            
            case platformLogo = "platform_logo"
            
            case userAgent = "user_agent"
            
            case dpDetails = "dp_details"
            
            case invoiceId = "invoice_id"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case coupon = "coupon"
            
            case affiliateDetails = "affiliate_details"
            
            case priorityText = "priority_text"
            
            case bagStatusHistory = "bag_status_history"
            
            case isDpAssignEnabled = "is_dp_assign_enabled"
            
            case bags = "bags"
            
            case dpAssignment = "dp_assignment"
            
            case totalItems = "total_items"
            
            case fulfillingStore = "fulfilling_store"
            
            case meta = "meta"
            
            case pdfLinks = "pdf_links"
            
            case paymentMode = "payment_mode"
            
            case packagingType = "packaging_type"
            
            case journeyType = "journey_type"
            
            case prices = "prices"
            
            case charges = "charges"
            
            case orderingCurrencyPrices = "ordering_currency_prices"
            
            case vertical = "vertical"
            
            case shipmentId = "shipment_id"
            
            case payments = "payments"
            
            case operationalStatus = "operational_status"
            
            case status = "status"
            
            case totalBags = "total_bags"
            
            case shipmentCreatedAt = "shipment_created_at"
            
            case shipmentCreatedTs = "shipment_created_ts"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case isLapaEnabled = "is_lapa_enabled"
            
            case previousShipmentId = "previous_shipment_id"
            
            case shipmentUpdateTime = "shipment_update_time"
            
            case rtoAddress = "rto_address"
            
            case creditNoteId = "credit_note_id"
            
            case isSelfShip = "is_self_ship"
            
            case modeOfPayment = "mode_of_payment"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case trackingUrl = "tracking_url"
            
            case forwardEndShipmentId = "forward_end_shipment_id"
            
            case logisticsMeta = "logistics_meta"
            
            case refundInformation = "refund_information"
            
            case manifestId = "manifest_id"
            
            case companyId = "company_id"
            
            case pickupSlot = "pickup_slot"
            
            case canProcess = "can_process"
            
            case markAsReturnable = "mark_as_returnable"
            
            case orderSourceDomain = "order_source_domain"
            
            case actionable = "actionable"
            
            case transitionConfig = "transition_config"
            
            case nextPossibleStates = "next_possible_states"
            
            case isProcessing = "is_processing"
            
            case totalBagQty = "total_bag_qty"
            
            case orderCreatedTime = "order_created_time"
            
            case orderCreatedTs = "order_created_ts"
            
            case company = "company"
            
            case fyndstoreEmp = "fyndstore_emp"
            
            case isNotFyndSource = "is_not_fynd_source"
            
            case isFyndCoupon = "is_fynd_coupon"
            
            case userId = "user_id"
            
            case emailId = "email_id"
            
            case escalation = "escalation"
            
            case beneficiaryDetails = "beneficiary_details"
            
            case canBreak = "can_break"
            
            case isPackagingOrder = "is_packaging_order"
            
            case deliveryStatus = "delivery_status"
            
            case currentShipmentStatus = "current_shipment_status"
            
            case orderType = "order_type"
            
            case canCancel = "can_cancel"
            
            case enableTracking = "enable_tracking"
            
            case canReturn = "can_return"
            
            case isInvoiced = "is_invoiced"
            
            case childNodes = "child_nodes"
            
            case userInfo = "user_info"
            
            case statusProgress = "status_progress"
            
            case items = "items"
            
            case refundDetails = "refund_details"
            
            case financialStatus = "financial_status"
            
            case trackInfo = "track_info"
            
        }

        public init(actionable: Bool? = nil, affiliateDetails: AffiliateDetails? = nil, affiliateShipmentId: String? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: [String: Any]? = nil, canBreak: Bool? = nil, canCancel: Bool? = nil, canProcess: Bool? = nil, canReturn: Bool? = nil, canUpdateDimension: Bool? = nil, charges: [PriceAdjustmentCharge]? = nil, childNodes: [[String: Any]]? = nil, company: [String: Any]? = nil, companyDetails: CompanyDetails? = nil, companyId: Double? = nil, coupon: [String: Any]? = nil, creditNoteId: String? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, currentShipmentStatus: [String: Any]? = nil, customMessage: String? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: [String: Any]? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]]? = nil, dpAssignment: Bool? = nil, dpDetails: DPDetailsData? = nil, emailId: String? = nil, enableDpTracking: Bool? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, estimatedSlaTime: String? = nil, estimatedSlaTs: String? = nil, financialStatus: String? = nil, forwardEndShipmentId: String? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, fyndstoreEmp: [String: Any]? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, isDpAssignEnabled: Bool? = nil, isFyndCoupon: Bool? = nil, isInvoiced: Bool? = nil, isLapaEnabled: Bool? = nil, isNotFyndSource: Bool? = nil, isPackagingOrder: Bool? = nil, isProcessing: Bool? = nil, isSelfShip: Bool? = nil, items: [[String: Any]]? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, logisticsMeta: [String: Any]? = nil, manifestId: String? = nil, markAsReturnable: Bool? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, nextPossibleStates: [String: Any]? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingCurrencyPrices: OrderingCurrencyPrices? = nil, orderingStore: OrderingStoreDetails? = nil, orderCreatedTime: String? = nil, orderCreatedTs: String? = nil, orderPlatform: String? = nil, orderSourceDomain: String? = nil, orderStatus: OrderStatusData? = nil, orderType: String? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentInfo: [ShipmentPaymentInfoData]? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pdfLinks: [String: Any]? = nil, pickedDate: String? = nil, pickupSlot: [String: Any]? = nil, platformLogo: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [[String: Any]]? = nil, refundInformation: [[String: Any]]? = nil, rtoAddress: Address? = nil, shipmentCreatedAt: String? = nil, shipmentCreatedTs: String? = nil, shipmentDetails: ShipmentLockDetails? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, shipmentUpdateTime: Double? = nil, status: ShipmentStatusData? = nil, statusProgress: Double? = nil, totalBags: Int? = nil, totalBagQty: Double? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String? = nil, trackInfo: [[String: Any]]? = nil, transitionConfig: [String: Any]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, userId: String? = nil, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            
            self.pickedDate = pickedDate
            
            self.trackingList = trackingList
            
            self.invoice = invoice
            
            self.shipmentStatus = shipmentStatus
            
            self.gstDetails = gstDetails
            
            self.orderStatus = orderStatus
            
            self.deliverySlot = deliverySlot
            
            self.order = order
            
            self.user = user
            
            self.enableDpTracking = enableDpTracking
            
            self.customMessage = customMessage
            
            self.estimatedSlaTime = estimatedSlaTime
            
            self.estimatedSlaTs = estimatedSlaTs
            
            self.canUpdateDimension = canUpdateDimension
            
            self.shipmentImages = shipmentImages
            
            self.deliveryDetails = deliveryDetails
            
            self.billingDetails = billingDetails
            
            self.forwardShipmentId = forwardShipmentId
            
            self.fulfilmentPriority = fulfilmentPriority
            
            self.shipmentDetails = shipmentDetails
            
            self.customMeta = customMeta
            
            self.shipmentQuantity = shipmentQuantity
            
            self.companyDetails = companyDetails
            
            self.orderingStore = orderingStore
            
            self.orderPlatform = orderPlatform
            
            self.lockStatus = lockStatus
            
            self.platformLogo = platformLogo
            
            self.userAgent = userAgent
            
            self.dpDetails = dpDetails
            
            self.invoiceId = invoiceId
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.coupon = coupon
            
            self.affiliateDetails = affiliateDetails
            
            self.priorityText = priorityText
            
            self.bagStatusHistory = bagStatusHistory
            
            self.isDpAssignEnabled = isDpAssignEnabled
            
            self.bags = bags
            
            self.dpAssignment = dpAssignment
            
            self.totalItems = totalItems
            
            self.fulfillingStore = fulfillingStore
            
            self.meta = meta
            
            self.pdfLinks = pdfLinks
            
            self.paymentMode = paymentMode
            
            self.packagingType = packagingType
            
            self.journeyType = journeyType
            
            self.prices = prices
            
            self.charges = charges
            
            self.orderingCurrencyPrices = orderingCurrencyPrices
            
            self.vertical = vertical
            
            self.shipmentId = shipmentId
            
            self.payments = payments
            
            self.operationalStatus = operationalStatus
            
            self.status = status
            
            self.totalBags = totalBags
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
            self.shipmentCreatedTs = shipmentCreatedTs
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.isLapaEnabled = isLapaEnabled
            
            self.previousShipmentId = previousShipmentId
            
            self.shipmentUpdateTime = shipmentUpdateTime
            
            self.rtoAddress = rtoAddress
            
            self.creditNoteId = creditNoteId
            
            self.isSelfShip = isSelfShip
            
            self.modeOfPayment = modeOfPayment
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.trackingUrl = trackingUrl
            
            self.forwardEndShipmentId = forwardEndShipmentId
            
            self.logisticsMeta = logisticsMeta
            
            self.refundInformation = refundInformation
            
            self.manifestId = manifestId
            
            self.companyId = companyId
            
            self.pickupSlot = pickupSlot
            
            self.canProcess = canProcess
            
            self.markAsReturnable = markAsReturnable
            
            self.orderSourceDomain = orderSourceDomain
            
            self.actionable = actionable
            
            self.transitionConfig = transitionConfig
            
            self.nextPossibleStates = nextPossibleStates
            
            self.isProcessing = isProcessing
            
            self.totalBagQty = totalBagQty
            
            self.orderCreatedTime = orderCreatedTime
            
            self.orderCreatedTs = orderCreatedTs
            
            self.company = company
            
            self.fyndstoreEmp = fyndstoreEmp
            
            self.isNotFyndSource = isNotFyndSource
            
            self.isFyndCoupon = isFyndCoupon
            
            self.userId = userId
            
            self.emailId = emailId
            
            self.escalation = escalation
            
            self.beneficiaryDetails = beneficiaryDetails
            
            self.canBreak = canBreak
            
            self.isPackagingOrder = isPackagingOrder
            
            self.deliveryStatus = deliveryStatus
            
            self.currentShipmentStatus = currentShipmentStatus
            
            self.orderType = orderType
            
            self.canCancel = canCancel
            
            self.enableTracking = enableTracking
            
            self.canReturn = canReturn
            
            self.isInvoiced = isInvoiced
            
            self.childNodes = childNodes
            
            self.userInfo = userInfo
            
            self.statusProgress = statusProgress
            
            self.items = items
            
            self.refundDetails = refundDetails
            
            self.financialStatus = financialStatus
            
            self.trackInfo = trackInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    pickedDate = try container.decode(String.self, forKey: .pickedDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingList = try container.decode([TrackingList].self, forKey: .trackingList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoice = try container.decode(InvoiceInfo.self, forKey: .invoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)
                
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
                    orderStatus = try container.decode(OrderStatusData.self, forKey: .orderStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    order = try container.decode(OrderDetailsData.self, forKey: .order)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(UserDataInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMessage = try container.decode(String.self, forKey: .customMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTs = try container.decode(String.self, forKey: .estimatedSlaTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canUpdateDimension = try container.decode(Bool.self, forKey: .canUpdateDimension)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentImages = try container.decode([String].self, forKey: .shipmentImages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryDetails = try container.decode([String: Any].self, forKey: .deliveryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingDetails = try container.decode([String: Any].self, forKey: .billingDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardShipmentId = try container.decode(String.self, forKey: .forwardShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentDetails = try container.decode(ShipmentLockDetails.self, forKey: .shipmentDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDetails = try container.decode(CompanyDetails.self, forKey: .companyDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(OrderingStoreDetails.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
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
                    platformLogo = try container.decode(String.self, forKey: .platformLogo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userAgent = try container.decode(String.self, forKey: .userAgent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
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
                    paymentInfo = try container.decode([ShipmentPaymentInfoData].self, forKey: .paymentInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode([String: Any].self, forKey: .coupon)
                
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
                    priorityText = try container.decode(String.self, forKey: .priorityText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDpAssignEnabled = try container.decode(Bool.self, forKey: .isDpAssignEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bags = try container.decode([OrderBags].self, forKey: .bags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalItems = try container.decode(Int.self, forKey: .totalItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)
                
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
                    pdfLinks = try container.decode([String: Any].self, forKey: .pdfLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    packagingType = try container.decode(String.self, forKey: .packagingType)
                
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
                    charges = try container.decode([PriceAdjustmentCharge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingCurrencyPrices = try container.decode(OrderingCurrencyPrices.self, forKey: .orderingCurrencyPrices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vertical = try container.decode(String.self, forKey: .vertical)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                do {
                    payments = try container.decode(ShipmentPayments.self, forKey: .payments)
                
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
                    status = try container.decode(ShipmentStatusData.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalBags = try container.decode(Int.self, forKey: .totalBags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedTs = try container.decode(String.self, forKey: .shipmentCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLapaEnabled = try container.decode(Bool.self, forKey: .isLapaEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rtoAddress = try container.decode(Address.self, forKey: .rtoAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteId = try container.decode(String.self, forKey: .creditNoteId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isSelfShip = try container.decode(Bool.self, forKey: .isSelfShip)
                
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
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackingUrl = try container.decode(String.self, forKey: .trackingUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    forwardEndShipmentId = try container.decode(String.self, forKey: .forwardEndShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logisticsMeta = try container.decode([String: Any].self, forKey: .logisticsMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundInformation = try container.decode([[String: Any]].self, forKey: .refundInformation)
                
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
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickupSlot = try container.decode([String: Any].self, forKey: .pickupSlot)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canProcess = try container.decode(Bool.self, forKey: .canProcess)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    markAsReturnable = try container.decode(Bool.self, forKey: .markAsReturnable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderSourceDomain = try container.decode(String.self, forKey: .orderSourceDomain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionable = try container.decode(Bool.self, forKey: .actionable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transitionConfig = try container.decode([String: Any].self, forKey: .transitionConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextPossibleStates = try container.decode([String: Any].self, forKey: .nextPossibleStates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isProcessing = try container.decode(Bool.self, forKey: .isProcessing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalBagQty = try container.decode(Double.self, forKey: .totalBagQty)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode([String: Any].self, forKey: .company)
                
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
                    isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emailId = try container.decode(String.self, forKey: .emailId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    escalation = try container.decode([String: Any].self, forKey: .escalation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canBreak = try container.decode(Bool.self, forKey: .canBreak)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)
                
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
                    canCancel = try container.decode(Bool.self, forKey: .canCancel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enableTracking = try container.decode(Bool.self, forKey: .enableTracking)
                
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
                    isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    childNodes = try container.decode([[String: Any]].self, forKey: .childNodes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userInfo = try container.decode([String: Any].self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusProgress = try container.decode(Double.self, forKey: .statusProgress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    refundDetails = try container.decode([[String: Any]].self, forKey: .refundDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    financialStatus = try container.decode(String.self, forKey: .financialStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trackInfo = try container.decode([[String: Any]].self, forKey: .trackInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)
            
            
            
            
            try? container.encodeIfPresent(trackingList, forKey: .trackingList)
            
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)
            
            
            
            
            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)
            
            
            
            
            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
            
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)
            
            
            
            
            try? container.encodeIfPresent(customMessage, forKey: .customMessage)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTs, forKey: .estimatedSlaTs)
            
            
            
            
            try? container.encodeIfPresent(canUpdateDimension, forKey: .canUpdateDimension)
            
            
            
            
            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)
            
            
            
            
            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)
            
            
            
            
            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)
            
            
            
            
            try? container.encodeIfPresent(forwardShipmentId, forKey: .forwardShipmentId)
            
            
            
            
            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)
            
            
            
            
            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)
            
            
            
            
            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)
            
            
            
            
            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
            
            
            
            
            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
            
            
            
            
            try? container.encodeIfPresent(priorityText, forKey: .priorityText)
            
            
            
            
            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
            
            
            
            
            try? container.encodeIfPresent(isDpAssignEnabled, forKey: .isDpAssignEnabled)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)
            
            
            
            
            try? container.encodeIfPresent(totalItems, forKey: .totalItems)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(packagingType, forKey: .packagingType)
            
            
            
            
            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(orderingCurrencyPrices, forKey: .orderingCurrencyPrices)
            
            
            
            
            try? container.encodeIfPresent(vertical, forKey: .vertical)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(totalBags, forKey: .totalBags)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedTs, forKey: .shipmentCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(isLapaEnabled, forKey: .isLapaEnabled)
            
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            
            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)
            
            
            
            
            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)
            
            
            
            
            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)
            
            
            
            
            try? container.encodeIfPresent(isSelfShip, forKey: .isSelfShip)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)
            
            
            
            
            try? container.encodeIfPresent(forwardEndShipmentId, forKey: .forwardEndShipmentId)
            
            
            
            
            try? container.encodeIfPresent(logisticsMeta, forKey: .logisticsMeta)
            
            
            
            
            try? container.encodeIfPresent(refundInformation, forKey: .refundInformation)
            
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(pickupSlot, forKey: .pickupSlot)
            
            
            
            
            try? container.encodeIfPresent(canProcess, forKey: .canProcess)
            
            
            
            
            try? container.encodeIfPresent(markAsReturnable, forKey: .markAsReturnable)
            
            
            
            
            try? container.encodeIfPresent(orderSourceDomain, forKey: .orderSourceDomain)
            
            
            
            
            try? container.encodeIfPresent(actionable, forKey: .actionable)
            
            
            
            
            try? container.encodeIfPresent(transitionConfig, forKey: .transitionConfig)
            
            
            
            
            try? container.encodeIfPresent(nextPossibleStates, forKey: .nextPossibleStates)
            
            
            
            
            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)
            
            
            
            
            try? container.encodeIfPresent(totalBagQty, forKey: .totalBagQty)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)
            
            
            
            
            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)
            
            
            
            
            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(emailId, forKey: .emailId)
            
            
            
            
            try? container.encodeIfPresent(escalation, forKey: .escalation)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
            
            
            try? container.encodeIfPresent(canBreak, forKey: .canBreak)
            
            
            
            
            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)
            
            
            
            
            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)
            
            
            
            
            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            
            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)
            
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            
            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)
            
            
            
            
            try? container.encodeIfPresent(childNodes, forKey: .childNodes)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            
            try? container.encodeIfPresent(financialStatus, forKey: .financialStatus)
            
            
            
            
            try? container.encodeIfPresent(trackInfo, forKey: .trackInfo)
            
            
        }
        
    }
}


