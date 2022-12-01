

import Foundation
public extension ApplicationClient {
    /*
         Model: Shipments1
         Used By: Order
     */
    class Shipments1: Codable {
        public var trackingDetails: [TrackingDetails1]?

        public var orderId: String?

        public var payment: ShipmentPayment1?

        public var totalBags: Int?

        public var returnableDate: String?

        public var shipmentCreatedAt: String?

        public var dpName: String?

        public var deliveryDate: String?

        public var deliveryAddress: DeliveryAddress?

        public var breakupValues: [BreakupValues]?

        public var beneficiaryDetails: Bool?

        public var bags: [Bags1]?

        public var sizeInfo: [String: Any]?

        public var canCancel: Bool?

        public var awbNo: String?

        public var customMeta: [[String: Any]]?

        public var fulfillingCompany: FulfillingCompany?

        public var trakingNo: String?

        public var showDownloadInvoice: Bool?

        public var showTrackLink: Bool?

        public var orderType: String?

        public var shipmentStatus: ShipmentStatus?

        public var fulfillingStore: FulfillingStore?

        public var promise: Promise1?

        public var totalDetails: ShipmentTotalDetails?

        public var invoice: Invoice?

        public var canReturn: Bool?

        public var refundDetails: [String: Any]?

        public var comment: String?

        public var canBreak: [String: Any]?

        public var shipmentId: String?

        public var userInfo: ShipmentUserInfo?

        public var prices: Prices?

        public var needHelpUrl: String?

        public var trackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case trackingDetails = "tracking_details"

            case orderId = "order_id"

            case payment

            case totalBags = "total_bags"

            case returnableDate = "returnable_date"

            case shipmentCreatedAt = "shipment_created_at"

            case dpName = "dp_name"

            case deliveryDate = "delivery_date"

            case deliveryAddress = "delivery_address"

            case breakupValues = "breakup_values"

            case beneficiaryDetails = "beneficiary_details"

            case bags

            case sizeInfo = "size_info"

            case canCancel = "can_cancel"

            case awbNo = "awb_no"

            case customMeta = "custom_meta"

            case fulfillingCompany = "fulfilling_company"

            case trakingNo = "traking_no"

            case showDownloadInvoice = "show_download_invoice"

            case showTrackLink = "show_track_link"

            case orderType = "order_type"

            case shipmentStatus = "shipment_status"

            case fulfillingStore = "fulfilling_store"

            case promise

            case totalDetails = "total_details"

            case invoice

            case canReturn = "can_return"

            case refundDetails = "refund_details"

            case comment

            case canBreak = "can_break"

            case shipmentId = "shipment_id"

            case userInfo = "user_info"

            case prices

            case needHelpUrl = "need_help_url"

            case trackUrl = "track_url"
        }

        public init(awbNo: String? = nil, bags: [Bags1]? = nil, beneficiaryDetails: Bool? = nil, breakupValues: [BreakupValues]? = nil, canBreak: [String: Any]? = nil, canCancel: Bool? = nil, canReturn: Bool? = nil, comment: String? = nil, customMeta: [[String: Any]]? = nil, deliveryAddress: DeliveryAddress? = nil, deliveryDate: String? = nil, dpName: String? = nil, fulfillingCompany: FulfillingCompany? = nil, fulfillingStore: FulfillingStore? = nil, invoice: Invoice? = nil, needHelpUrl: String? = nil, orderId: String? = nil, orderType: String? = nil, payment: ShipmentPayment1? = nil, prices: Prices? = nil, promise: Promise1? = nil, refundDetails: [String: Any]? = nil, returnableDate: String? = nil, shipmentCreatedAt: String? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, showDownloadInvoice: Bool? = nil, showTrackLink: Bool? = nil, sizeInfo: [String: Any]? = nil, totalBags: Int? = nil, totalDetails: ShipmentTotalDetails? = nil, trackingDetails: [TrackingDetails1]? = nil, trackUrl: String? = nil, trakingNo: String? = nil, userInfo: ShipmentUserInfo? = nil) {
            self.trackingDetails = trackingDetails

            self.orderId = orderId

            self.payment = payment

            self.totalBags = totalBags

            self.returnableDate = returnableDate

            self.shipmentCreatedAt = shipmentCreatedAt

            self.dpName = dpName

            self.deliveryDate = deliveryDate

            self.deliveryAddress = deliveryAddress

            self.breakupValues = breakupValues

            self.beneficiaryDetails = beneficiaryDetails

            self.bags = bags

            self.sizeInfo = sizeInfo

            self.canCancel = canCancel

            self.awbNo = awbNo

            self.customMeta = customMeta

            self.fulfillingCompany = fulfillingCompany

            self.trakingNo = trakingNo

            self.showDownloadInvoice = showDownloadInvoice

            self.showTrackLink = showTrackLink

            self.orderType = orderType

            self.shipmentStatus = shipmentStatus

            self.fulfillingStore = fulfillingStore

            self.promise = promise

            self.totalDetails = totalDetails

            self.invoice = invoice

            self.canReturn = canReturn

            self.refundDetails = refundDetails

            self.comment = comment

            self.canBreak = canBreak

            self.shipmentId = shipmentId

            self.userInfo = userInfo

            self.prices = prices

            self.needHelpUrl = needHelpUrl

            self.trackUrl = trackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                trackingDetails = try container.decode([TrackingDetails1].self, forKey: .trackingDetails)

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
                payment = try container.decode(ShipmentPayment1.self, forKey: .payment)

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
                returnableDate = try container.decode(String.self, forKey: .returnableDate)

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
                dpName = try container.decode(String.self, forKey: .dpName)

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
                deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

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

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Bags1].self, forKey: .bags)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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
                trakingNo = try container.decode(String.self, forKey: .trakingNo)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

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
                promise = try container.decode(Promise1.self, forKey: .promise)

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
                invoice = try container.decode(Invoice.self, forKey: .invoice)

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
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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
                canBreak = try container.decode([String: Any].self, forKey: .canBreak)

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
                userInfo = try container.decode(ShipmentUserInfo.self, forKey: .userInfo)

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
                needHelpUrl = try container.decode(String.self, forKey: .needHelpUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(returnableDate, forKey: .returnableDate)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(sizeInfo, forKey: .sizeInfo)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(fulfillingCompany, forKey: .fulfillingCompany)

            try? container.encodeIfPresent(trakingNo, forKey: .trakingNo)

            try? container.encodeIfPresent(showDownloadInvoice, forKey: .showDownloadInvoice)

            try? container.encodeIfPresent(showTrackLink, forKey: .showTrackLink)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(totalDetails, forKey: .totalDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(needHelpUrl, forKey: .needHelpUrl)

            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)
        }
    }
}
