

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipmentDetails
         Used By: Order
     */

    class PlatformShipmentDetails: Codable {
        public var status: PlatformShipmentDetailsStatus?

        public var bags: BagsDetails?

        public var prices: ShipmentPrices?

        public var breakupValues: ShipmentBreakupValues?

        public var id: String?

        public var dpDetails: DpDetails?

        public var paymentMethods: [String: Any]?

        public var invoice: ShipmentInvoice?

        public var fulfillingStore: PlatformFulfillingStore?

        public var payments: Payments?

        public var gst: ShipmentGst?

        public var company: Company?

        public var brand: PlatformShipmentDetailsBrand?

        public var coupon: [String: Any]?

        public var orderSource: String?

        public var isNotFyndSource: Bool?

        public var canBreak: [String: Any]?

        public var comment: String?

        public var promise: Promise?

        public var trackingDetails: ShipmentTrackingDetails?

        public var isFyndCoupon: Bool?

        public var orderType: String?

        public var totalShipmentBags: Int?

        public var pod: [String: Any]?

        public var lockStatus: Bool?

        public var priority: Double?

        public var priorityText: String?

        public var orderingChannel: String?

        public var creditNoteId: String?

        public var autoTriggerDpAssignment: Bool?

        public var packagingType: String?

        public var dates: ShipmentDates?

        public enum CodingKeys: String, CodingKey {
            case status

            case bags

            case prices

            case breakupValues = "breakup_values"

            case id

            case dpDetails = "dp_details"

            case paymentMethods = "payment_methods"

            case invoice

            case fulfillingStore = "fulfilling_store"

            case payments

            case gst

            case company

            case brand

            case coupon

            case orderSource = "order_source"

            case isNotFyndSource = "is_not_fynd_source"

            case canBreak = "can_break"

            case comment

            case promise

            case trackingDetails = "tracking_details"

            case isFyndCoupon = "is_fynd_coupon"

            case orderType = "order_type"

            case totalShipmentBags = "total_shipment_bags"

            case pod

            case lockStatus = "lock_status"

            case priority

            case priorityText = "priority_text"

            case orderingChannel = "ordering_channel"

            case creditNoteId = "credit_note_id"

            case autoTriggerDpAssignment = "auto_trigger_dp_assignment"

            case packagingType = "packaging_type"

            case dates
        }

        public init(autoTriggerDpAssignment: Bool? = nil, bags: BagsDetails? = nil, brand: PlatformShipmentDetailsBrand? = nil, breakupValues: ShipmentBreakupValues? = nil, canBreak: [String: Any]? = nil, comment: String? = nil, company: Company? = nil, coupon: [String: Any]? = nil, creditNoteId: String? = nil, dates: ShipmentDates? = nil, dpDetails: DpDetails? = nil, fulfillingStore: PlatformFulfillingStore? = nil, gst: ShipmentGst? = nil, id: String? = nil, invoice: ShipmentInvoice? = nil, isFyndCoupon: Bool? = nil, isNotFyndSource: Bool? = nil, lockStatus: Bool? = nil, orderingChannel: String? = nil, orderSource: String? = nil, orderType: String? = nil, packagingType: String? = nil, payments: Payments? = nil, paymentMethods: [String: Any]? = nil, pod: [String: Any]? = nil, prices: ShipmentPrices? = nil, priority: Double? = nil, priorityText: String? = nil, promise: Promise? = nil, status: PlatformShipmentDetailsStatus? = nil, totalShipmentBags: Int? = nil, trackingDetails: ShipmentTrackingDetails? = nil) {
            self.status = status

            self.bags = bags

            self.prices = prices

            self.breakupValues = breakupValues

            self.id = id

            self.dpDetails = dpDetails

            self.paymentMethods = paymentMethods

            self.invoice = invoice

            self.fulfillingStore = fulfillingStore

            self.payments = payments

            self.gst = gst

            self.company = company

            self.brand = brand

            self.coupon = coupon

            self.orderSource = orderSource

            self.isNotFyndSource = isNotFyndSource

            self.canBreak = canBreak

            self.comment = comment

            self.promise = promise

            self.trackingDetails = trackingDetails

            self.isFyndCoupon = isFyndCoupon

            self.orderType = orderType

            self.totalShipmentBags = totalShipmentBags

            self.pod = pod

            self.lockStatus = lockStatus

            self.priority = priority

            self.priorityText = priorityText

            self.orderingChannel = orderingChannel

            self.creditNoteId = creditNoteId

            self.autoTriggerDpAssignment = autoTriggerDpAssignment

            self.packagingType = packagingType

            self.dates = dates
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(PlatformShipmentDetailsStatus.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(BagsDetails.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(ShipmentPrices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode(ShipmentBreakupValues.self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DpDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(ShipmentInvoice.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(PlatformFulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode(Payments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gst = try container.decode(ShipmentGst.self, forKey: .gst)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(Company.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(PlatformShipmentDetailsBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderSource = try container.decode(String.self, forKey: .orderSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                trackingDetails = try container.decode(ShipmentTrackingDetails.self, forKey: .trackingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

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
                totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pod = try container.decode([String: Any].self, forKey: .pod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Double.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                autoTriggerDpAssignment = try container.decode(Bool.self, forKey: .autoTriggerDpAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packagingType = try container.decode(String.self, forKey: .packagingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dates = try container.decode(ShipmentDates.self, forKey: .dates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(pod, forKey: .pod)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(autoTriggerDpAssignment, forKey: .autoTriggerDpAssignment)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(dates, forKey: .dates)
        }
    }
}
