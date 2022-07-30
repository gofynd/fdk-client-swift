

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var affiliateShipmentId: String

        public var billingDetails: UserDetailsData?

        public var orderingStore: [String: Any]

        public var shipmentQuantity: Int

        public var isFyndCoupon: Bool

        public var priorityText: String?

        public var isNotFyndSource: Bool

        public var items: [[String: Any]]

        public var childNodes: [String]?

        public var forwardOrderStatus: [[String: Any]]?

        public var dpDetails: DPDetails?

        public var deliveryStatus: [[String: Any]]

        public var pickedDate: String

        public var platformLogo: Bool

        public var currentShipmentStatus: [String: Any]

        public var fulfillingStore: FulfillingStore?

        public var creditNoteId: String

        public var bagStatusHistory: [BagStatusHistory]?

        public var invoice: [String: Any]

        public var status: ShipmentStatusData?

        public var securedDeliveryFlag: String?

        public var trackingUrl: String

        public var isFyndStore: String?

        public var bankData: [String: Any]?

        public var trackingList: [TrackingList]?

        public var orderStatus: [String: Any]

        public var userId: String

        public var canCancel: Bool?

        public var enableDpTracking: String

        public var isPackagingOrder: Bool

        public var orderType: String

        public var enableTracking: Bool?

        public var dueDate: String?

        public var refundDetails: [String: Any]?

        public var shipmentId: String

        public var refundText: String?

        public var canReturn: Bool?

        public var userAgent: String

        public var emailId: String

        public var userInfo: [String: Any]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var goGreen: Bool?

        public var lockStatus: String

        public var order: OrderDetailsData?

        public var vertical: String?

        public var escalation: [String: Any]?

        public var forwardTrackingList: [[String: Any]]?

        public var orderCreatedTime: String?

        public var company: [String: Any]

        public var statusProgress: Int

        public var bags: OrderBags?

        public var gstDetails: GST?

        public var mid: String?

        public var journeyType: String

        public var deliverySlot: [String: Any]

        public var prices: Prices?

        public var isInvoiced: Bool

        public var paymentMode: String

        public var replacementDetails: String?

        public var kiranaStoreId: String?

        public var packagingType: String

        public var payButton: String?

        public var beneficiaryDetails: Bool?

        public var isPdsr: String?

        public var coupon: [String: Any]?

        public var totalItems: Int?

        public var canBreak: String

        public var deliveryDetails: UserDetailsData?

        public var fyndstoreEmp: [String: Any]

        public var payments: ShipmentPayments?

        public enum CodingKeys: String, CodingKey {
            case affiliateShipmentId = "affiliate_shipment_id"

            case billingDetails = "billing_details"

            case orderingStore = "ordering_store"

            case shipmentQuantity = "shipment_quantity"

            case isFyndCoupon = "is_fynd_coupon"

            case priorityText = "priority_text"

            case isNotFyndSource = "is_not_fynd_source"

            case items

            case childNodes = "child_nodes"

            case forwardOrderStatus = "forward_order_status"

            case dpDetails = "dp_details"

            case deliveryStatus = "delivery_status"

            case pickedDate = "picked_date"

            case platformLogo = "platform_logo"

            case currentShipmentStatus = "current_shipment_status"

            case fulfillingStore = "fulfilling_store"

            case creditNoteId = "credit_note_id"

            case bagStatusHistory = "bag_status_history"

            case invoice

            case status

            case securedDeliveryFlag = "secured_delivery_flag"

            case trackingUrl = "tracking_url"

            case isFyndStore = "is_fynd_store"

            case bankData = "bank_data"

            case trackingList = "tracking_list"

            case orderStatus = "order_status"

            case userId = "user_id"

            case canCancel = "can_cancel"

            case enableDpTracking = "enable_dp_tracking"

            case isPackagingOrder = "is_packaging_order"

            case orderType = "order_type"

            case enableTracking = "enable_tracking"

            case dueDate = "due_date"

            case refundDetails = "refund_details"

            case shipmentId = "shipment_id"

            case refundText = "refund_text"

            case canReturn = "can_return"

            case userAgent = "user_agent"

            case emailId = "email_id"

            case userInfo = "user_info"

            case forwardShipmentStatus = "forward_shipment_status"

            case goGreen = "go_green"

            case lockStatus = "lock_status"

            case order

            case vertical

            case escalation

            case forwardTrackingList = "forward_tracking_list"

            case orderCreatedTime = "order_created_time"

            case company

            case statusProgress = "status_progress"

            case bags

            case gstDetails = "gst_details"

            case mid

            case journeyType = "journey_type"

            case deliverySlot = "delivery_slot"

            case prices

            case isInvoiced = "is_invoiced"

            case paymentMode = "payment_mode"

            case replacementDetails = "replacement_details"

            case kiranaStoreId = "kirana_store_id"

            case packagingType = "packaging_type"

            case payButton = "pay_button"

            case beneficiaryDetails = "beneficiary_details"

            case isPdsr = "is_pdsr"

            case coupon

            case totalItems = "total_items"

            case canBreak = "can_break"

            case deliveryDetails = "delivery_details"

            case fyndstoreEmp = "fyndstore_emp"

            case payments
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.affiliateShipmentId = affiliateShipmentId

            self.billingDetails = billingDetails

            self.orderingStore = orderingStore

            self.shipmentQuantity = shipmentQuantity

            self.isFyndCoupon = isFyndCoupon

            self.priorityText = priorityText

            self.isNotFyndSource = isNotFyndSource

            self.items = items

            self.childNodes = childNodes

            self.forwardOrderStatus = forwardOrderStatus

            self.dpDetails = dpDetails

            self.deliveryStatus = deliveryStatus

            self.pickedDate = pickedDate

            self.platformLogo = platformLogo

            self.currentShipmentStatus = currentShipmentStatus

            self.fulfillingStore = fulfillingStore

            self.creditNoteId = creditNoteId

            self.bagStatusHistory = bagStatusHistory

            self.invoice = invoice

            self.status = status

            self.securedDeliveryFlag = securedDeliveryFlag

            self.trackingUrl = trackingUrl

            self.isFyndStore = isFyndStore

            self.bankData = bankData

            self.trackingList = trackingList

            self.orderStatus = orderStatus

            self.userId = userId

            self.canCancel = canCancel

            self.enableDpTracking = enableDpTracking

            self.isPackagingOrder = isPackagingOrder

            self.orderType = orderType

            self.enableTracking = enableTracking

            self.dueDate = dueDate

            self.refundDetails = refundDetails

            self.shipmentId = shipmentId

            self.refundText = refundText

            self.canReturn = canReturn

            self.userAgent = userAgent

            self.emailId = emailId

            self.userInfo = userInfo

            self.forwardShipmentStatus = forwardShipmentStatus

            self.goGreen = goGreen

            self.lockStatus = lockStatus

            self.order = order

            self.vertical = vertical

            self.escalation = escalation

            self.forwardTrackingList = forwardTrackingList

            self.orderCreatedTime = orderCreatedTime

            self.company = company

            self.statusProgress = statusProgress

            self.bags = bags

            self.gstDetails = gstDetails

            self.mid = mid

            self.journeyType = journeyType

            self.deliverySlot = deliverySlot

            self.prices = prices

            self.isInvoiced = isInvoiced

            self.paymentMode = paymentMode

            self.replacementDetails = replacementDetails

            self.kiranaStoreId = kiranaStoreId

            self.packagingType = packagingType

            self.payButton = payButton

            self.beneficiaryDetails = beneficiaryDetails

            self.isPdsr = isPdsr

            self.coupon = coupon

            self.totalItems = totalItems

            self.canBreak = canBreak

            self.deliveryDetails = deliveryDetails

            self.fyndstoreEmp = fyndstoreEmp

            self.payments = payments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            items = try container.decode([[String: Any]].self, forKey: .items)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

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

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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

            userAgent = try container.decode(String.self, forKey: .userAgent)

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

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
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

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
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

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
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(payments, forKey: .payments)
        }
    }
}
