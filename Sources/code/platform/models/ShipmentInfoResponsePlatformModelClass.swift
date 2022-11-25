

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var forwardOrderStatus: [[String: Any]]?

        public var beneficiaryDetails: Bool?

        public var pickedDate: String

        public var trackingUrl: String

        public var shipmentId: String

        public var coupon: [String: Any]?

        public var isNotFyndSource: Bool

        public var dpDetails: DPDetails?

        public var enableTracking: Bool?

        public var deliveryDetails: UserDetailsData?

        public var isPdsr: String?

        public var userInfo: [String: Any]?

        public var orderingStore: [String: Any]

        public var fyndstoreEmp: [String: Any]

        public var canBreak: String

        public var orderStatus: [String: Any]

        public var bankData: [String: Any]?

        public var isFyndCoupon: Bool

        public var canCancel: Bool?

        public var trackingList: [TrackingList]?

        public var orderType: String

        public var userAgent: String

        public var currentShipmentStatus: [String: Any]

        public var canReturn: Bool?

        public var billingDetails: UserDetailsData?

        public var vertical: String?

        public var deliveryStatus: [[String: Any]]

        public var lockStatus: String

        public var deliverySlot: [String: Any]

        public var company: [String: Any]

        public var packagingType: String

        public var mid: String?

        public var goGreen: Bool?

        public var gstDetails: GST?

        public var priorityText: String?

        public var bagStatusHistory: [BagStatusHistory]?

        public var status: ShipmentStatusData?

        public var isFyndStore: String?

        public var totalItems: Int?

        public var enableDpTracking: String

        public var childNodes: [String]?

        public var items: [[String: Any]]

        public var isPackagingOrder: Bool

        public var paymentMode: String

        public var escalation: [String: Any]?

        public var securedDeliveryFlag: String?

        public var order: OrderDetailsData?

        public var payButton: String?

        public var payments: ShipmentPayments?

        public var creditNoteId: String

        public var refundDetails: [String: Any]?

        public var forwardTrackingList: [[String: Any]]?

        public var shipmentQuantity: Int

        public var journeyType: String

        public var kiranaStoreId: String?

        public var dueDate: String?

        public var emailId: String

        public var invoice: [String: Any]

        public var userId: String

        public var replacementDetails: String?

        public var affiliateShipmentId: String

        public var isInvoiced: Bool

        public var statusProgress: Int

        public var forwardShipmentStatus: [[String: Any]]?

        public var orderCreatedTime: String?

        public var platformLogo: Bool

        public var prices: Prices?

        public var fulfillingStore: FulfillingStore?

        public var bags: OrderBags?

        public var refundText: String?

        public enum CodingKeys: String, CodingKey {
            case forwardOrderStatus = "forward_order_status"

            case beneficiaryDetails = "beneficiary_details"

            case pickedDate = "picked_date"

            case trackingUrl = "tracking_url"

            case shipmentId = "shipment_id"

            case coupon

            case isNotFyndSource = "is_not_fynd_source"

            case dpDetails = "dp_details"

            case enableTracking = "enable_tracking"

            case deliveryDetails = "delivery_details"

            case isPdsr = "is_pdsr"

            case userInfo = "user_info"

            case orderingStore = "ordering_store"

            case fyndstoreEmp = "fyndstore_emp"

            case canBreak = "can_break"

            case orderStatus = "order_status"

            case bankData = "bank_data"

            case isFyndCoupon = "is_fynd_coupon"

            case canCancel = "can_cancel"

            case trackingList = "tracking_list"

            case orderType = "order_type"

            case userAgent = "user_agent"

            case currentShipmentStatus = "current_shipment_status"

            case canReturn = "can_return"

            case billingDetails = "billing_details"

            case vertical

            case deliveryStatus = "delivery_status"

            case lockStatus = "lock_status"

            case deliverySlot = "delivery_slot"

            case company

            case packagingType = "packaging_type"

            case mid

            case goGreen = "go_green"

            case gstDetails = "gst_details"

            case priorityText = "priority_text"

            case bagStatusHistory = "bag_status_history"

            case status

            case isFyndStore = "is_fynd_store"

            case totalItems = "total_items"

            case enableDpTracking = "enable_dp_tracking"

            case childNodes = "child_nodes"

            case items

            case isPackagingOrder = "is_packaging_order"

            case paymentMode = "payment_mode"

            case escalation

            case securedDeliveryFlag = "secured_delivery_flag"

            case order

            case payButton = "pay_button"

            case payments

            case creditNoteId = "credit_note_id"

            case refundDetails = "refund_details"

            case forwardTrackingList = "forward_tracking_list"

            case shipmentQuantity = "shipment_quantity"

            case journeyType = "journey_type"

            case kiranaStoreId = "kirana_store_id"

            case dueDate = "due_date"

            case emailId = "email_id"

            case invoice

            case userId = "user_id"

            case replacementDetails = "replacement_details"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isInvoiced = "is_invoiced"

            case statusProgress = "status_progress"

            case forwardShipmentStatus = "forward_shipment_status"

            case orderCreatedTime = "order_created_time"

            case platformLogo = "platform_logo"

            case prices

            case fulfillingStore = "fulfilling_store"

            case bags

            case refundText = "refund_text"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.forwardOrderStatus = forwardOrderStatus

            self.beneficiaryDetails = beneficiaryDetails

            self.pickedDate = pickedDate

            self.trackingUrl = trackingUrl

            self.shipmentId = shipmentId

            self.coupon = coupon

            self.isNotFyndSource = isNotFyndSource

            self.dpDetails = dpDetails

            self.enableTracking = enableTracking

            self.deliveryDetails = deliveryDetails

            self.isPdsr = isPdsr

            self.userInfo = userInfo

            self.orderingStore = orderingStore

            self.fyndstoreEmp = fyndstoreEmp

            self.canBreak = canBreak

            self.orderStatus = orderStatus

            self.bankData = bankData

            self.isFyndCoupon = isFyndCoupon

            self.canCancel = canCancel

            self.trackingList = trackingList

            self.orderType = orderType

            self.userAgent = userAgent

            self.currentShipmentStatus = currentShipmentStatus

            self.canReturn = canReturn

            self.billingDetails = billingDetails

            self.vertical = vertical

            self.deliveryStatus = deliveryStatus

            self.lockStatus = lockStatus

            self.deliverySlot = deliverySlot

            self.company = company

            self.packagingType = packagingType

            self.mid = mid

            self.goGreen = goGreen

            self.gstDetails = gstDetails

            self.priorityText = priorityText

            self.bagStatusHistory = bagStatusHistory

            self.status = status

            self.isFyndStore = isFyndStore

            self.totalItems = totalItems

            self.enableDpTracking = enableDpTracking

            self.childNodes = childNodes

            self.items = items

            self.isPackagingOrder = isPackagingOrder

            self.paymentMode = paymentMode

            self.escalation = escalation

            self.securedDeliveryFlag = securedDeliveryFlag

            self.order = order

            self.payButton = payButton

            self.payments = payments

            self.creditNoteId = creditNoteId

            self.refundDetails = refundDetails

            self.forwardTrackingList = forwardTrackingList

            self.shipmentQuantity = shipmentQuantity

            self.journeyType = journeyType

            self.kiranaStoreId = kiranaStoreId

            self.dueDate = dueDate

            self.emailId = emailId

            self.invoice = invoice

            self.userId = userId

            self.replacementDetails = replacementDetails

            self.affiliateShipmentId = affiliateShipmentId

            self.isInvoiced = isInvoiced

            self.statusProgress = statusProgress

            self.forwardShipmentStatus = forwardShipmentStatus

            self.orderCreatedTime = orderCreatedTime

            self.platformLogo = platformLogo

            self.prices = prices

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.refundText = refundText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            company = try container.decode([String: Any].self, forKey: .company)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

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
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            journeyType = try container.decode(String.self, forKey: .journeyType)

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

            emailId = try container.decode(String.self, forKey: .emailId)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

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

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                bags = try container.decode(OrderBags.self, forKey: .bags)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(refundText, forKey: .refundText)
        }
    }
}
