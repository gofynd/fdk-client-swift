

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var isInvoiced: Bool

        public var prices: Prices?

        public var enableDpTracking: String

        public var billingDetails: UserDetailsData?

        public var userId: String

        public var priorityText: String?

        public var bagStatusHistory: [BagStatusHistory]?

        public var currentShipmentStatus: [String: Any]

        public var platformLogo: Bool

        public var orderCreatedTime: String?

        public var pickedDate: String

        public var fyndstoreEmp: [String: Any]

        public var userAgent: String

        public var canCancel: Bool?

        public var affiliateShipmentId: String

        public var statusProgress: Int

        public var canReturn: Bool?

        public var items: [[String: Any]]

        public var replacementDetails: String?

        public var mid: String?

        public var forwardShipmentStatus: [[String: Any]]?

        public var shipmentId: String

        public var status: ShipmentStatusData?

        public var trackingUrl: String

        public var order: OrderDetailsData?

        public var orderStatus: [String: Any]

        public var isPackagingOrder: Bool

        public var vertical: String?

        public var payments: ShipmentPayments?

        public var bankData: [String: Any]?

        public var coupon: [String: Any]?

        public var journeyType: String

        public var isFyndCoupon: Bool

        public var orderingStore: [String: Any]

        public var emailId: String

        public var userInfo: [String: Any]?

        public var dueDate: String?

        public var totalItems: Int?

        public var company: [String: Any]

        public var invoice: [String: Any]

        public var kiranaStoreId: String?

        public var bags: OrderBags?

        public var beneficiaryDetails: Bool?

        public var refundDetails: [String: Any]?

        public var securedDeliveryFlag: String?

        public var goGreen: Bool?

        public var orderType: String

        public var childNodes: [String]?

        public var paymentMode: String

        public var trackingList: [TrackingList]?

        public var isFyndStore: String?

        public var isPdsr: String?

        public var deliveryStatus: [[String: Any]]

        public var packagingType: String

        public var escalation: [String: Any]?

        public var deliveryDetails: UserDetailsData?

        public var forwardOrderStatus: [[String: Any]]?

        public var creditNoteId: String

        public var payButton: String?

        public var dpDetails: DPDetails?

        public var gstDetails: GST?

        public var lockStatus: String

        public var refundText: String?

        public var canBreak: String

        public var deliverySlot: [String: Any]

        public var enableTracking: Bool?

        public var shipmentQuantity: Int

        public var isNotFyndSource: Bool

        public var fulfillingStore: FulfillingStore?

        public var forwardTrackingList: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case isInvoiced = "is_invoiced"

            case prices

            case enableDpTracking = "enable_dp_tracking"

            case billingDetails = "billing_details"

            case userId = "user_id"

            case priorityText = "priority_text"

            case bagStatusHistory = "bag_status_history"

            case currentShipmentStatus = "current_shipment_status"

            case platformLogo = "platform_logo"

            case orderCreatedTime = "order_created_time"

            case pickedDate = "picked_date"

            case fyndstoreEmp = "fyndstore_emp"

            case userAgent = "user_agent"

            case canCancel = "can_cancel"

            case affiliateShipmentId = "affiliate_shipment_id"

            case statusProgress = "status_progress"

            case canReturn = "can_return"

            case items

            case replacementDetails = "replacement_details"

            case mid

            case forwardShipmentStatus = "forward_shipment_status"

            case shipmentId = "shipment_id"

            case status

            case trackingUrl = "tracking_url"

            case order

            case orderStatus = "order_status"

            case isPackagingOrder = "is_packaging_order"

            case vertical

            case payments

            case bankData = "bank_data"

            case coupon

            case journeyType = "journey_type"

            case isFyndCoupon = "is_fynd_coupon"

            case orderingStore = "ordering_store"

            case emailId = "email_id"

            case userInfo = "user_info"

            case dueDate = "due_date"

            case totalItems = "total_items"

            case company

            case invoice

            case kiranaStoreId = "kirana_store_id"

            case bags

            case beneficiaryDetails = "beneficiary_details"

            case refundDetails = "refund_details"

            case securedDeliveryFlag = "secured_delivery_flag"

            case goGreen = "go_green"

            case orderType = "order_type"

            case childNodes = "child_nodes"

            case paymentMode = "payment_mode"

            case trackingList = "tracking_list"

            case isFyndStore = "is_fynd_store"

            case isPdsr = "is_pdsr"

            case deliveryStatus = "delivery_status"

            case packagingType = "packaging_type"

            case escalation

            case deliveryDetails = "delivery_details"

            case forwardOrderStatus = "forward_order_status"

            case creditNoteId = "credit_note_id"

            case payButton = "pay_button"

            case dpDetails = "dp_details"

            case gstDetails = "gst_details"

            case lockStatus = "lock_status"

            case refundText = "refund_text"

            case canBreak = "can_break"

            case deliverySlot = "delivery_slot"

            case enableTracking = "enable_tracking"

            case shipmentQuantity = "shipment_quantity"

            case isNotFyndSource = "is_not_fynd_source"

            case fulfillingStore = "fulfilling_store"

            case forwardTrackingList = "forward_tracking_list"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.isInvoiced = isInvoiced

            self.prices = prices

            self.enableDpTracking = enableDpTracking

            self.billingDetails = billingDetails

            self.userId = userId

            self.priorityText = priorityText

            self.bagStatusHistory = bagStatusHistory

            self.currentShipmentStatus = currentShipmentStatus

            self.platformLogo = platformLogo

            self.orderCreatedTime = orderCreatedTime

            self.pickedDate = pickedDate

            self.fyndstoreEmp = fyndstoreEmp

            self.userAgent = userAgent

            self.canCancel = canCancel

            self.affiliateShipmentId = affiliateShipmentId

            self.statusProgress = statusProgress

            self.canReturn = canReturn

            self.items = items

            self.replacementDetails = replacementDetails

            self.mid = mid

            self.forwardShipmentStatus = forwardShipmentStatus

            self.shipmentId = shipmentId

            self.status = status

            self.trackingUrl = trackingUrl

            self.order = order

            self.orderStatus = orderStatus

            self.isPackagingOrder = isPackagingOrder

            self.vertical = vertical

            self.payments = payments

            self.bankData = bankData

            self.coupon = coupon

            self.journeyType = journeyType

            self.isFyndCoupon = isFyndCoupon

            self.orderingStore = orderingStore

            self.emailId = emailId

            self.userInfo = userInfo

            self.dueDate = dueDate

            self.totalItems = totalItems

            self.company = company

            self.invoice = invoice

            self.kiranaStoreId = kiranaStoreId

            self.bags = bags

            self.beneficiaryDetails = beneficiaryDetails

            self.refundDetails = refundDetails

            self.securedDeliveryFlag = securedDeliveryFlag

            self.goGreen = goGreen

            self.orderType = orderType

            self.childNodes = childNodes

            self.paymentMode = paymentMode

            self.trackingList = trackingList

            self.isFyndStore = isFyndStore

            self.isPdsr = isPdsr

            self.deliveryStatus = deliveryStatus

            self.packagingType = packagingType

            self.escalation = escalation

            self.deliveryDetails = deliveryDetails

            self.forwardOrderStatus = forwardOrderStatus

            self.creditNoteId = creditNoteId

            self.payButton = payButton

            self.dpDetails = dpDetails

            self.gstDetails = gstDetails

            self.lockStatus = lockStatus

            self.refundText = refundText

            self.canBreak = canBreak

            self.deliverySlot = deliverySlot

            self.enableTracking = enableTracking

            self.shipmentQuantity = shipmentQuantity

            self.isNotFyndSource = isNotFyndSource

            self.fulfillingStore = fulfillingStore

            self.forwardTrackingList = forwardTrackingList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

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

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mid = try container.decode(String.self, forKey: .mid)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

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

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

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
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

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
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)
        }
    }
}
