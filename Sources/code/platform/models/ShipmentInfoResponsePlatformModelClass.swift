

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var userId: String

        public var fulfillingStore: FulfillingStore?

        public var escalation: [String: Any]?

        public var orderType: String

        public var pickedDate: String

        public var fyndstoreEmp: [String: Any]

        public var packagingType: String

        public var goGreen: Bool?

        public var beneficiaryDetails: Bool?

        public var coupon: [String: Any]?

        public var vertical: String?

        public var isFyndCoupon: Bool

        public var bankData: [String: Any]?

        public var priorityText: String?

        public var status: ShipmentStatusData?

        public var trackingList: [TrackingList]?

        public var orderStatus: [String: Any]

        public var creditNoteId: String

        public var replacementDetails: String?

        public var trackingUrl: String

        public var paymentMode: String

        public var lockStatus: String

        public var kiranaStoreId: String?

        public var dueDate: String?

        public var isInvoiced: Bool

        public var payments: ShipmentPayments?

        public var emailId: String

        public var payButton: String?

        public var isNotFyndSource: Bool

        public var order: OrderDetailsData?

        public var invoice: [String: Any]

        public var securedDeliveryFlag: String?

        public var shipmentQuantity: Int

        public var canBreak: String

        public var mid: String?

        public var enableDpTracking: String

        public var forwardOrderStatus: [[String: Any]]?

        public var refundDetails: [String: Any]?

        public var statusProgress: Int

        public var canCancel: Bool?

        public var platformLogo: Bool

        public var isPdsr: String?

        public var orderingStore: [String: Any]

        public var deliveryStatus: [[String: Any]]

        public var enableTracking: Bool?

        public var billingDetails: UserDetailsData?

        public var affiliateShipmentId: String

        public var canReturn: Bool?

        public var refundText: String?

        public var isFyndStore: String?

        public var shipmentId: String

        public var deliverySlot: [String: Any]

        public var totalItems: Int?

        public var currentShipmentStatus: [String: Any]

        public var items: [[String: Any]]

        public var gstDetails: GST?

        public var journeyType: String

        public var userAgent: String

        public var childNodes: [String]?

        public var company: [String: Any]

        public var deliveryDetails: UserDetailsData?

        public var userInfo: [String: Any]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var bags: OrderBags?

        public var orderCreatedTime: String?

        public var isPackagingOrder: Bool

        public var forwardTrackingList: [[String: Any]]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var dpDetails: DPDetails?

        public var prices: Prices?

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case fulfillingStore = "fulfilling_store"

            case escalation

            case orderType = "order_type"

            case pickedDate = "picked_date"

            case fyndstoreEmp = "fyndstore_emp"

            case packagingType = "packaging_type"

            case goGreen = "go_green"

            case beneficiaryDetails = "beneficiary_details"

            case coupon

            case vertical

            case isFyndCoupon = "is_fynd_coupon"

            case bankData = "bank_data"

            case priorityText = "priority_text"

            case status

            case trackingList = "tracking_list"

            case orderStatus = "order_status"

            case creditNoteId = "credit_note_id"

            case replacementDetails = "replacement_details"

            case trackingUrl = "tracking_url"

            case paymentMode = "payment_mode"

            case lockStatus = "lock_status"

            case kiranaStoreId = "kirana_store_id"

            case dueDate = "due_date"

            case isInvoiced = "is_invoiced"

            case payments

            case emailId = "email_id"

            case payButton = "pay_button"

            case isNotFyndSource = "is_not_fynd_source"

            case order

            case invoice

            case securedDeliveryFlag = "secured_delivery_flag"

            case shipmentQuantity = "shipment_quantity"

            case canBreak = "can_break"

            case mid

            case enableDpTracking = "enable_dp_tracking"

            case forwardOrderStatus = "forward_order_status"

            case refundDetails = "refund_details"

            case statusProgress = "status_progress"

            case canCancel = "can_cancel"

            case platformLogo = "platform_logo"

            case isPdsr = "is_pdsr"

            case orderingStore = "ordering_store"

            case deliveryStatus = "delivery_status"

            case enableTracking = "enable_tracking"

            case billingDetails = "billing_details"

            case affiliateShipmentId = "affiliate_shipment_id"

            case canReturn = "can_return"

            case refundText = "refund_text"

            case isFyndStore = "is_fynd_store"

            case shipmentId = "shipment_id"

            case deliverySlot = "delivery_slot"

            case totalItems = "total_items"

            case currentShipmentStatus = "current_shipment_status"

            case items

            case gstDetails = "gst_details"

            case journeyType = "journey_type"

            case userAgent = "user_agent"

            case childNodes = "child_nodes"

            case company

            case deliveryDetails = "delivery_details"

            case userInfo = "user_info"

            case bagStatusHistory = "bag_status_history"

            case bags

            case orderCreatedTime = "order_created_time"

            case isPackagingOrder = "is_packaging_order"

            case forwardTrackingList = "forward_tracking_list"

            case forwardShipmentStatus = "forward_shipment_status"

            case dpDetails = "dp_details"

            case prices
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.userId = userId

            self.fulfillingStore = fulfillingStore

            self.escalation = escalation

            self.orderType = orderType

            self.pickedDate = pickedDate

            self.fyndstoreEmp = fyndstoreEmp

            self.packagingType = packagingType

            self.goGreen = goGreen

            self.beneficiaryDetails = beneficiaryDetails

            self.coupon = coupon

            self.vertical = vertical

            self.isFyndCoupon = isFyndCoupon

            self.bankData = bankData

            self.priorityText = priorityText

            self.status = status

            self.trackingList = trackingList

            self.orderStatus = orderStatus

            self.creditNoteId = creditNoteId

            self.replacementDetails = replacementDetails

            self.trackingUrl = trackingUrl

            self.paymentMode = paymentMode

            self.lockStatus = lockStatus

            self.kiranaStoreId = kiranaStoreId

            self.dueDate = dueDate

            self.isInvoiced = isInvoiced

            self.payments = payments

            self.emailId = emailId

            self.payButton = payButton

            self.isNotFyndSource = isNotFyndSource

            self.order = order

            self.invoice = invoice

            self.securedDeliveryFlag = securedDeliveryFlag

            self.shipmentQuantity = shipmentQuantity

            self.canBreak = canBreak

            self.mid = mid

            self.enableDpTracking = enableDpTracking

            self.forwardOrderStatus = forwardOrderStatus

            self.refundDetails = refundDetails

            self.statusProgress = statusProgress

            self.canCancel = canCancel

            self.platformLogo = platformLogo

            self.isPdsr = isPdsr

            self.orderingStore = orderingStore

            self.deliveryStatus = deliveryStatus

            self.enableTracking = enableTracking

            self.billingDetails = billingDetails

            self.affiliateShipmentId = affiliateShipmentId

            self.canReturn = canReturn

            self.refundText = refundText

            self.isFyndStore = isFyndStore

            self.shipmentId = shipmentId

            self.deliverySlot = deliverySlot

            self.totalItems = totalItems

            self.currentShipmentStatus = currentShipmentStatus

            self.items = items

            self.gstDetails = gstDetails

            self.journeyType = journeyType

            self.userAgent = userAgent

            self.childNodes = childNodes

            self.company = company

            self.deliveryDetails = deliveryDetails

            self.userInfo = userInfo

            self.bagStatusHistory = bagStatusHistory

            self.bags = bags

            self.orderCreatedTime = orderCreatedTime

            self.isPackagingOrder = isPackagingOrder

            self.forwardTrackingList = forwardTrackingList

            self.forwardShipmentStatus = forwardShipmentStatus

            self.dpDetails = dpDetails

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

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

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
