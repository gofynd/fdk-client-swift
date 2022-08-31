

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var replacementDetails: String?

        public var enableDpTracking: String

        public var invoice: [String: Any]

        public var enableTracking: Bool?

        public var shipmentQuantity: Int

        public var orderingStore: [String: Any]

        public var forwardOrderStatus: [[String: Any]]?

        public var userAgent: String

        public var fulfillingStore: FulfillingStore?

        public var bankData: [String: Any]?

        public var canCancel: Bool?

        public var refundText: String?

        public var status: ShipmentStatusData?

        public var childNodes: [String]?

        public var paymentMode: String

        public var currentShipmentStatus: [String: Any]

        public var trackingList: [TrackingList]?

        public var deliveryDetails: UserDetailsData?

        public var prices: Prices?

        public var dpDetails: DPDetails?

        public var beneficiaryDetails: Bool?

        public var shipmentId: String

        public var escalation: [String: Any]?

        public var isFyndStore: String?

        public var goGreen: Bool?

        public var securedDeliveryFlag: String?

        public var orderCreatedTime: String?

        public var isNotFyndSource: Bool

        public var isPackagingOrder: Bool

        public var canBreak: String

        public var forwardShipmentStatus: [[String: Any]]?

        public var gstDetails: GST?

        public var trackingUrl: String

        public var kiranaStoreId: String?

        public var mid: String?

        public var billingDetails: UserDetailsData?

        public var statusProgress: Int

        public var pickedDate: String

        public var priorityText: String?

        public var items: [[String: Any]]

        public var deliverySlot: [String: Any]

        public var coupon: [String: Any]?

        public var company: [String: Any]

        public var affiliateShipmentId: String

        public var forwardTrackingList: [[String: Any]]?

        public var lockStatus: String

        public var orderStatus: [String: Any]

        public var isInvoiced: Bool

        public var canReturn: Bool?

        public var userId: String

        public var refundDetails: [String: Any]?

        public var totalItems: Int?

        public var emailId: String

        public var fyndstoreEmp: [String: Any]

        public var deliveryStatus: [[String: Any]]

        public var vertical: String?

        public var order: OrderDetailsData?

        public var dueDate: String?

        public var creditNoteId: String

        public var isPdsr: String?

        public var packagingType: String

        public var payments: ShipmentPayments?

        public var orderType: String

        public var isFyndCoupon: Bool

        public var bags: OrderBags?

        public var platformLogo: Bool

        public var payButton: String?

        public var userInfo: [String: Any]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var journeyType: String

        public enum CodingKeys: String, CodingKey {
            case replacementDetails = "replacement_details"

            case enableDpTracking = "enable_dp_tracking"

            case invoice

            case enableTracking = "enable_tracking"

            case shipmentQuantity = "shipment_quantity"

            case orderingStore = "ordering_store"

            case forwardOrderStatus = "forward_order_status"

            case userAgent = "user_agent"

            case fulfillingStore = "fulfilling_store"

            case bankData = "bank_data"

            case canCancel = "can_cancel"

            case refundText = "refund_text"

            case status

            case childNodes = "child_nodes"

            case paymentMode = "payment_mode"

            case currentShipmentStatus = "current_shipment_status"

            case trackingList = "tracking_list"

            case deliveryDetails = "delivery_details"

            case prices

            case dpDetails = "dp_details"

            case beneficiaryDetails = "beneficiary_details"

            case shipmentId = "shipment_id"

            case escalation

            case isFyndStore = "is_fynd_store"

            case goGreen = "go_green"

            case securedDeliveryFlag = "secured_delivery_flag"

            case orderCreatedTime = "order_created_time"

            case isNotFyndSource = "is_not_fynd_source"

            case isPackagingOrder = "is_packaging_order"

            case canBreak = "can_break"

            case forwardShipmentStatus = "forward_shipment_status"

            case gstDetails = "gst_details"

            case trackingUrl = "tracking_url"

            case kiranaStoreId = "kirana_store_id"

            case mid

            case billingDetails = "billing_details"

            case statusProgress = "status_progress"

            case pickedDate = "picked_date"

            case priorityText = "priority_text"

            case items

            case deliverySlot = "delivery_slot"

            case coupon

            case company

            case affiliateShipmentId = "affiliate_shipment_id"

            case forwardTrackingList = "forward_tracking_list"

            case lockStatus = "lock_status"

            case orderStatus = "order_status"

            case isInvoiced = "is_invoiced"

            case canReturn = "can_return"

            case userId = "user_id"

            case refundDetails = "refund_details"

            case totalItems = "total_items"

            case emailId = "email_id"

            case fyndstoreEmp = "fyndstore_emp"

            case deliveryStatus = "delivery_status"

            case vertical

            case order

            case dueDate = "due_date"

            case creditNoteId = "credit_note_id"

            case isPdsr = "is_pdsr"

            case packagingType = "packaging_type"

            case payments

            case orderType = "order_type"

            case isFyndCoupon = "is_fynd_coupon"

            case bags

            case platformLogo = "platform_logo"

            case payButton = "pay_button"

            case userInfo = "user_info"

            case bagStatusHistory = "bag_status_history"

            case journeyType = "journey_type"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.replacementDetails = replacementDetails

            self.enableDpTracking = enableDpTracking

            self.invoice = invoice

            self.enableTracking = enableTracking

            self.shipmentQuantity = shipmentQuantity

            self.orderingStore = orderingStore

            self.forwardOrderStatus = forwardOrderStatus

            self.userAgent = userAgent

            self.fulfillingStore = fulfillingStore

            self.bankData = bankData

            self.canCancel = canCancel

            self.refundText = refundText

            self.status = status

            self.childNodes = childNodes

            self.paymentMode = paymentMode

            self.currentShipmentStatus = currentShipmentStatus

            self.trackingList = trackingList

            self.deliveryDetails = deliveryDetails

            self.prices = prices

            self.dpDetails = dpDetails

            self.beneficiaryDetails = beneficiaryDetails

            self.shipmentId = shipmentId

            self.escalation = escalation

            self.isFyndStore = isFyndStore

            self.goGreen = goGreen

            self.securedDeliveryFlag = securedDeliveryFlag

            self.orderCreatedTime = orderCreatedTime

            self.isNotFyndSource = isNotFyndSource

            self.isPackagingOrder = isPackagingOrder

            self.canBreak = canBreak

            self.forwardShipmentStatus = forwardShipmentStatus

            self.gstDetails = gstDetails

            self.trackingUrl = trackingUrl

            self.kiranaStoreId = kiranaStoreId

            self.mid = mid

            self.billingDetails = billingDetails

            self.statusProgress = statusProgress

            self.pickedDate = pickedDate

            self.priorityText = priorityText

            self.items = items

            self.deliverySlot = deliverySlot

            self.coupon = coupon

            self.company = company

            self.affiliateShipmentId = affiliateShipmentId

            self.forwardTrackingList = forwardTrackingList

            self.lockStatus = lockStatus

            self.orderStatus = orderStatus

            self.isInvoiced = isInvoiced

            self.canReturn = canReturn

            self.userId = userId

            self.refundDetails = refundDetails

            self.totalItems = totalItems

            self.emailId = emailId

            self.fyndstoreEmp = fyndstoreEmp

            self.deliveryStatus = deliveryStatus

            self.vertical = vertical

            self.order = order

            self.dueDate = dueDate

            self.creditNoteId = creditNoteId

            self.isPdsr = isPdsr

            self.packagingType = packagingType

            self.payments = payments

            self.orderType = orderType

            self.isFyndCoupon = isFyndCoupon

            self.bags = bags

            self.platformLogo = platformLogo

            self.payButton = payButton

            self.userInfo = userInfo

            self.bagStatusHistory = bagStatusHistory

            self.journeyType = journeyType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

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

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

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

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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

            emailId = try container.decode(String.self, forKey: .emailId)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

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
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
        }
    }
}
