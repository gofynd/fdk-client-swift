

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var escalation: [String: Any]?

        public var bankData: [String: Any]?

        public var priorityText: String?

        public var payButton: String?

        public var enableTracking: Bool?

        public var forwardOrderStatus: [[String: Any]]?

        public var fulfillingStore: FulfillingStore?

        public var securedDeliveryFlag: String?

        public var dpDetails: DPDetails?

        public var prices: Prices?

        public var gstDetails: GST?

        public var packagingType: String

        public var refundDetails: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var isNotFyndSource: Bool

        public var status: ShipmentStatusData?

        public var kiranaStoreId: String?

        public var deliveryDetails: UserDetailsData?

        public var userAgent: String

        public var company: [String: Any]

        public var affiliateShipmentId: String

        public var enableDpTracking: String

        public var trackingUrl: String

        public var userInfo: [String: Any]?

        public var items: [[String: Any]]

        public var fyndstoreEmp: [String: Any]

        public var journeyType: String

        public var deliveryStatus: [[String: Any]]

        public var isFyndCoupon: Bool

        public var totalItems: Int?

        public var paymentMode: String

        public var lockStatus: String

        public var beneficiaryDetails: Bool?

        public var orderType: String

        public var statusProgress: Int

        public var bags: OrderBags?

        public var orderCreatedTime: String?

        public var isPdsr: String?

        public var userId: String

        public var canCancel: Bool?

        public var refundText: String?

        public var goGreen: Bool?

        public var deliverySlot: [String: Any]

        public var orderingStore: [String: Any]

        public var dueDate: String?

        public var bagStatusHistory: [BagStatusHistory]?

        public var canBreak: String

        public var trackingList: [TrackingList]?

        public var isPackagingOrder: Bool

        public var platformLogo: Bool

        public var shipmentId: String

        public var isInvoiced: Bool

        public var mid: String?

        public var order: OrderDetailsData?

        public var orderStatus: [String: Any]

        public var vertical: String?

        public var invoice: [String: Any]

        public var canReturn: Bool?

        public var pickedDate: String

        public var replacementDetails: String?

        public var coupon: [String: Any]?

        public var isFyndStore: String?

        public var forwardShipmentStatus: [[String: Any]]?

        public var shipmentQuantity: Int

        public var childNodes: [String]?

        public var forwardTrackingList: [[String: Any]]?

        public var payments: ShipmentPayments?

        public var creditNoteId: String

        public var emailId: String

        public var currentShipmentStatus: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case escalation

            case bankData = "bank_data"

            case priorityText = "priority_text"

            case payButton = "pay_button"

            case enableTracking = "enable_tracking"

            case forwardOrderStatus = "forward_order_status"

            case fulfillingStore = "fulfilling_store"

            case securedDeliveryFlag = "secured_delivery_flag"

            case dpDetails = "dp_details"

            case prices

            case gstDetails = "gst_details"

            case packagingType = "packaging_type"

            case refundDetails = "refund_details"

            case billingDetails = "billing_details"

            case isNotFyndSource = "is_not_fynd_source"

            case status

            case kiranaStoreId = "kirana_store_id"

            case deliveryDetails = "delivery_details"

            case userAgent = "user_agent"

            case company

            case affiliateShipmentId = "affiliate_shipment_id"

            case enableDpTracking = "enable_dp_tracking"

            case trackingUrl = "tracking_url"

            case userInfo = "user_info"

            case items

            case fyndstoreEmp = "fyndstore_emp"

            case journeyType = "journey_type"

            case deliveryStatus = "delivery_status"

            case isFyndCoupon = "is_fynd_coupon"

            case totalItems = "total_items"

            case paymentMode = "payment_mode"

            case lockStatus = "lock_status"

            case beneficiaryDetails = "beneficiary_details"

            case orderType = "order_type"

            case statusProgress = "status_progress"

            case bags

            case orderCreatedTime = "order_created_time"

            case isPdsr = "is_pdsr"

            case userId = "user_id"

            case canCancel = "can_cancel"

            case refundText = "refund_text"

            case goGreen = "go_green"

            case deliverySlot = "delivery_slot"

            case orderingStore = "ordering_store"

            case dueDate = "due_date"

            case bagStatusHistory = "bag_status_history"

            case canBreak = "can_break"

            case trackingList = "tracking_list"

            case isPackagingOrder = "is_packaging_order"

            case platformLogo = "platform_logo"

            case shipmentId = "shipment_id"

            case isInvoiced = "is_invoiced"

            case mid

            case order

            case orderStatus = "order_status"

            case vertical

            case invoice

            case canReturn = "can_return"

            case pickedDate = "picked_date"

            case replacementDetails = "replacement_details"

            case coupon

            case isFyndStore = "is_fynd_store"

            case forwardShipmentStatus = "forward_shipment_status"

            case shipmentQuantity = "shipment_quantity"

            case childNodes = "child_nodes"

            case forwardTrackingList = "forward_tracking_list"

            case payments

            case creditNoteId = "credit_note_id"

            case emailId = "email_id"

            case currentShipmentStatus = "current_shipment_status"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.escalation = escalation

            self.bankData = bankData

            self.priorityText = priorityText

            self.payButton = payButton

            self.enableTracking = enableTracking

            self.forwardOrderStatus = forwardOrderStatus

            self.fulfillingStore = fulfillingStore

            self.securedDeliveryFlag = securedDeliveryFlag

            self.dpDetails = dpDetails

            self.prices = prices

            self.gstDetails = gstDetails

            self.packagingType = packagingType

            self.refundDetails = refundDetails

            self.billingDetails = billingDetails

            self.isNotFyndSource = isNotFyndSource

            self.status = status

            self.kiranaStoreId = kiranaStoreId

            self.deliveryDetails = deliveryDetails

            self.userAgent = userAgent

            self.company = company

            self.affiliateShipmentId = affiliateShipmentId

            self.enableDpTracking = enableDpTracking

            self.trackingUrl = trackingUrl

            self.userInfo = userInfo

            self.items = items

            self.fyndstoreEmp = fyndstoreEmp

            self.journeyType = journeyType

            self.deliveryStatus = deliveryStatus

            self.isFyndCoupon = isFyndCoupon

            self.totalItems = totalItems

            self.paymentMode = paymentMode

            self.lockStatus = lockStatus

            self.beneficiaryDetails = beneficiaryDetails

            self.orderType = orderType

            self.statusProgress = statusProgress

            self.bags = bags

            self.orderCreatedTime = orderCreatedTime

            self.isPdsr = isPdsr

            self.userId = userId

            self.canCancel = canCancel

            self.refundText = refundText

            self.goGreen = goGreen

            self.deliverySlot = deliverySlot

            self.orderingStore = orderingStore

            self.dueDate = dueDate

            self.bagStatusHistory = bagStatusHistory

            self.canBreak = canBreak

            self.trackingList = trackingList

            self.isPackagingOrder = isPackagingOrder

            self.platformLogo = platformLogo

            self.shipmentId = shipmentId

            self.isInvoiced = isInvoiced

            self.mid = mid

            self.order = order

            self.orderStatus = orderStatus

            self.vertical = vertical

            self.invoice = invoice

            self.canReturn = canReturn

            self.pickedDate = pickedDate

            self.replacementDetails = replacementDetails

            self.coupon = coupon

            self.isFyndStore = isFyndStore

            self.forwardShipmentStatus = forwardShipmentStatus

            self.shipmentQuantity = shipmentQuantity

            self.childNodes = childNodes

            self.forwardTrackingList = forwardTrackingList

            self.payments = payments

            self.creditNoteId = creditNoteId

            self.emailId = emailId

            self.currentShipmentStatus = currentShipmentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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
                priorityText = try container.decode(String.self, forKey: .priorityText)

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
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            company = try container.decode([String: Any].self, forKey: .company)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

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
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(String.self, forKey: .userId)

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
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            emailId = try container.decode(String.self, forKey: .emailId)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)
        }
    }
}
