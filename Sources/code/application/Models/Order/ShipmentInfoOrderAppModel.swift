

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentInfo
        Used By: Order
    */
    class ShipmentInfo: Codable {
        
        public var orderId: String?
        
        public var breakupValues: [BreakupValues]?
        
        public var beneficiaryDetails: Bool?
        
        public var shipmentCreatedAt: String?
        
        public var shipmentCreatedTs: String?
        
        public var shipmentId: String?
        
        public var shipmentStatus: ShipmentStatus?
        
        public var trackUrl: String?
        
        public var trakingNo: String?
        
        public var awbNo: String?
        
        public var dpName: String?
        
        public var trackingDetails: [TrackingDetails]?
        
        public var totalBags: Int?
        
        public var bags: [Bags]?
        
        public var sizeInfo: [String: Any]?
        
        public var orderType: String?
        
        public var fulfillingStore: FulfillingStore?
        
        public var fulfillingCompany: FulfillingCompany?
        
        public var charges: [PriceAdjustmentCharge]?
        
        public var totalDetails: ShipmentTotalDetails?
        
        public var promise: Promise?
        
        public var deliveryDate: String?
        
        public var billingAddress: Address?
        
        public var deliveryAddress: Address?
        
        public var canCancel: Bool?
        
        public var canReturn: Bool?
        
        public var returnableDate: String?
        
        public var showTrackLink: Bool?
        
        public var prices: Prices?
        
        public var canBreak: [String: Any]?
        
        public var needHelpUrl: String?
        
        public var showDownloadInvoice: Bool?
        
        public var payment: ShipmentPayment?
        
        public var userInfo: ShipmentUserInfo?
        
        public var comment: String?
        
        public var invoice: Invoice?
        
        public var refundDetails: [String: Any]?
        
        public var paymentInfo: [ShipmentPaymentInfo]?
        
        public var fulfillmentOption: FulfillmentOption?
        
        public var ndrDetails: NdrDetailsSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case breakupValues = "breakup_values"
            
            case beneficiaryDetails = "beneficiary_details"
            
            case shipmentCreatedAt = "shipment_created_at"
            
            case shipmentCreatedTs = "shipment_created_ts"
            
            case shipmentId = "shipment_id"
            
            case shipmentStatus = "shipment_status"
            
            case trackUrl = "track_url"
            
            case trakingNo = "traking_no"
            
            case awbNo = "awb_no"
            
            case dpName = "dp_name"
            
            case trackingDetails = "tracking_details"
            
            case totalBags = "total_bags"
            
            case bags = "bags"
            
            case sizeInfo = "size_info"
            
            case orderType = "order_type"
            
            case fulfillingStore = "fulfilling_store"
            
            case fulfillingCompany = "fulfilling_company"
            
            case charges = "charges"
            
            case totalDetails = "total_details"
            
            case promise = "promise"
            
            case deliveryDate = "delivery_date"
            
            case billingAddress = "billing_address"
            
            case deliveryAddress = "delivery_address"
            
            case canCancel = "can_cancel"
            
            case canReturn = "can_return"
            
            case returnableDate = "returnable_date"
            
            case showTrackLink = "show_track_link"
            
            case prices = "prices"
            
            case canBreak = "can_break"
            
            case needHelpUrl = "need_help_url"
            
            case showDownloadInvoice = "show_download_invoice"
            
            case payment = "payment"
            
            case userInfo = "user_info"
            
            case comment = "comment"
            
            case invoice = "invoice"
            
            case refundDetails = "refund_details"
            
            case paymentInfo = "payment_info"
            
            case fulfillmentOption = "fulfillment_option"
            
            case ndrDetails = "ndr_details"
            
        }

        public init(awbNo: String? = nil, bags: [Bags]? = nil, beneficiaryDetails: Bool? = nil, billingAddress: Address? = nil, breakupValues: [BreakupValues]? = nil, canBreak: [String: Any]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, charges: [PriceAdjustmentCharge]? = nil, comment: String? = nil, deliveryAddress: Address? = nil, deliveryDate: String? = nil, dpName: String? = nil, fulfillingCompany: FulfillingCompany? = nil, fulfillingStore: FulfillingStore? = nil, fulfillmentOption: FulfillmentOption? = nil, invoice: Invoice? = nil, ndrDetails: NdrDetailsSchema? = nil, needHelpUrl: String? = nil, orderId: String? = nil, orderType: String? = nil, payment: ShipmentPayment? = nil, paymentInfo: [ShipmentPaymentInfo]? = nil, prices: Prices? = nil, promise: Promise? = nil, refundDetails: [String: Any]? = nil, returnableDate: String? = nil, shipmentCreatedAt: String? = nil, shipmentCreatedTs: String? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, showDownloadInvoice: Bool? = nil, showTrackLink: Bool? = nil, sizeInfo: [String: Any]? = nil, totalBags: Int? = nil, totalDetails: ShipmentTotalDetails? = nil, trackingDetails: [TrackingDetails]? = nil, trackUrl: String? = nil, trakingNo: String? = nil, userInfo: ShipmentUserInfo? = nil) {
            
            self.orderId = orderId
            
            self.breakupValues = breakupValues
            
            self.beneficiaryDetails = beneficiaryDetails
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
            self.shipmentCreatedTs = shipmentCreatedTs
            
            self.shipmentId = shipmentId
            
            self.shipmentStatus = shipmentStatus
            
            self.trackUrl = trackUrl
            
            self.trakingNo = trakingNo
            
            self.awbNo = awbNo
            
            self.dpName = dpName
            
            self.trackingDetails = trackingDetails
            
            self.totalBags = totalBags
            
            self.bags = bags
            
            self.sizeInfo = sizeInfo
            
            self.orderType = orderType
            
            self.fulfillingStore = fulfillingStore
            
            self.fulfillingCompany = fulfillingCompany
            
            self.charges = charges
            
            self.totalDetails = totalDetails
            
            self.promise = promise
            
            self.deliveryDate = deliveryDate
            
            self.billingAddress = billingAddress
            
            self.deliveryAddress = deliveryAddress
            
            self.canCancel = canCancel
            
            self.canReturn = canReturn
            
            self.returnableDate = returnableDate
            
            self.showTrackLink = showTrackLink
            
            self.prices = prices
            
            self.canBreak = canBreak
            
            self.needHelpUrl = needHelpUrl
            
            self.showDownloadInvoice = showDownloadInvoice
            
            self.payment = payment
            
            self.userInfo = userInfo
            
            self.comment = comment
            
            self.invoice = invoice
            
            self.refundDetails = refundDetails
            
            self.paymentInfo = paymentInfo
            
            self.fulfillmentOption = fulfillmentOption
            
            self.ndrDetails = ndrDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
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
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)
            
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
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
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
                trackUrl = try container.decode(String.self, forKey: .trackUrl)
            
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
                awbNo = try container.decode(String.self, forKey: .awbNo)
            
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
                trackingDetails = try container.decode([TrackingDetails].self, forKey: .trackingDetails)
            
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
                bags = try container.decode([Bags].self, forKey: .bags)
            
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
                orderType = try container.decode(String.self, forKey: .orderType)
            
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
                fulfillingCompany = try container.decode(FulfillingCompany.self, forKey: .fulfillingCompany)
            
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
                totalDetails = try container.decode(ShipmentTotalDetails.self, forKey: .totalDetails)
            
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
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)
            
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
                deliveryAddress = try container.decode(Address.self, forKey: .deliveryAddress)
            
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
                canReturn = try container.decode(Bool.self, forKey: .canReturn)
            
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
                showTrackLink = try container.decode(Bool.self, forKey: .showTrackLink)
            
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
                canBreak = try container.decode([String: Any].self, forKey: .canBreak)
            
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
                showDownloadInvoice = try container.decode(Bool.self, forKey: .showDownloadInvoice)
            
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
                userInfo = try container.decode(ShipmentUserInfo.self, forKey: .userInfo)
            
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
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentInfo = try container.decode([ShipmentPaymentInfo].self, forKey: .paymentInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentOption = try container.decode(FulfillmentOption.self, forKey: .fulfillmentOption)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ndrDetails = try container.decode(NdrDetailsSchema.self, forKey: .ndrDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
            
            try? container.encodeIfPresent(shipmentCreatedTs, forKey: .shipmentCreatedTs)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
            
            
            
            try? container.encodeIfPresent(trakingNo, forKey: .trakingNo)
            
            
            
            try? container.encodeIfPresent(awbNo, forKey: .awbNo)
            
            
            
            try? container.encodeIfPresent(dpName, forKey: .dpName)
            
            
            
            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)
            
            
            
            try? container.encodeIfPresent(totalBags, forKey: .totalBags)
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            try? container.encodeIfPresent(sizeInfo, forKey: .sizeInfo)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            try? container.encodeIfPresent(fulfillingCompany, forKey: .fulfillingCompany)
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            try? container.encodeIfPresent(totalDetails, forKey: .totalDetails)
            
            
            
            try? container.encodeIfPresent(promise, forKey: .promise)
            
            
            
            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            try? container.encodeIfPresent(canCancel, forKey: .canCancel)
            
            
            
            try? container.encodeIfPresent(canReturn, forKey: .canReturn)
            
            
            
            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)
            
            
            
            try? container.encodeIfPresent(showTrackLink, forKey: .showTrackLink)
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            try? container.encodeIfPresent(canBreak, forKey: .canBreak)
            
            
            
            try? container.encodeIfPresent(needHelpUrl, forKey: .needHelpUrl)
            
            
            
            try? container.encodeIfPresent(showDownloadInvoice, forKey: .showDownloadInvoice)
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(invoice, forKey: .invoice)
            
            
            
            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            try? container.encodeIfPresent(fulfillmentOption, forKey: .fulfillmentOption)
            
            
            
            try? container.encodeIfPresent(ndrDetails, forKey: .ndrDetails)
            
            
        }
        
    }
}
