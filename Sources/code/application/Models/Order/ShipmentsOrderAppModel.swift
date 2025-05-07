

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: Shipments
        Used By: Order
    */
    class Shipments: Codable {
        
        public var advancePaymentConfig: [String: Any]?
        
        public var multiMopPayments: [String: Any]?
        
        public var multiMopPaymentsList: [[String: Any]]?
        
        public var isValidated: Bool?
        
        public var isActive: Bool?
        
        public var refundInformation: [[String: Any]]?
        
        public var currency: CurrencySchema?
        
        public var currencyInfo: CurrencyInfo?
        
        public var couponDetails: [CouponDetails]?
        
        public var meta: [String: Any]?
        
        public var payment: ShipmentPayment?
        
        public var paymentInfo: [PaymentInfo]?
        
        public var orderType: String?
        
        public var gstinCode: String?
        
        public var showDownloadInvoice: Bool?
        
        public var canCancel: Bool?
        
        public var userInfo: ShipmentUserInfo?
        
        public var shipmentId: String?
        
        public var fulfillingStore: FulfillingStore?
        
        public var customMeta: [[String: Any]]?
        
        public var shipmentStatus: ShipmentStatus?
        
        public var comment: String?
        
        public var invoice: Invoice?
        
        public var showTrackLink: Bool?
        
        public var refundDetails: [String: Any]?
        
        public var breakupValues: [BreakupValues]?
        
        public var canBreak: [String: Any]?
        
        public var trakingNo: String?
        
        public var trackingDetails: [TrackingDetails]?
        
        public var promise: Promise?
        
        public var totalBags: Int?
        
        public var totalDetails: ShipmentTotalDetails?
        
        public var prices: Prices?
        
        public var returnableDate: String?
        
        public var shipmentCreatedAt: String?
        
        public var shipmentCreatedTs: String?
        
        public var sizeInfo: [String: Any]?
        
        public var bags: [Bags]?
        
        public var dpName: String?
        
        public var awbNo: String?
        
        public var beneficiaryDetails: Bool?
        
        public var fulfillingCompany: FulfillingCompany?
        
        public var canReturn: Bool?
        
        public var deliveryAddress: Address?
        
        public var billingAddress: Address?
        
        public var trackUrl: String?
        
        public var orderId: String?
        
        public var needHelpUrl: String?
        
        public var returnMeta: [String: Any]?
        
        public var deliveryDate: String?
        
        public var order: OrderRequestSchema?
        
        public var canPayRemainingAmount: Bool?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var externalShipmentId: String?
        
        public var previousShipmentId: String?
        
        public var isRefundInitiated: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case advancePaymentConfig = "advance_payment_config"
            
            case multiMopPayments = "multi_mop_payments"
            
            case multiMopPaymentsList = "multi_mop_payments_list"
            
            case isValidated = "is_validated"
            
            case isActive = "is_active"
            
            case refundInformation = "refund_information"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case couponDetails = "coupon_details"
            
            case meta = "meta"
            
            case payment = "payment"
            
            case paymentInfo = "payment_info"
            
            case orderType = "order_type"
            
            case gstinCode = "gstin_code"
            
            case showDownloadInvoice = "show_download_invoice"
            
            case canCancel = "can_cancel"
            
            case userInfo = "user_info"
            
            case shipmentId = "shipment_id"
            
            case fulfillingStore = "fulfilling_store"
            
            case customMeta = "custom_meta"
            
            case shipmentStatus = "shipment_status"
            
            case comment = "comment"
            
            case invoice = "invoice"
            
            case showTrackLink = "show_track_link"
            
            case refundDetails = "refund_details"
            
            case breakupValues = "breakup_values"
            
            case canBreak = "can_break"
            
            case trakingNo = "traking_no"
            
            case trackingDetails = "tracking_details"
            
            case promise = "promise"
            
            case totalBags = "total_bags"
            
            case totalDetails = "total_details"
            
            case prices = "prices"
            
            case returnableDate = "returnable_date"
            
            case shipmentCreatedAt = "shipment_created_at"
            
            case shipmentCreatedTs = "shipment_created_ts"
            
            case sizeInfo = "size_info"
            
            case bags = "bags"
            
            case dpName = "dp_name"
            
            case awbNo = "awb_no"
            
            case beneficiaryDetails = "beneficiary_details"
            
            case fulfillingCompany = "fulfilling_company"
            
            case canReturn = "can_return"
            
            case deliveryAddress = "delivery_address"
            
            case billingAddress = "billing_address"
            
            case trackUrl = "track_url"
            
            case orderId = "order_id"
            
            case needHelpUrl = "need_help_url"
            
            case returnMeta = "return_meta"
            
            case deliveryDate = "delivery_date"
            
            case order = "order"
            
            case canPayRemainingAmount = "can_pay_remaining_amount"
            
            case charges = "charges"
            
            case externalShipmentId = "external_shipment_id"
            
            case previousShipmentId = "previous_shipment_id"
            
            case isRefundInitiated = "is_refund_initiated"
            
        }

        public init(advancePaymentConfig: [String: Any]? = nil, awbNo: String? = nil, bags: [Bags]? = nil, beneficiaryDetails: Bool? = nil, billingAddress: Address? = nil, breakupValues: [BreakupValues]? = nil, canBreak: [String: Any]? = nil, canCancel: Bool? = nil, canPayRemainingAmount: Bool? = nil, canReturn: Bool? = nil, charges: [PriceAdjustmentCharge]? = nil, comment: String? = nil, couponDetails: [CouponDetails]? = nil, currency: CurrencySchema? = nil, currencyInfo: CurrencyInfo? = nil, customMeta: [[String: Any]]? = nil, deliveryAddress: Address? = nil, deliveryDate: String? = nil, dpName: String? = nil, externalShipmentId: String? = nil, fulfillingCompany: FulfillingCompany? = nil, fulfillingStore: FulfillingStore? = nil, gstinCode: String? = nil, invoice: Invoice? = nil, isActive: Bool? = nil, isRefundInitiated: Bool? = nil, isValidated: Bool? = nil, meta: [String: Any]? = nil, multiMopPayments: [String: Any]? = nil, multiMopPaymentsList: [[String: Any]]? = nil, needHelpUrl: String? = nil, order: OrderRequestSchema? = nil, orderId: String? = nil, orderType: String? = nil, payment: ShipmentPayment? = nil, paymentInfo: [PaymentInfo]? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, promise: Promise? = nil, refundDetails: [String: Any]? = nil, refundInformation: [[String: Any]]? = nil, returnableDate: String? = nil, returnMeta: [String: Any]? = nil, shipmentCreatedAt: String? = nil, shipmentCreatedTs: String? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, showDownloadInvoice: Bool? = nil, showTrackLink: Bool? = nil, sizeInfo: [String: Any]? = nil, totalBags: Int? = nil, totalDetails: ShipmentTotalDetails? = nil, trackingDetails: [TrackingDetails]? = nil, trackUrl: String? = nil, trakingNo: String? = nil, userInfo: ShipmentUserInfo? = nil) {
            
            self.advancePaymentConfig = advancePaymentConfig
            
            self.multiMopPayments = multiMopPayments
            
            self.multiMopPaymentsList = multiMopPaymentsList
            
            self.isValidated = isValidated
            
            self.isActive = isActive
            
            self.refundInformation = refundInformation
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.couponDetails = couponDetails
            
            self.meta = meta
            
            self.payment = payment
            
            self.paymentInfo = paymentInfo
            
            self.orderType = orderType
            
            self.gstinCode = gstinCode
            
            self.showDownloadInvoice = showDownloadInvoice
            
            self.canCancel = canCancel
            
            self.userInfo = userInfo
            
            self.shipmentId = shipmentId
            
            self.fulfillingStore = fulfillingStore
            
            self.customMeta = customMeta
            
            self.shipmentStatus = shipmentStatus
            
            self.comment = comment
            
            self.invoice = invoice
            
            self.showTrackLink = showTrackLink
            
            self.refundDetails = refundDetails
            
            self.breakupValues = breakupValues
            
            self.canBreak = canBreak
            
            self.trakingNo = trakingNo
            
            self.trackingDetails = trackingDetails
            
            self.promise = promise
            
            self.totalBags = totalBags
            
            self.totalDetails = totalDetails
            
            self.prices = prices
            
            self.returnableDate = returnableDate
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
            self.shipmentCreatedTs = shipmentCreatedTs
            
            self.sizeInfo = sizeInfo
            
            self.bags = bags
            
            self.dpName = dpName
            
            self.awbNo = awbNo
            
            self.beneficiaryDetails = beneficiaryDetails
            
            self.fulfillingCompany = fulfillingCompany
            
            self.canReturn = canReturn
            
            self.deliveryAddress = deliveryAddress
            
            self.billingAddress = billingAddress
            
            self.trackUrl = trackUrl
            
            self.orderId = orderId
            
            self.needHelpUrl = needHelpUrl
            
            self.returnMeta = returnMeta
            
            self.deliveryDate = deliveryDate
            
            self.order = order
            
            self.canPayRemainingAmount = canPayRemainingAmount
            
            self.charges = charges
            
            self.externalShipmentId = externalShipmentId
            
            self.previousShipmentId = previousShipmentId
            
            self.isRefundInitiated = isRefundInitiated
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                advancePaymentConfig = try container.decode([String: Any].self, forKey: .advancePaymentConfig)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                multiMopPayments = try container.decode([String: Any].self, forKey: .multiMopPayments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                multiMopPaymentsList = try container.decode([[String: Any]].self, forKey: .multiMopPaymentsList)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isValidated = try container.decode(Bool.self, forKey: .isValidated)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)
            
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
                currency = try container.decode(CurrencySchema.self, forKey: .currency)
            
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
                couponDetails = try container.decode([CouponDetails].self, forKey: .couponDetails)
            
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
                payment = try container.decode(ShipmentPayment.self, forKey: .payment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentInfo = try container.decode([PaymentInfo].self, forKey: .paymentInfo)
            
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
                gstinCode = try container.decode(String.self, forKey: .gstinCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                showDownloadInvoice = try container.decode(Bool.self, forKey: .showDownloadInvoice)
            
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
                userInfo = try container.decode(ShipmentUserInfo.self, forKey: .userInfo)
            
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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)
            
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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                comment = try container.decode(String.self, forKey: .comment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                invoice = try container.decode(Invoice.self, forKey: .invoice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                showTrackLink = try container.decode(Bool.self, forKey: .showTrackLink)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                canBreak = try container.decode([String: Any].self, forKey: .canBreak)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                trakingNo = try container.decode(String.self, forKey: .trakingNo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                trackingDetails = try container.decode([TrackingDetails].self, forKey: .trackingDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promise = try container.decode(Promise.self, forKey: .promise)
            
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
                totalDetails = try container.decode(ShipmentTotalDetails.self, forKey: .totalDetails)
            
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
                returnableDate = try container.decode(String.self, forKey: .returnableDate)
            
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
                sizeInfo = try container.decode([String: Any].self, forKey: .sizeInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bags = try container.decode([Bags].self, forKey: .bags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                dpName = try container.decode(String.self, forKey: .dpName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)
            
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
                fulfillingCompany = try container.decode(FulfillingCompany.self, forKey: .fulfillingCompany)
            
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
                deliveryAddress = try container.decode(Address.self, forKey: .deliveryAddress)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                billingAddress = try container.decode(Address.self, forKey: .billingAddress)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                needHelpUrl = try container.decode(String.self, forKey: .needHelpUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnMeta = try container.decode([String: Any].self, forKey: .returnMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                order = try container.decode(OrderRequestSchema.self, forKey: .order)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                canPayRemainingAmount = try container.decode(Bool.self, forKey: .canPayRemainingAmount)
            
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
                externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
            
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
                isRefundInitiated = try container.decode(Bool.self, forKey: .isRefundInitiated)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(advancePaymentConfig, forKey: .advancePaymentConfig)
            
            
            
            try? container.encodeIfPresent(multiMopPayments, forKey: .multiMopPayments)
            
            
            
            try? container.encodeIfPresent(multiMopPaymentsList, forKey: .multiMopPaymentsList)
            
            
            
            try? container.encodeIfPresent(isValidated, forKey: .isValidated)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(refundInformation, forKey: .refundInformation)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            try? container.encodeIfPresent(couponDetails, forKey: .couponDetails)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            try? container.encodeIfPresent(gstinCode, forKey: .gstinCode)
            
            
            
            try? container.encodeIfPresent(showDownloadInvoice, forKey: .showDownloadInvoice)
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            try? container.encodeIfPresent(showTrackLink, forKey: .showTrackLink)
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            try? container.encodeIfPresent(canBreak, forKey: .canBreak)
            
            
            
            try? container.encodeIfPresent(trakingNo, forKey: .trakingNo)
            
            
            
            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            try? container.encodeIfPresent(totalBags, forKey: .totalBags)
            
            
            
            try? container.encodeIfPresent(totalDetails, forKey: .totalDetails)
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
            
            try? container.encodeIfPresent(shipmentCreatedTs, forKey: .shipmentCreatedTs)
            
            
            
            try? container.encodeIfPresent(sizeInfo, forKey: .sizeInfo)
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            try? container.encodeIfPresent(awbNo, forKey: .awbNo)
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
            
            try? container.encodeIfPresent(fulfillingCompany, forKey: .fulfillingCompany)
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(needHelpUrl, forKey: .needHelpUrl)
            
            
            
            try? container.encodeIfPresent(returnMeta, forKey: .returnMeta)
            
            
            
            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
            
            
            
            try? container.encodeIfPresent(order, forKey: .order)
            
            
            
            try? container.encodeIfPresent(canPayRemainingAmount, forKey: .canPayRemainingAmount)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            try? container.encodeIfPresent(isRefundInitiated, forKey: .isRefundInitiated)
            
            
        }
        
    }
}
