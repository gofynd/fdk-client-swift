

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var refundText: String?

        public var payments: ShipmentPayments?

        public var trackingUrl: String

        public var bags: OrderBags?

        public var forwardOrderStatus: [[String: Any]]?

        public var kiranaStoreId: String?

        public var isPackagingOrder: Bool

        public var order: OrderDetailsData?

        public var company: [String: Any]

        public var prices: Prices?

        public var goGreen: Bool?

        public var status: ShipmentStatusData?

        public var coupon: [String: Any]?

        public var shipmentId: String

        public var priorityText: String?

        public var orderCreatedTime: String?

        public var paymentMode: String

        public var beneficiaryDetails: Bool?

        public var payButton: String?

        public var trackingList: [TrackingList]?

        public var fyndstoreEmp: [String: Any]

        public var orderingStore: [String: Any]

        public var items: [[String: Any]]

        public var replacementDetails: String?

        public var forwardShipmentStatus: [[String: Any]]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var bankData: [String: Any]?

        public var isFyndStore: String?

        public var deliveryStatus: [[String: Any]]

        public var emailId: String

        public var orderType: String

        public var currentShipmentStatus: [String: Any]

        public var packagingType: String

        public var journeyType: String

        public var escalation: [String: Any]?

        public var isPdsr: String?

        public var childNodes: [String]?

        public var canCancel: Bool?

        public var totalItems: Int?

        public var canBreak: String

        public var statusProgress: Int

        public var forwardTrackingList: [[String: Any]]?

        public var vertical: String?

        public var mid: String?

        public var shipmentQuantity: Int

        public var invoice: [String: Any]

        public var deliveryDetails: UserDetailsData?

        public var enableDpTracking: String

        public var userInfo: [String: Any]?

        public var deliverySlot: [String: Any]

        public var securedDeliveryFlag: String?

        public var userId: String

        public var dpDetails: DPDetails?

        public var affiliateShipmentId: String

        public var dueDate: String?

        public var creditNoteId: String

        public var lockStatus: String

        public var billingDetails: UserDetailsData?

        public var refundDetails: [String: Any]?

        public var enableTracking: Bool?

        public var isInvoiced: Bool

        public var gstDetails: GST?

        public var platformLogo: Bool

        public var pickedDate: String

        public var isNotFyndSource: Bool

        public var canReturn: Bool?

        public var userAgent: String

        public var orderStatus: [String: Any]

        public var isFyndCoupon: Bool

        public var fulfillingStore: FulfillingStore?

        public enum CodingKeys: String, CodingKey {
            case refundText = "refund_text"

            case payments

            case trackingUrl = "tracking_url"

            case bags

            case forwardOrderStatus = "forward_order_status"

            case kiranaStoreId = "kirana_store_id"

            case isPackagingOrder = "is_packaging_order"

            case order

            case company

            case prices

            case goGreen = "go_green"

            case status

            case coupon

            case shipmentId = "shipment_id"

            case priorityText = "priority_text"

            case orderCreatedTime = "order_created_time"

            case paymentMode = "payment_mode"

            case beneficiaryDetails = "beneficiary_details"

            case payButton = "pay_button"

            case trackingList = "tracking_list"

            case fyndstoreEmp = "fyndstore_emp"

            case orderingStore = "ordering_store"

            case items

            case replacementDetails = "replacement_details"

            case forwardShipmentStatus = "forward_shipment_status"

            case bagStatusHistory = "bag_status_history"

            case bankData = "bank_data"

            case isFyndStore = "is_fynd_store"

            case deliveryStatus = "delivery_status"

            case emailId = "email_id"

            case orderType = "order_type"

            case currentShipmentStatus = "current_shipment_status"

            case packagingType = "packaging_type"

            case journeyType = "journey_type"

            case escalation

            case isPdsr = "is_pdsr"

            case childNodes = "child_nodes"

            case canCancel = "can_cancel"

            case totalItems = "total_items"

            case canBreak = "can_break"

            case statusProgress = "status_progress"

            case forwardTrackingList = "forward_tracking_list"

            case vertical

            case mid

            case shipmentQuantity = "shipment_quantity"

            case invoice

            case deliveryDetails = "delivery_details"

            case enableDpTracking = "enable_dp_tracking"

            case userInfo = "user_info"

            case deliverySlot = "delivery_slot"

            case securedDeliveryFlag = "secured_delivery_flag"

            case userId = "user_id"

            case dpDetails = "dp_details"

            case affiliateShipmentId = "affiliate_shipment_id"

            case dueDate = "due_date"

            case creditNoteId = "credit_note_id"

            case lockStatus = "lock_status"

            case billingDetails = "billing_details"

            case refundDetails = "refund_details"

            case enableTracking = "enable_tracking"

            case isInvoiced = "is_invoiced"

            case gstDetails = "gst_details"

            case platformLogo = "platform_logo"

            case pickedDate = "picked_date"

            case isNotFyndSource = "is_not_fynd_source"

            case canReturn = "can_return"

            case userAgent = "user_agent"

            case orderStatus = "order_status"

            case isFyndCoupon = "is_fynd_coupon"

            case fulfillingStore = "fulfilling_store"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.refundText = refundText

            self.payments = payments

            self.trackingUrl = trackingUrl

            self.bags = bags

            self.forwardOrderStatus = forwardOrderStatus

            self.kiranaStoreId = kiranaStoreId

            self.isPackagingOrder = isPackagingOrder

            self.order = order

            self.company = company

            self.prices = prices

            self.goGreen = goGreen

            self.status = status

            self.coupon = coupon

            self.shipmentId = shipmentId

            self.priorityText = priorityText

            self.orderCreatedTime = orderCreatedTime

            self.paymentMode = paymentMode

            self.beneficiaryDetails = beneficiaryDetails

            self.payButton = payButton

            self.trackingList = trackingList

            self.fyndstoreEmp = fyndstoreEmp

            self.orderingStore = orderingStore

            self.items = items

            self.replacementDetails = replacementDetails

            self.forwardShipmentStatus = forwardShipmentStatus

            self.bagStatusHistory = bagStatusHistory

            self.bankData = bankData

            self.isFyndStore = isFyndStore

            self.deliveryStatus = deliveryStatus

            self.emailId = emailId

            self.orderType = orderType

            self.currentShipmentStatus = currentShipmentStatus

            self.packagingType = packagingType

            self.journeyType = journeyType

            self.escalation = escalation

            self.isPdsr = isPdsr

            self.childNodes = childNodes

            self.canCancel = canCancel

            self.totalItems = totalItems

            self.canBreak = canBreak

            self.statusProgress = statusProgress

            self.forwardTrackingList = forwardTrackingList

            self.vertical = vertical

            self.mid = mid

            self.shipmentQuantity = shipmentQuantity

            self.invoice = invoice

            self.deliveryDetails = deliveryDetails

            self.enableDpTracking = enableDpTracking

            self.userInfo = userInfo

            self.deliverySlot = deliverySlot

            self.securedDeliveryFlag = securedDeliveryFlag

            self.userId = userId

            self.dpDetails = dpDetails

            self.affiliateShipmentId = affiliateShipmentId

            self.dueDate = dueDate

            self.creditNoteId = creditNoteId

            self.lockStatus = lockStatus

            self.billingDetails = billingDetails

            self.refundDetails = refundDetails

            self.enableTracking = enableTracking

            self.isInvoiced = isInvoiced

            self.gstDetails = gstDetails

            self.platformLogo = platformLogo

            self.pickedDate = pickedDate

            self.isNotFyndSource = isNotFyndSource

            self.canReturn = canReturn

            self.userAgent = userAgent

            self.orderStatus = orderStatus

            self.isFyndCoupon = isFyndCoupon

            self.fulfillingStore = fulfillingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

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
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            emailId = try container.decode(String.self, forKey: .emailId)

            orderType = try container.decode(String.self, forKey: .orderType)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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
                childNodes = try container.decode([String].self, forKey: .childNodes)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

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
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
        }
    }
}
