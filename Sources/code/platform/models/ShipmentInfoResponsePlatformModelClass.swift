

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var beneficiaryDetails: Bool?

        public var forwardShipmentStatus: [[String: Any]]?

        public var packagingType: String

        public var isFyndStore: String?

        public var status: ShipmentStatusData?

        public var shipmentQuantity: Int

        public var bagStatusHistory: [BagStatusHistory]?

        public var isPackagingOrder: Bool

        public var bags: OrderBags?

        public var vertical: String?

        public var canReturn: Bool?

        public var isFyndCoupon: Bool

        public var payments: ShipmentPayments?

        public var gstDetails: GST?

        public var deliveryStatus: [[String: Any]]

        public var fulfillingStore: FulfillingStore?

        public var lockStatus: String

        public var prices: Prices?

        public var enableTracking: Bool?

        public var billingDetails: UserDetailsData?

        public var kiranaStoreId: String?

        public var mid: String?

        public var statusProgress: Int

        public var coupon: [String: Any]?

        public var childNodes: [String]?

        public var forwardOrderStatus: [[String: Any]]?

        public var order: OrderDetailsData?

        public var emailId: String

        public var orderStatus: [String: Any]

        public var forwardTrackingList: [[String: Any]]?

        public var paymentMode: String

        public var deliverySlot: [String: Any]

        public var bankData: [String: Any]?

        public var affiliateShipmentId: String

        public var userId: String

        public var creditNoteId: String

        public var pickedDate: String

        public var orderCreatedTime: String?

        public var fyndstoreEmp: [String: Any]

        public var totalItems: Int?

        public var canCancel: Bool?

        public var dueDate: String?

        public var deliveryDetails: UserDetailsData?

        public var userAgent: String

        public var escalation: [String: Any]?

        public var userInfo: [String: Any]?

        public var isNotFyndSource: Bool

        public var invoice: [String: Any]

        public var isInvoiced: Bool

        public var currentShipmentStatus: [String: Any]

        public var securedDeliveryFlag: String?

        public var trackingUrl: String

        public var payButton: String?

        public var orderingStore: [String: Any]

        public var priorityText: String?

        public var goGreen: Bool?

        public var enableDpTracking: String

        public var isPdsr: String?

        public var journeyType: String

        public var shipmentId: String

        public var platformLogo: Bool

        public var orderType: String

        public var refundText: String?

        public var replacementDetails: String?

        public var company: [String: Any]

        public var items: [[String: Any]]

        public var canBreak: String

        public var refundDetails: [String: Any]?

        public var dpDetails: DPDetails?

        public var trackingList: [TrackingList]?

        public enum CodingKeys: String, CodingKey {
            case beneficiaryDetails = "beneficiary_details"

            case forwardShipmentStatus = "forward_shipment_status"

            case packagingType = "packaging_type"

            case isFyndStore = "is_fynd_store"

            case status

            case shipmentQuantity = "shipment_quantity"

            case bagStatusHistory = "bag_status_history"

            case isPackagingOrder = "is_packaging_order"

            case bags

            case vertical

            case canReturn = "can_return"

            case isFyndCoupon = "is_fynd_coupon"

            case payments

            case gstDetails = "gst_details"

            case deliveryStatus = "delivery_status"

            case fulfillingStore = "fulfilling_store"

            case lockStatus = "lock_status"

            case prices

            case enableTracking = "enable_tracking"

            case billingDetails = "billing_details"

            case kiranaStoreId = "kirana_store_id"

            case mid

            case statusProgress = "status_progress"

            case coupon

            case childNodes = "child_nodes"

            case forwardOrderStatus = "forward_order_status"

            case order

            case emailId = "email_id"

            case orderStatus = "order_status"

            case forwardTrackingList = "forward_tracking_list"

            case paymentMode = "payment_mode"

            case deliverySlot = "delivery_slot"

            case bankData = "bank_data"

            case affiliateShipmentId = "affiliate_shipment_id"

            case userId = "user_id"

            case creditNoteId = "credit_note_id"

            case pickedDate = "picked_date"

            case orderCreatedTime = "order_created_time"

            case fyndstoreEmp = "fyndstore_emp"

            case totalItems = "total_items"

            case canCancel = "can_cancel"

            case dueDate = "due_date"

            case deliveryDetails = "delivery_details"

            case userAgent = "user_agent"

            case escalation

            case userInfo = "user_info"

            case isNotFyndSource = "is_not_fynd_source"

            case invoice

            case isInvoiced = "is_invoiced"

            case currentShipmentStatus = "current_shipment_status"

            case securedDeliveryFlag = "secured_delivery_flag"

            case trackingUrl = "tracking_url"

            case payButton = "pay_button"

            case orderingStore = "ordering_store"

            case priorityText = "priority_text"

            case goGreen = "go_green"

            case enableDpTracking = "enable_dp_tracking"

            case isPdsr = "is_pdsr"

            case journeyType = "journey_type"

            case shipmentId = "shipment_id"

            case platformLogo = "platform_logo"

            case orderType = "order_type"

            case refundText = "refund_text"

            case replacementDetails = "replacement_details"

            case company

            case items

            case canBreak = "can_break"

            case refundDetails = "refund_details"

            case dpDetails = "dp_details"

            case trackingList = "tracking_list"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.beneficiaryDetails = beneficiaryDetails

            self.forwardShipmentStatus = forwardShipmentStatus

            self.packagingType = packagingType

            self.isFyndStore = isFyndStore

            self.status = status

            self.shipmentQuantity = shipmentQuantity

            self.bagStatusHistory = bagStatusHistory

            self.isPackagingOrder = isPackagingOrder

            self.bags = bags

            self.vertical = vertical

            self.canReturn = canReturn

            self.isFyndCoupon = isFyndCoupon

            self.payments = payments

            self.gstDetails = gstDetails

            self.deliveryStatus = deliveryStatus

            self.fulfillingStore = fulfillingStore

            self.lockStatus = lockStatus

            self.prices = prices

            self.enableTracking = enableTracking

            self.billingDetails = billingDetails

            self.kiranaStoreId = kiranaStoreId

            self.mid = mid

            self.statusProgress = statusProgress

            self.coupon = coupon

            self.childNodes = childNodes

            self.forwardOrderStatus = forwardOrderStatus

            self.order = order

            self.emailId = emailId

            self.orderStatus = orderStatus

            self.forwardTrackingList = forwardTrackingList

            self.paymentMode = paymentMode

            self.deliverySlot = deliverySlot

            self.bankData = bankData

            self.affiliateShipmentId = affiliateShipmentId

            self.userId = userId

            self.creditNoteId = creditNoteId

            self.pickedDate = pickedDate

            self.orderCreatedTime = orderCreatedTime

            self.fyndstoreEmp = fyndstoreEmp

            self.totalItems = totalItems

            self.canCancel = canCancel

            self.dueDate = dueDate

            self.deliveryDetails = deliveryDetails

            self.userAgent = userAgent

            self.escalation = escalation

            self.userInfo = userInfo

            self.isNotFyndSource = isNotFyndSource

            self.invoice = invoice

            self.isInvoiced = isInvoiced

            self.currentShipmentStatus = currentShipmentStatus

            self.securedDeliveryFlag = securedDeliveryFlag

            self.trackingUrl = trackingUrl

            self.payButton = payButton

            self.orderingStore = orderingStore

            self.priorityText = priorityText

            self.goGreen = goGreen

            self.enableDpTracking = enableDpTracking

            self.isPdsr = isPdsr

            self.journeyType = journeyType

            self.shipmentId = shipmentId

            self.platformLogo = platformLogo

            self.orderType = orderType

            self.refundText = refundText

            self.replacementDetails = replacementDetails

            self.company = company

            self.items = items

            self.canBreak = canBreak

            self.refundDetails = refundDetails

            self.dpDetails = dpDetails

            self.trackingList = trackingList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

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

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

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

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

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

            emailId = try container.decode(String.self, forKey: .emailId)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            userId = try container.decode(String.self, forKey: .userId)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                dueDate = try container.decode(String.self, forKey: .dueDate)

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

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

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

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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

            company = try container.decode([String: Any].self, forKey: .company)

            items = try container.decode([[String: Any]].self, forKey: .items)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)
        }
    }
}
