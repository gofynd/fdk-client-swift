

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Shipments
         Used By: Order
     */
    class Shipments: Codable {
        public var customMeta: [[String: Any]]?

        public var userInfo: ShipmentUserInfo?

        public var canCancel: Bool?

        public var canReturn: Bool?

        public var payment: ShipmentPayment?

        public var prices: Prices?

        public var totalDetails: ShipmentTotalDetails?

        public var deliveryAddress: DeliveryAddress?

        public var shipmentId: String?

        public var showDownloadInvoice: Bool?

        public var trackUrl: String?

        public var awbNo: String?

        public var shipmentCreatedAt: String?

        public var fulfillingCompany: FulfillingCompany?

        public var comment: String?

        public var refundDetails: [String: Any]?

        public var fulfillingStore: FulfillingStore?

        public var orderId: String?

        public var shipmentStatus: ShipmentStatus?

        public var dpName: String?

        public var sizeInfo: [String: Any]?

        public var bags: [Bags]?

        public var trakingNo: String?

        public var promise: Promise?

        public var showTrackLink: Bool?

        public var orderType: String?

        public var canBreak: [String: Any]?

        public var trackingDetails: [TrackingDetails]?

        public var beneficiaryDetails: Bool?

        public var deliveryDate: String?

        public var needHelpUrl: String?

        public var returnableDate: String?

        public var totalBags: Int?

        public var invoice: Invoice?

        public var breakupValues: [BreakupValues]?

        public enum CodingKeys: String, CodingKey {
            case customMeta = "custom_meta"

            case userInfo = "user_info"

            case canCancel = "can_cancel"

            case canReturn = "can_return"

            case payment

            case prices

            case totalDetails = "total_details"

            case deliveryAddress = "delivery_address"

            case shipmentId = "shipment_id"

            case showDownloadInvoice = "show_download_invoice"

            case trackUrl = "track_url"

            case awbNo = "awb_no"

            case shipmentCreatedAt = "shipment_created_at"

            case fulfillingCompany = "fulfilling_company"

            case comment

            case refundDetails = "refund_details"

            case fulfillingStore = "fulfilling_store"

            case orderId = "order_id"

            case shipmentStatus = "shipment_status"

            case dpName = "dp_name"

            case sizeInfo = "size_info"

            case bags

            case trakingNo = "traking_no"

            case promise

            case showTrackLink = "show_track_link"

            case orderType = "order_type"

            case canBreak = "can_break"

            case trackingDetails = "tracking_details"

            case beneficiaryDetails = "beneficiary_details"

            case deliveryDate = "delivery_date"

            case needHelpUrl = "need_help_url"

            case returnableDate = "returnable_date"

            case totalBags = "total_bags"

            case invoice

            case breakupValues = "breakup_values"
        }

        public init(awbNo: String? = nil, bags: [Bags]? = nil, beneficiaryDetails: Bool? = nil, breakupValues: [BreakupValues]? = nil, canBreak: [String: Any]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, comment: String? = nil, customMeta: [[String: Any]]? = nil, deliveryAddress: DeliveryAddress? = nil, deliveryDate: String? = nil, dpName: String? = nil, fulfillingCompany: FulfillingCompany? = nil, fulfillingStore: FulfillingStore? = nil, invoice: Invoice? = nil, needHelpUrl: String? = nil, orderId: String? = nil, orderType: String? = nil, payment: ShipmentPayment? = nil, prices: Prices? = nil, promise: Promise? = nil, refundDetails: [String: Any]? = nil, returnableDate: String? = nil, shipmentCreatedAt: String? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, showDownloadInvoice: Bool? = nil, showTrackLink: Bool? = nil, sizeInfo: [String: Any]? = nil, totalBags: Int? = nil, totalDetails: ShipmentTotalDetails? = nil, trackingDetails: [TrackingDetails]? = nil, trackUrl: String? = nil, trakingNo: String? = nil, userInfo: ShipmentUserInfo? = nil) {
            self.customMeta = customMeta

            self.userInfo = userInfo

            self.canCancel = canCancel

            self.canReturn = canReturn

            self.payment = payment

            self.prices = prices

            self.totalDetails = totalDetails

            self.deliveryAddress = deliveryAddress

            self.shipmentId = shipmentId

            self.showDownloadInvoice = showDownloadInvoice

            self.trackUrl = trackUrl

            self.awbNo = awbNo

            self.shipmentCreatedAt = shipmentCreatedAt

            self.fulfillingCompany = fulfillingCompany

            self.comment = comment

            self.refundDetails = refundDetails

            self.fulfillingStore = fulfillingStore

            self.orderId = orderId

            self.shipmentStatus = shipmentStatus

            self.dpName = dpName

            self.sizeInfo = sizeInfo

            self.bags = bags

            self.trakingNo = trakingNo

            self.promise = promise

            self.showTrackLink = showTrackLink

            self.orderType = orderType

            self.canBreak = canBreak

            self.trackingDetails = trackingDetails

            self.beneficiaryDetails = beneficiaryDetails

            self.deliveryDate = deliveryDate

            self.needHelpUrl = needHelpUrl

            self.returnableDate = returnableDate

            self.totalBags = totalBags

            self.invoice = invoice

            self.breakupValues = breakupValues
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(ShipmentUserInfo.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(ShipmentPayment.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalDetails = try container.decode(ShipmentTotalDetails.self, forKey: .totalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

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
                showDownloadInvoice = try container.decode(Bool.self, forKey: .showDownloadInvoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingCompany = try container.decode(FulfillingCompany.self, forKey: .fulfillingCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeInfo = try container.decode([String: Any].self, forKey: .sizeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Bags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trakingNo = try container.decode(String.self, forKey: .trakingNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promise = try container.decode(Promise.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showTrackLink = try container.decode(Bool.self, forKey: .showTrackLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canBreak = try container.decode([String: Any].self, forKey: .canBreak)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingDetails = try container.decode([TrackingDetails].self, forKey: .trackingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDate = try container.decode(String.self, forKey: .deliveryDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                needHelpUrl = try container.decode(String.self, forKey: .needHelpUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnableDate = try container.decode(String.self, forKey: .returnableDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalBags = try container.decode(Int.self, forKey: .totalBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(Invoice.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalDetails, forKey: .totalDetails)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(showDownloadInvoice, forKey: .showDownloadInvoice)

            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(fulfillingCompany, forKey: .fulfillingCompany)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(sizeInfo, forKey: .sizeInfo)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(trakingNo, forKey: .trakingNo)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(showTrackLink, forKey: .showTrackLink)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(needHelpUrl, forKey: .needHelpUrl)

            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)
        }
    }
}
