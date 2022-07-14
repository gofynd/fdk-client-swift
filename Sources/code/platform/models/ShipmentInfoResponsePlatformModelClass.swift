

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var items: [[String: Any]]

        public var orderStatus: [String: Any]

        public var mid: String?

        public var currentShipmentStatus: [String: Any]

        public var status: ShipmentStatusData?

        public var deliveryStatus: [[String: Any]]

        public var packagingType: String

        public var canCancel: Bool?

        public var payButton: String?

        public var prices: Prices?

        public var isFyndStore: String?

        public var escalation: [String: Any]?

        public var company: [String: Any]

        public var affiliateShipmentId: String

        public var bagStatusHistory: [BagStatusHistory]?

        public var payments: ShipmentPayments?

        public var forwardTrackingList: [[String: Any]]?

        public var orderingStore: [String: Any]

        public var fyndstoreEmp: [String: Any]

        public var bankData: [String: Any]?

        public var bags: OrderBags?

        public var isPdsr: String?

        public var userInfo: [String: Any]?

        public var replacementDetails: String?

        public var refundDetails: [String: Any]?

        public var dpDetails: DPDetails?

        public var shipmentId: String

        public var priorityText: String?

        public var isInvoiced: Bool

        public var canReturn: Bool?

        public var deliverySlot: [String: Any]

        public var canBreak: String

        public var statusProgress: Int

        public var goGreen: Bool?

        public var dueDate: String?

        public var gstDetails: GST?

        public var coupon: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var invoice: [String: Any]

        public var enableDpTracking: String

        public var creditNoteId: String

        public var childNodes: [String]?

        public var isNotFyndSource: Bool

        public var securedDeliveryFlag: String?

        public var lockStatus: String

        public var orderCreatedTime: String?

        public var paymentMode: String

        public var isPackagingOrder: Bool

        public var platformLogo: Bool

        public var totalItems: Int?

        public var orderType: String

        public var order: OrderDetailsData?

        public var forwardShipmentStatus: [[String: Any]]?

        public var deliveryDetails: UserDetailsData?

        public var isFyndCoupon: Bool

        public var trackingUrl: String

        public var forwardOrderStatus: [[String: Any]]?

        public var shipmentQuantity: Int

        public var emailId: String

        public var trackingList: [TrackingList]?

        public var journeyType: String

        public var beneficiaryDetails: Bool?

        public var userAgent: String

        public var kiranaStoreId: String?

        public var userId: String

        public var vertical: String?

        public var enableTracking: Bool?

        public var pickedDate: String

        public var refundText: String?

        public var fulfillingStore: FulfillingStore?

        public enum CodingKeys: String, CodingKey {
            case items

            case orderStatus = "order_status"

            case mid

            case currentShipmentStatus = "current_shipment_status"

            case status

            case deliveryStatus = "delivery_status"

            case packagingType = "packaging_type"

            case canCancel = "can_cancel"

            case payButton = "pay_button"

            case prices

            case isFyndStore = "is_fynd_store"

            case escalation

            case company

            case affiliateShipmentId = "affiliate_shipment_id"

            case bagStatusHistory = "bag_status_history"

            case payments

            case forwardTrackingList = "forward_tracking_list"

            case orderingStore = "ordering_store"

            case fyndstoreEmp = "fyndstore_emp"

            case bankData = "bank_data"

            case bags

            case isPdsr = "is_pdsr"

            case userInfo = "user_info"

            case replacementDetails = "replacement_details"

            case refundDetails = "refund_details"

            case dpDetails = "dp_details"

            case shipmentId = "shipment_id"

            case priorityText = "priority_text"

            case isInvoiced = "is_invoiced"

            case canReturn = "can_return"

            case deliverySlot = "delivery_slot"

            case canBreak = "can_break"

            case statusProgress = "status_progress"

            case goGreen = "go_green"

            case dueDate = "due_date"

            case gstDetails = "gst_details"

            case coupon

            case billingDetails = "billing_details"

            case invoice

            case enableDpTracking = "enable_dp_tracking"

            case creditNoteId = "credit_note_id"

            case childNodes = "child_nodes"

            case isNotFyndSource = "is_not_fynd_source"

            case securedDeliveryFlag = "secured_delivery_flag"

            case lockStatus = "lock_status"

            case orderCreatedTime = "order_created_time"

            case paymentMode = "payment_mode"

            case isPackagingOrder = "is_packaging_order"

            case platformLogo = "platform_logo"

            case totalItems = "total_items"

            case orderType = "order_type"

            case order

            case forwardShipmentStatus = "forward_shipment_status"

            case deliveryDetails = "delivery_details"

            case isFyndCoupon = "is_fynd_coupon"

            case trackingUrl = "tracking_url"

            case forwardOrderStatus = "forward_order_status"

            case shipmentQuantity = "shipment_quantity"

            case emailId = "email_id"

            case trackingList = "tracking_list"

            case journeyType = "journey_type"

            case beneficiaryDetails = "beneficiary_details"

            case userAgent = "user_agent"

            case kiranaStoreId = "kirana_store_id"

            case userId = "user_id"

            case vertical

            case enableTracking = "enable_tracking"

            case pickedDate = "picked_date"

            case refundText = "refund_text"

            case fulfillingStore = "fulfilling_store"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.items = items

            self.orderStatus = orderStatus

            self.mid = mid

            self.currentShipmentStatus = currentShipmentStatus

            self.status = status

            self.deliveryStatus = deliveryStatus

            self.packagingType = packagingType

            self.canCancel = canCancel

            self.payButton = payButton

            self.prices = prices

            self.isFyndStore = isFyndStore

            self.escalation = escalation

            self.company = company

            self.affiliateShipmentId = affiliateShipmentId

            self.bagStatusHistory = bagStatusHistory

            self.payments = payments

            self.forwardTrackingList = forwardTrackingList

            self.orderingStore = orderingStore

            self.fyndstoreEmp = fyndstoreEmp

            self.bankData = bankData

            self.bags = bags

            self.isPdsr = isPdsr

            self.userInfo = userInfo

            self.replacementDetails = replacementDetails

            self.refundDetails = refundDetails

            self.dpDetails = dpDetails

            self.shipmentId = shipmentId

            self.priorityText = priorityText

            self.isInvoiced = isInvoiced

            self.canReturn = canReturn

            self.deliverySlot = deliverySlot

            self.canBreak = canBreak

            self.statusProgress = statusProgress

            self.goGreen = goGreen

            self.dueDate = dueDate

            self.gstDetails = gstDetails

            self.coupon = coupon

            self.billingDetails = billingDetails

            self.invoice = invoice

            self.enableDpTracking = enableDpTracking

            self.creditNoteId = creditNoteId

            self.childNodes = childNodes

            self.isNotFyndSource = isNotFyndSource

            self.securedDeliveryFlag = securedDeliveryFlag

            self.lockStatus = lockStatus

            self.orderCreatedTime = orderCreatedTime

            self.paymentMode = paymentMode

            self.isPackagingOrder = isPackagingOrder

            self.platformLogo = platformLogo

            self.totalItems = totalItems

            self.orderType = orderType

            self.order = order

            self.forwardShipmentStatus = forwardShipmentStatus

            self.deliveryDetails = deliveryDetails

            self.isFyndCoupon = isFyndCoupon

            self.trackingUrl = trackingUrl

            self.forwardOrderStatus = forwardOrderStatus

            self.shipmentQuantity = shipmentQuantity

            self.emailId = emailId

            self.trackingList = trackingList

            self.journeyType = journeyType

            self.beneficiaryDetails = beneficiaryDetails

            self.userAgent = userAgent

            self.kiranaStoreId = kiranaStoreId

            self.userId = userId

            self.vertical = vertical

            self.enableTracking = enableTracking

            self.pickedDate = pickedDate

            self.refundText = refundText

            self.fulfillingStore = fulfillingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([[String: Any]].self, forKey: .items)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                escalation = try container.decode([String: Any].self, forKey: .escalation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

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

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
        }
    }
}
