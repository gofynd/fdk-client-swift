

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var payButton: String?

        public var userAgent: String

        public var platformLogo: Bool

        public var forwardShipmentStatus: [[String: Any]]?

        public var orderStatus: [String: Any]

        public var priorityText: String?

        public var journeyType: String

        public var dueDate: String?

        public var userInfo: [String: Any]?

        public var deliveryDetails: UserDetailsData?

        public var bankData: [String: Any]?

        public var bags: OrderBags?

        public var paymentMode: String

        public var packagingType: String

        public var canCancel: Bool?

        public var shipmentId: String

        public var pickedDate: String

        public var isFyndCoupon: Bool

        public var invoice: [String: Any]

        public var isPdsr: String?

        public var order: OrderDetailsData?

        public var emailId: String

        public var lockStatus: String

        public var isPackagingOrder: Bool

        public var fyndstoreEmp: [String: Any]

        public var shipmentQuantity: Int

        public var billingDetails: UserDetailsData?

        public var orderingStore: [String: Any]

        public var totalItems: Int?

        public var orderCreatedTime: String?

        public var prices: Prices?

        public var beneficiaryDetails: Bool?

        public var company: [String: Any]

        public var escalation: [String: Any]?

        public var status: ShipmentStatusData?

        public var canBreak: String

        public var enableTracking: Bool?

        public var childNodes: [String]?

        public var kiranaStoreId: String?

        public var statusProgress: Int

        public var canReturn: Bool?

        public var deliveryStatus: [[String: Any]]

        public var replacementDetails: String?

        public var vertical: String?

        public var payments: ShipmentPayments?

        public var isInvoiced: Bool

        public var goGreen: Bool?

        public var deliverySlot: [String: Any]

        public var forwardTrackingList: [[String: Any]]?

        public var trackingList: [TrackingList]?

        public var isNotFyndSource: Bool

        public var trackingUrl: String

        public var gstDetails: GST?

        public var currentShipmentStatus: [String: Any]

        public var items: [[String: Any]]

        public var securedDeliveryFlag: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var userId: String

        public var bagStatusHistory: [BagStatusHistory]?

        public var affiliateShipmentId: String

        public var orderType: String

        public var dpDetails: DPDetails?

        public var creditNoteId: String

        public var enableDpTracking: String

        public var refundText: String?

        public var refundDetails: [String: Any]?

        public var isFyndStore: String?

        public var mid: String?

        public var fulfillingStore: FulfillingStore?

        public var coupon: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case payButton = "pay_button"

            case userAgent = "user_agent"

            case platformLogo = "platform_logo"

            case forwardShipmentStatus = "forward_shipment_status"

            case orderStatus = "order_status"

            case priorityText = "priority_text"

            case journeyType = "journey_type"

            case dueDate = "due_date"

            case userInfo = "user_info"

            case deliveryDetails = "delivery_details"

            case bankData = "bank_data"

            case bags

            case paymentMode = "payment_mode"

            case packagingType = "packaging_type"

            case canCancel = "can_cancel"

            case shipmentId = "shipment_id"

            case pickedDate = "picked_date"

            case isFyndCoupon = "is_fynd_coupon"

            case invoice

            case isPdsr = "is_pdsr"

            case order

            case emailId = "email_id"

            case lockStatus = "lock_status"

            case isPackagingOrder = "is_packaging_order"

            case fyndstoreEmp = "fyndstore_emp"

            case shipmentQuantity = "shipment_quantity"

            case billingDetails = "billing_details"

            case orderingStore = "ordering_store"

            case totalItems = "total_items"

            case orderCreatedTime = "order_created_time"

            case prices

            case beneficiaryDetails = "beneficiary_details"

            case company

            case escalation

            case status

            case canBreak = "can_break"

            case enableTracking = "enable_tracking"

            case childNodes = "child_nodes"

            case kiranaStoreId = "kirana_store_id"

            case statusProgress = "status_progress"

            case canReturn = "can_return"

            case deliveryStatus = "delivery_status"

            case replacementDetails = "replacement_details"

            case vertical

            case payments

            case isInvoiced = "is_invoiced"

            case goGreen = "go_green"

            case deliverySlot = "delivery_slot"

            case forwardTrackingList = "forward_tracking_list"

            case trackingList = "tracking_list"

            case isNotFyndSource = "is_not_fynd_source"

            case trackingUrl = "tracking_url"

            case gstDetails = "gst_details"

            case currentShipmentStatus = "current_shipment_status"

            case items

            case securedDeliveryFlag = "secured_delivery_flag"

            case forwardOrderStatus = "forward_order_status"

            case userId = "user_id"

            case bagStatusHistory = "bag_status_history"

            case affiliateShipmentId = "affiliate_shipment_id"

            case orderType = "order_type"

            case dpDetails = "dp_details"

            case creditNoteId = "credit_note_id"

            case enableDpTracking = "enable_dp_tracking"

            case refundText = "refund_text"

            case refundDetails = "refund_details"

            case isFyndStore = "is_fynd_store"

            case mid

            case fulfillingStore = "fulfilling_store"

            case coupon
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.payButton = payButton

            self.userAgent = userAgent

            self.platformLogo = platformLogo

            self.forwardShipmentStatus = forwardShipmentStatus

            self.orderStatus = orderStatus

            self.priorityText = priorityText

            self.journeyType = journeyType

            self.dueDate = dueDate

            self.userInfo = userInfo

            self.deliveryDetails = deliveryDetails

            self.bankData = bankData

            self.bags = bags

            self.paymentMode = paymentMode

            self.packagingType = packagingType

            self.canCancel = canCancel

            self.shipmentId = shipmentId

            self.pickedDate = pickedDate

            self.isFyndCoupon = isFyndCoupon

            self.invoice = invoice

            self.isPdsr = isPdsr

            self.order = order

            self.emailId = emailId

            self.lockStatus = lockStatus

            self.isPackagingOrder = isPackagingOrder

            self.fyndstoreEmp = fyndstoreEmp

            self.shipmentQuantity = shipmentQuantity

            self.billingDetails = billingDetails

            self.orderingStore = orderingStore

            self.totalItems = totalItems

            self.orderCreatedTime = orderCreatedTime

            self.prices = prices

            self.beneficiaryDetails = beneficiaryDetails

            self.company = company

            self.escalation = escalation

            self.status = status

            self.canBreak = canBreak

            self.enableTracking = enableTracking

            self.childNodes = childNodes

            self.kiranaStoreId = kiranaStoreId

            self.statusProgress = statusProgress

            self.canReturn = canReturn

            self.deliveryStatus = deliveryStatus

            self.replacementDetails = replacementDetails

            self.vertical = vertical

            self.payments = payments

            self.isInvoiced = isInvoiced

            self.goGreen = goGreen

            self.deliverySlot = deliverySlot

            self.forwardTrackingList = forwardTrackingList

            self.trackingList = trackingList

            self.isNotFyndSource = isNotFyndSource

            self.trackingUrl = trackingUrl

            self.gstDetails = gstDetails

            self.currentShipmentStatus = currentShipmentStatus

            self.items = items

            self.securedDeliveryFlag = securedDeliveryFlag

            self.forwardOrderStatus = forwardOrderStatus

            self.userId = userId

            self.bagStatusHistory = bagStatusHistory

            self.affiliateShipmentId = affiliateShipmentId

            self.orderType = orderType

            self.dpDetails = dpDetails

            self.creditNoteId = creditNoteId

            self.enableDpTracking = enableDpTracking

            self.refundText = refundText

            self.refundDetails = refundDetails

            self.isFyndStore = isFyndStore

            self.mid = mid

            self.fulfillingStore = fulfillingStore

            self.coupon = coupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

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

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

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

            userId = try container.decode(String.self, forKey: .userId)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(coupon, forKey: .coupon)
        }
    }
}
