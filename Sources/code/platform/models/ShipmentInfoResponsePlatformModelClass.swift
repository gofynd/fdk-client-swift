

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var fulfillingStore: FulfillingStore?

        public var securedDeliveryFlag: String?

        public var bagStatusHistory: [BagStatusHistory]?

        public var totalItems: Int?

        public var goGreen: Bool?

        public var kiranaStoreId: String?

        public var statusProgress: Int

        public var isFyndStore: String?

        public var orderingStore: [String: Any]

        public var isNotFyndSource: Bool

        public var items: [[String: Any]]

        public var fyndstoreEmp: [String: Any]

        public var orderStatus: [String: Any]

        public var canCancel: Bool?

        public var prices: Prices?

        public var billingDetails: UserDetailsData?

        public var bankData: [String: Any]?

        public var isInvoiced: Bool

        public var deliverySlot: [String: Any]

        public var affiliateShipmentId: String

        public var pickedDate: String

        public var emailId: String

        public var company: [String: Any]

        public var userInfo: [String: Any]?

        public var invoice: [String: Any]

        public var trackingUrl: String

        public var userAgent: String

        public var replacementDetails: String?

        public var bags: OrderBags?

        public var canReturn: Bool?

        public var escalation: [String: Any]?

        public var canBreak: String

        public var refundDetails: [String: Any]?

        public var orderType: String

        public var isPdsr: String?

        public var paymentMode: String

        public var status: ShipmentStatusData?

        public var dpDetails: DPDetails?

        public var beneficiaryDetails: Bool?

        public var dueDate: String?

        public var forwardTrackingList: [[String: Any]]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var creditNoteId: String

        public var journeyType: String

        public var mid: String?

        public var priorityText: String?

        public var order: OrderDetailsData?

        public var isPackagingOrder: Bool

        public var currentShipmentStatus: [String: Any]

        public var shipmentQuantity: Int

        public var trackingList: [TrackingList]?

        public var coupon: [String: Any]?

        public var vertical: String?

        public var enableTracking: Bool?

        public var lockStatus: String

        public var enableDpTracking: String

        public var userId: String

        public var gstDetails: GST?

        public var payments: ShipmentPayments?

        public var deliveryStatus: [[String: Any]]

        public var childNodes: [String]?

        public var packagingType: String

        public var refundText: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var shipmentId: String

        public var payButton: String?

        public var platformLogo: Bool

        public var deliveryDetails: UserDetailsData?

        public var isFyndCoupon: Bool

        public var orderCreatedTime: String?

        public enum CodingKeys: String, CodingKey {
            case fulfillingStore = "fulfilling_store"

            case securedDeliveryFlag = "secured_delivery_flag"

            case bagStatusHistory = "bag_status_history"

            case totalItems = "total_items"

            case goGreen = "go_green"

            case kiranaStoreId = "kirana_store_id"

            case statusProgress = "status_progress"

            case isFyndStore = "is_fynd_store"

            case orderingStore = "ordering_store"

            case isNotFyndSource = "is_not_fynd_source"

            case items

            case fyndstoreEmp = "fyndstore_emp"

            case orderStatus = "order_status"

            case canCancel = "can_cancel"

            case prices

            case billingDetails = "billing_details"

            case bankData = "bank_data"

            case isInvoiced = "is_invoiced"

            case deliverySlot = "delivery_slot"

            case affiliateShipmentId = "affiliate_shipment_id"

            case pickedDate = "picked_date"

            case emailId = "email_id"

            case company

            case userInfo = "user_info"

            case invoice

            case trackingUrl = "tracking_url"

            case userAgent = "user_agent"

            case replacementDetails = "replacement_details"

            case bags

            case canReturn = "can_return"

            case escalation

            case canBreak = "can_break"

            case refundDetails = "refund_details"

            case orderType = "order_type"

            case isPdsr = "is_pdsr"

            case paymentMode = "payment_mode"

            case status

            case dpDetails = "dp_details"

            case beneficiaryDetails = "beneficiary_details"

            case dueDate = "due_date"

            case forwardTrackingList = "forward_tracking_list"

            case forwardShipmentStatus = "forward_shipment_status"

            case creditNoteId = "credit_note_id"

            case journeyType = "journey_type"

            case mid

            case priorityText = "priority_text"

            case order

            case isPackagingOrder = "is_packaging_order"

            case currentShipmentStatus = "current_shipment_status"

            case shipmentQuantity = "shipment_quantity"

            case trackingList = "tracking_list"

            case coupon

            case vertical

            case enableTracking = "enable_tracking"

            case lockStatus = "lock_status"

            case enableDpTracking = "enable_dp_tracking"

            case userId = "user_id"

            case gstDetails = "gst_details"

            case payments

            case deliveryStatus = "delivery_status"

            case childNodes = "child_nodes"

            case packagingType = "packaging_type"

            case refundText = "refund_text"

            case forwardOrderStatus = "forward_order_status"

            case shipmentId = "shipment_id"

            case payButton = "pay_button"

            case platformLogo = "platform_logo"

            case deliveryDetails = "delivery_details"

            case isFyndCoupon = "is_fynd_coupon"

            case orderCreatedTime = "order_created_time"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.fulfillingStore = fulfillingStore

            self.securedDeliveryFlag = securedDeliveryFlag

            self.bagStatusHistory = bagStatusHistory

            self.totalItems = totalItems

            self.goGreen = goGreen

            self.kiranaStoreId = kiranaStoreId

            self.statusProgress = statusProgress

            self.isFyndStore = isFyndStore

            self.orderingStore = orderingStore

            self.isNotFyndSource = isNotFyndSource

            self.items = items

            self.fyndstoreEmp = fyndstoreEmp

            self.orderStatus = orderStatus

            self.canCancel = canCancel

            self.prices = prices

            self.billingDetails = billingDetails

            self.bankData = bankData

            self.isInvoiced = isInvoiced

            self.deliverySlot = deliverySlot

            self.affiliateShipmentId = affiliateShipmentId

            self.pickedDate = pickedDate

            self.emailId = emailId

            self.company = company

            self.userInfo = userInfo

            self.invoice = invoice

            self.trackingUrl = trackingUrl

            self.userAgent = userAgent

            self.replacementDetails = replacementDetails

            self.bags = bags

            self.canReturn = canReturn

            self.escalation = escalation

            self.canBreak = canBreak

            self.refundDetails = refundDetails

            self.orderType = orderType

            self.isPdsr = isPdsr

            self.paymentMode = paymentMode

            self.status = status

            self.dpDetails = dpDetails

            self.beneficiaryDetails = beneficiaryDetails

            self.dueDate = dueDate

            self.forwardTrackingList = forwardTrackingList

            self.forwardShipmentStatus = forwardShipmentStatus

            self.creditNoteId = creditNoteId

            self.journeyType = journeyType

            self.mid = mid

            self.priorityText = priorityText

            self.order = order

            self.isPackagingOrder = isPackagingOrder

            self.currentShipmentStatus = currentShipmentStatus

            self.shipmentQuantity = shipmentQuantity

            self.trackingList = trackingList

            self.coupon = coupon

            self.vertical = vertical

            self.enableTracking = enableTracking

            self.lockStatus = lockStatus

            self.enableDpTracking = enableDpTracking

            self.userId = userId

            self.gstDetails = gstDetails

            self.payments = payments

            self.deliveryStatus = deliveryStatus

            self.childNodes = childNodes

            self.packagingType = packagingType

            self.refundText = refundText

            self.forwardOrderStatus = forwardOrderStatus

            self.shipmentId = shipmentId

            self.payButton = payButton

            self.platformLogo = platformLogo

            self.deliveryDetails = deliveryDetails

            self.isFyndCoupon = isFyndCoupon

            self.orderCreatedTime = orderCreatedTime
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            items = try container.decode([[String: Any]].self, forKey: .items)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            emailId = try container.decode(String.self, forKey: .emailId)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

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

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                payButton = try container.decode(String.self, forKey: .payButton)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)
        }
    }
}
