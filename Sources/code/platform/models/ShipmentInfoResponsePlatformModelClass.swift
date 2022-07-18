

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var goGreen: Bool?

        public var fulfillingStore: FulfillingStore?

        public var currentShipmentStatus: [String: Any]

        public var coupon: [String: Any]?

        public var platformLogo: Bool

        public var forwardTrackingList: [[String: Any]]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var vertical: String?

        public var childNodes: [String]?

        public var securedDeliveryFlag: String?

        public var creditNoteId: String

        public var userAgent: String

        public var canCancel: Bool?

        public var beneficiaryDetails: Bool?

        public var dpDetails: DPDetails?

        public var invoice: [String: Any]

        public var isFyndStore: String?

        public var payButton: String?

        public var order: OrderDetailsData?

        public var replacementDetails: String?

        public var isPdsr: String?

        public var orderingStore: [String: Any]

        public var paymentMode: String

        public var forwardShipmentStatus: [[String: Any]]?

        public var items: [[String: Any]]

        public var trackingUrl: String

        public var userId: String

        public var bankData: [String: Any]?

        public var packagingType: String

        public var isInvoiced: Bool

        public var orderCreatedTime: String?

        public var status: ShipmentStatusData?

        public var affiliateShipmentId: String

        public var refundDetails: [String: Any]?

        public var deliveryDetails: UserDetailsData?

        public var bags: OrderBags?

        public var userInfo: [String: Any]?

        public var priorityText: String?

        public var payments: ShipmentPayments?

        public var isFyndCoupon: Bool

        public var fyndstoreEmp: [String: Any]

        public var dueDate: String?

        public var deliverySlot: [String: Any]

        public var totalItems: Int?

        public var orderType: String

        public var pickedDate: String

        public var enableTracking: Bool?

        public var gstDetails: GST?

        public var deliveryStatus: [[String: Any]]

        public var isNotFyndSource: Bool

        public var canReturn: Bool?

        public var isPackagingOrder: Bool

        public var orderStatus: [String: Any]

        public var statusProgress: Int

        public var escalation: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var shipmentQuantity: Int

        public var mid: String?

        public var refundText: String?

        public var shipmentId: String

        public var company: [String: Any]

        public var prices: Prices?

        public var kiranaStoreId: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var journeyType: String

        public var trackingList: [TrackingList]?

        public var canBreak: String

        public var enableDpTracking: String

        public var lockStatus: String

        public var emailId: String

        public enum CodingKeys: String, CodingKey {
            case goGreen = "go_green"

            case fulfillingStore = "fulfilling_store"

            case currentShipmentStatus = "current_shipment_status"

            case coupon

            case platformLogo = "platform_logo"

            case forwardTrackingList = "forward_tracking_list"

            case bagStatusHistory = "bag_status_history"

            case vertical

            case childNodes = "child_nodes"

            case securedDeliveryFlag = "secured_delivery_flag"

            case creditNoteId = "credit_note_id"

            case userAgent = "user_agent"

            case canCancel = "can_cancel"

            case beneficiaryDetails = "beneficiary_details"

            case dpDetails = "dp_details"

            case invoice

            case isFyndStore = "is_fynd_store"

            case payButton = "pay_button"

            case order

            case replacementDetails = "replacement_details"

            case isPdsr = "is_pdsr"

            case orderingStore = "ordering_store"

            case paymentMode = "payment_mode"

            case forwardShipmentStatus = "forward_shipment_status"

            case items

            case trackingUrl = "tracking_url"

            case userId = "user_id"

            case bankData = "bank_data"

            case packagingType = "packaging_type"

            case isInvoiced = "is_invoiced"

            case orderCreatedTime = "order_created_time"

            case status

            case affiliateShipmentId = "affiliate_shipment_id"

            case refundDetails = "refund_details"

            case deliveryDetails = "delivery_details"

            case bags

            case userInfo = "user_info"

            case priorityText = "priority_text"

            case payments

            case isFyndCoupon = "is_fynd_coupon"

            case fyndstoreEmp = "fyndstore_emp"

            case dueDate = "due_date"

            case deliverySlot = "delivery_slot"

            case totalItems = "total_items"

            case orderType = "order_type"

            case pickedDate = "picked_date"

            case enableTracking = "enable_tracking"

            case gstDetails = "gst_details"

            case deliveryStatus = "delivery_status"

            case isNotFyndSource = "is_not_fynd_source"

            case canReturn = "can_return"

            case isPackagingOrder = "is_packaging_order"

            case orderStatus = "order_status"

            case statusProgress = "status_progress"

            case escalation

            case billingDetails = "billing_details"

            case shipmentQuantity = "shipment_quantity"

            case mid

            case refundText = "refund_text"

            case shipmentId = "shipment_id"

            case company

            case prices

            case kiranaStoreId = "kirana_store_id"

            case forwardOrderStatus = "forward_order_status"

            case journeyType = "journey_type"

            case trackingList = "tracking_list"

            case canBreak = "can_break"

            case enableDpTracking = "enable_dp_tracking"

            case lockStatus = "lock_status"

            case emailId = "email_id"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.goGreen = goGreen

            self.fulfillingStore = fulfillingStore

            self.currentShipmentStatus = currentShipmentStatus

            self.coupon = coupon

            self.platformLogo = platformLogo

            self.forwardTrackingList = forwardTrackingList

            self.bagStatusHistory = bagStatusHistory

            self.vertical = vertical

            self.childNodes = childNodes

            self.securedDeliveryFlag = securedDeliveryFlag

            self.creditNoteId = creditNoteId

            self.userAgent = userAgent

            self.canCancel = canCancel

            self.beneficiaryDetails = beneficiaryDetails

            self.dpDetails = dpDetails

            self.invoice = invoice

            self.isFyndStore = isFyndStore

            self.payButton = payButton

            self.order = order

            self.replacementDetails = replacementDetails

            self.isPdsr = isPdsr

            self.orderingStore = orderingStore

            self.paymentMode = paymentMode

            self.forwardShipmentStatus = forwardShipmentStatus

            self.items = items

            self.trackingUrl = trackingUrl

            self.userId = userId

            self.bankData = bankData

            self.packagingType = packagingType

            self.isInvoiced = isInvoiced

            self.orderCreatedTime = orderCreatedTime

            self.status = status

            self.affiliateShipmentId = affiliateShipmentId

            self.refundDetails = refundDetails

            self.deliveryDetails = deliveryDetails

            self.bags = bags

            self.userInfo = userInfo

            self.priorityText = priorityText

            self.payments = payments

            self.isFyndCoupon = isFyndCoupon

            self.fyndstoreEmp = fyndstoreEmp

            self.dueDate = dueDate

            self.deliverySlot = deliverySlot

            self.totalItems = totalItems

            self.orderType = orderType

            self.pickedDate = pickedDate

            self.enableTracking = enableTracking

            self.gstDetails = gstDetails

            self.deliveryStatus = deliveryStatus

            self.isNotFyndSource = isNotFyndSource

            self.canReturn = canReturn

            self.isPackagingOrder = isPackagingOrder

            self.orderStatus = orderStatus

            self.statusProgress = statusProgress

            self.escalation = escalation

            self.billingDetails = billingDetails

            self.shipmentQuantity = shipmentQuantity

            self.mid = mid

            self.refundText = refundText

            self.shipmentId = shipmentId

            self.company = company

            self.prices = prices

            self.kiranaStoreId = kiranaStoreId

            self.forwardOrderStatus = forwardOrderStatus

            self.journeyType = journeyType

            self.trackingList = trackingList

            self.canBreak = canBreak

            self.enableDpTracking = enableDpTracking

            self.lockStatus = lockStatus

            self.emailId = emailId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

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
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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
                payButton = try container.decode(String.self, forKey: .payButton)

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
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

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

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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
                bags = try container.decode(OrderBags.self, forKey: .bags)

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
                priorityText = try container.decode(String.self, forKey: .priorityText)

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

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            company = try container.decode([String: Any].self, forKey: .company)

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
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            emailId = try container.decode(String.self, forKey: .emailId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(emailId, forKey: .emailId)
        }
    }
}
