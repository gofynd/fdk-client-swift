

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var packagingType: String

        public var payButton: String?

        public var kiranaStoreId: String?

        public var journeyType: String

        public var bankData: [String: Any]?

        public var deliveryStatus: [[String: Any]]

        public var fulfillingStore: FulfillingStore?

        public var invoice: [String: Any]

        public var forwardOrderStatus: [[String: Any]]?

        public var company: [String: Any]

        public var vertical: String?

        public var childNodes: [String]?

        public var gstDetails: GST?

        public var prices: Prices?

        public var affiliateShipmentId: String

        public var isPackagingOrder: Bool

        public var forwardTrackingList: [[String: Any]]?

        public var userAgent: String

        public var enableDpTracking: String

        public var userId: String

        public var securedDeliveryFlag: String?

        public var billingDetails: UserDetailsData?

        public var orderingStore: [String: Any]

        public var isInvoiced: Bool

        public var dueDate: String?

        public var order: OrderDetailsData?

        public var priorityText: String?

        public var coupon: [String: Any]?

        public var beneficiaryDetails: Bool?

        public var mid: String?

        public var orderStatus: [String: Any]

        public var canReturn: Bool?

        public var deliverySlot: [String: Any]

        public var userInfo: [String: Any]?

        public var dpDetails: DPDetails?

        public var deliveryDetails: UserDetailsData?

        public var bagStatusHistory: [BagStatusHistory]?

        public var status: ShipmentStatusData?

        public var canCancel: Bool?

        public var trackingUrl: String

        public var payments: ShipmentPayments?

        public var shipmentQuantity: Int

        public var totalItems: Int?

        public var refundText: String?

        public var isPdsr: String?

        public var orderType: String

        public var shipmentId: String

        public var replacementDetails: String?

        public var fyndstoreEmp: [String: Any]

        public var statusProgress: Int

        public var goGreen: Bool?

        public var isFyndStore: String?

        public var paymentMode: String

        public var isNotFyndSource: Bool

        public var items: [[String: Any]]

        public var creditNoteId: String

        public var trackingList: [TrackingList]?

        public var orderCreatedTime: String?

        public var enableTracking: Bool?

        public var bags: OrderBags?

        public var escalation: [String: Any]?

        public var refundDetails: [String: Any]?

        public var pickedDate: String

        public var canBreak: String

        public var lockStatus: String

        public var forwardShipmentStatus: [[String: Any]]?

        public var currentShipmentStatus: [String: Any]

        public var isFyndCoupon: Bool

        public var platformLogo: Bool

        public var emailId: String

        public enum CodingKeys: String, CodingKey {
            case packagingType = "packaging_type"

            case payButton = "pay_button"

            case kiranaStoreId = "kirana_store_id"

            case journeyType = "journey_type"

            case bankData = "bank_data"

            case deliveryStatus = "delivery_status"

            case fulfillingStore = "fulfilling_store"

            case invoice

            case forwardOrderStatus = "forward_order_status"

            case company

            case vertical

            case childNodes = "child_nodes"

            case gstDetails = "gst_details"

            case prices

            case affiliateShipmentId = "affiliate_shipment_id"

            case isPackagingOrder = "is_packaging_order"

            case forwardTrackingList = "forward_tracking_list"

            case userAgent = "user_agent"

            case enableDpTracking = "enable_dp_tracking"

            case userId = "user_id"

            case securedDeliveryFlag = "secured_delivery_flag"

            case billingDetails = "billing_details"

            case orderingStore = "ordering_store"

            case isInvoiced = "is_invoiced"

            case dueDate = "due_date"

            case order

            case priorityText = "priority_text"

            case coupon

            case beneficiaryDetails = "beneficiary_details"

            case mid

            case orderStatus = "order_status"

            case canReturn = "can_return"

            case deliverySlot = "delivery_slot"

            case userInfo = "user_info"

            case dpDetails = "dp_details"

            case deliveryDetails = "delivery_details"

            case bagStatusHistory = "bag_status_history"

            case status

            case canCancel = "can_cancel"

            case trackingUrl = "tracking_url"

            case payments

            case shipmentQuantity = "shipment_quantity"

            case totalItems = "total_items"

            case refundText = "refund_text"

            case isPdsr = "is_pdsr"

            case orderType = "order_type"

            case shipmentId = "shipment_id"

            case replacementDetails = "replacement_details"

            case fyndstoreEmp = "fyndstore_emp"

            case statusProgress = "status_progress"

            case goGreen = "go_green"

            case isFyndStore = "is_fynd_store"

            case paymentMode = "payment_mode"

            case isNotFyndSource = "is_not_fynd_source"

            case items

            case creditNoteId = "credit_note_id"

            case trackingList = "tracking_list"

            case orderCreatedTime = "order_created_time"

            case enableTracking = "enable_tracking"

            case bags

            case escalation

            case refundDetails = "refund_details"

            case pickedDate = "picked_date"

            case canBreak = "can_break"

            case lockStatus = "lock_status"

            case forwardShipmentStatus = "forward_shipment_status"

            case currentShipmentStatus = "current_shipment_status"

            case isFyndCoupon = "is_fynd_coupon"

            case platformLogo = "platform_logo"

            case emailId = "email_id"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.packagingType = packagingType

            self.payButton = payButton

            self.kiranaStoreId = kiranaStoreId

            self.journeyType = journeyType

            self.bankData = bankData

            self.deliveryStatus = deliveryStatus

            self.fulfillingStore = fulfillingStore

            self.invoice = invoice

            self.forwardOrderStatus = forwardOrderStatus

            self.company = company

            self.vertical = vertical

            self.childNodes = childNodes

            self.gstDetails = gstDetails

            self.prices = prices

            self.affiliateShipmentId = affiliateShipmentId

            self.isPackagingOrder = isPackagingOrder

            self.forwardTrackingList = forwardTrackingList

            self.userAgent = userAgent

            self.enableDpTracking = enableDpTracking

            self.userId = userId

            self.securedDeliveryFlag = securedDeliveryFlag

            self.billingDetails = billingDetails

            self.orderingStore = orderingStore

            self.isInvoiced = isInvoiced

            self.dueDate = dueDate

            self.order = order

            self.priorityText = priorityText

            self.coupon = coupon

            self.beneficiaryDetails = beneficiaryDetails

            self.mid = mid

            self.orderStatus = orderStatus

            self.canReturn = canReturn

            self.deliverySlot = deliverySlot

            self.userInfo = userInfo

            self.dpDetails = dpDetails

            self.deliveryDetails = deliveryDetails

            self.bagStatusHistory = bagStatusHistory

            self.status = status

            self.canCancel = canCancel

            self.trackingUrl = trackingUrl

            self.payments = payments

            self.shipmentQuantity = shipmentQuantity

            self.totalItems = totalItems

            self.refundText = refundText

            self.isPdsr = isPdsr

            self.orderType = orderType

            self.shipmentId = shipmentId

            self.replacementDetails = replacementDetails

            self.fyndstoreEmp = fyndstoreEmp

            self.statusProgress = statusProgress

            self.goGreen = goGreen

            self.isFyndStore = isFyndStore

            self.paymentMode = paymentMode

            self.isNotFyndSource = isNotFyndSource

            self.items = items

            self.creditNoteId = creditNoteId

            self.trackingList = trackingList

            self.orderCreatedTime = orderCreatedTime

            self.enableTracking = enableTracking

            self.bags = bags

            self.escalation = escalation

            self.refundDetails = refundDetails

            self.pickedDate = pickedDate

            self.canBreak = canBreak

            self.lockStatus = lockStatus

            self.forwardShipmentStatus = forwardShipmentStatus

            self.currentShipmentStatus = currentShipmentStatus

            self.isFyndCoupon = isFyndCoupon

            self.platformLogo = platformLogo

            self.emailId = emailId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

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

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

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

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            items = try container.decode([[String: Any]].self, forKey: .items)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            emailId = try container.decode(String.self, forKey: .emailId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(emailId, forKey: .emailId)
        }
    }
}
