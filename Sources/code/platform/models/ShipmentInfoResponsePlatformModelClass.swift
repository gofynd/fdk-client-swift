

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var fyndstoreEmp: [String: Any]

        public var platformLogo: Bool

        public var childNodes: [String]?

        public var enableDpTracking: String

        public var orderingStore: [String: Any]

        public var order: OrderDetailsData?

        public var isPackagingOrder: Bool

        public var dueDate: String?

        public var shipmentId: String

        public var emailId: String

        public var userId: String

        public var escalation: [String: Any]?

        public var lockStatus: String

        public var creditNoteId: String

        public var userInfo: [String: Any]?

        public var trackingUrl: String

        public var canCancel: Bool?

        public var packagingType: String

        public var goGreen: Bool?

        public var billingDetails: UserDetailsData?

        public var isFyndCoupon: Bool

        public var affiliateShipmentId: String

        public var isPdsr: String?

        public var journeyType: String

        public var totalItems: Int?

        public var forwardShipmentStatus: [[String: Any]]?

        public var bankData: [String: Any]?

        public var payButton: String?

        public var mid: String?

        public var fulfillingStore: FulfillingStore?

        public var bagStatusHistory: [BagStatusHistory]?

        public var orderType: String

        public var statusProgress: Int

        public var forwardOrderStatus: [[String: Any]]?

        public var items: [[String: Any]]

        public var vertical: String?

        public var beneficiaryDetails: Bool?

        public var status: ShipmentStatusData?

        public var securedDeliveryFlag: String?

        public var canReturn: Bool?

        public var bags: OrderBags?

        public var shipmentQuantity: Int

        public var dpDetails: DPDetails?

        public var trackingList: [TrackingList]?

        public var enableTracking: Bool?

        public var orderStatus: [String: Any]

        public var canBreak: String

        public var isNotFyndSource: Bool

        public var orderCreatedTime: String?

        public var userAgent: String

        public var gstDetails: GST?

        public var prices: Prices?

        public var kiranaStoreId: String?

        public var deliveryDetails: UserDetailsData?

        public var payments: ShipmentPayments?

        public var currentShipmentStatus: [String: Any]

        public var refundDetails: [String: Any]?

        public var replacementDetails: String?

        public var coupon: [String: Any]?

        public var invoice: [String: Any]

        public var isFyndStore: String?

        public var forwardTrackingList: [[String: Any]]?

        public var priorityText: String?

        public var company: [String: Any]

        public var deliverySlot: [String: Any]

        public var pickedDate: String

        public var paymentMode: String

        public var refundText: String?

        public var isInvoiced: Bool

        public var deliveryStatus: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case fyndstoreEmp = "fyndstore_emp"

            case platformLogo = "platform_logo"

            case childNodes = "child_nodes"

            case enableDpTracking = "enable_dp_tracking"

            case orderingStore = "ordering_store"

            case order

            case isPackagingOrder = "is_packaging_order"

            case dueDate = "due_date"

            case shipmentId = "shipment_id"

            case emailId = "email_id"

            case userId = "user_id"

            case escalation

            case lockStatus = "lock_status"

            case creditNoteId = "credit_note_id"

            case userInfo = "user_info"

            case trackingUrl = "tracking_url"

            case canCancel = "can_cancel"

            case packagingType = "packaging_type"

            case goGreen = "go_green"

            case billingDetails = "billing_details"

            case isFyndCoupon = "is_fynd_coupon"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isPdsr = "is_pdsr"

            case journeyType = "journey_type"

            case totalItems = "total_items"

            case forwardShipmentStatus = "forward_shipment_status"

            case bankData = "bank_data"

            case payButton = "pay_button"

            case mid

            case fulfillingStore = "fulfilling_store"

            case bagStatusHistory = "bag_status_history"

            case orderType = "order_type"

            case statusProgress = "status_progress"

            case forwardOrderStatus = "forward_order_status"

            case items

            case vertical

            case beneficiaryDetails = "beneficiary_details"

            case status

            case securedDeliveryFlag = "secured_delivery_flag"

            case canReturn = "can_return"

            case bags

            case shipmentQuantity = "shipment_quantity"

            case dpDetails = "dp_details"

            case trackingList = "tracking_list"

            case enableTracking = "enable_tracking"

            case orderStatus = "order_status"

            case canBreak = "can_break"

            case isNotFyndSource = "is_not_fynd_source"

            case orderCreatedTime = "order_created_time"

            case userAgent = "user_agent"

            case gstDetails = "gst_details"

            case prices

            case kiranaStoreId = "kirana_store_id"

            case deliveryDetails = "delivery_details"

            case payments

            case currentShipmentStatus = "current_shipment_status"

            case refundDetails = "refund_details"

            case replacementDetails = "replacement_details"

            case coupon

            case invoice

            case isFyndStore = "is_fynd_store"

            case forwardTrackingList = "forward_tracking_list"

            case priorityText = "priority_text"

            case company

            case deliverySlot = "delivery_slot"

            case pickedDate = "picked_date"

            case paymentMode = "payment_mode"

            case refundText = "refund_text"

            case isInvoiced = "is_invoiced"

            case deliveryStatus = "delivery_status"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.fyndstoreEmp = fyndstoreEmp

            self.platformLogo = platformLogo

            self.childNodes = childNodes

            self.enableDpTracking = enableDpTracking

            self.orderingStore = orderingStore

            self.order = order

            self.isPackagingOrder = isPackagingOrder

            self.dueDate = dueDate

            self.shipmentId = shipmentId

            self.emailId = emailId

            self.userId = userId

            self.escalation = escalation

            self.lockStatus = lockStatus

            self.creditNoteId = creditNoteId

            self.userInfo = userInfo

            self.trackingUrl = trackingUrl

            self.canCancel = canCancel

            self.packagingType = packagingType

            self.goGreen = goGreen

            self.billingDetails = billingDetails

            self.isFyndCoupon = isFyndCoupon

            self.affiliateShipmentId = affiliateShipmentId

            self.isPdsr = isPdsr

            self.journeyType = journeyType

            self.totalItems = totalItems

            self.forwardShipmentStatus = forwardShipmentStatus

            self.bankData = bankData

            self.payButton = payButton

            self.mid = mid

            self.fulfillingStore = fulfillingStore

            self.bagStatusHistory = bagStatusHistory

            self.orderType = orderType

            self.statusProgress = statusProgress

            self.forwardOrderStatus = forwardOrderStatus

            self.items = items

            self.vertical = vertical

            self.beneficiaryDetails = beneficiaryDetails

            self.status = status

            self.securedDeliveryFlag = securedDeliveryFlag

            self.canReturn = canReturn

            self.bags = bags

            self.shipmentQuantity = shipmentQuantity

            self.dpDetails = dpDetails

            self.trackingList = trackingList

            self.enableTracking = enableTracking

            self.orderStatus = orderStatus

            self.canBreak = canBreak

            self.isNotFyndSource = isNotFyndSource

            self.orderCreatedTime = orderCreatedTime

            self.userAgent = userAgent

            self.gstDetails = gstDetails

            self.prices = prices

            self.kiranaStoreId = kiranaStoreId

            self.deliveryDetails = deliveryDetails

            self.payments = payments

            self.currentShipmentStatus = currentShipmentStatus

            self.refundDetails = refundDetails

            self.replacementDetails = replacementDetails

            self.coupon = coupon

            self.invoice = invoice

            self.isFyndStore = isFyndStore

            self.forwardTrackingList = forwardTrackingList

            self.priorityText = priorityText

            self.company = company

            self.deliverySlot = deliverySlot

            self.pickedDate = pickedDate

            self.paymentMode = paymentMode

            self.refundText = refundText

            self.isInvoiced = isInvoiced

            self.deliveryStatus = deliveryStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            emailId = try container.decode(String.self, forKey: .emailId)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

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
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)
        }
    }
}
