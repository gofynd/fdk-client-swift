

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var mid: String?

        public var billingDetails: UserDetailsData?

        public var emailId: String

        public var coupon: [String: Any]?

        public var orderStatus: [String: Any]

        public var refundText: String?

        public var childNodes: [String]?

        public var canCancel: Bool?

        public var deliveryStatus: [[String: Any]]

        public var shipmentId: String

        public var escalation: [String: Any]?

        public var prices: Prices?

        public var lockStatus: String

        public var trackingUrl: String

        public var goGreen: Bool?

        public var deliverySlot: [String: Any]

        public var bankData: [String: Any]?

        public var orderingStore: [String: Any]

        public var orderCreatedTime: String?

        public var kiranaStoreId: String?

        public var paymentMode: String

        public var bagStatusHistory: [BagStatusHistory]?

        public var company: [String: Any]

        public var pickedDate: String

        public var items: [[String: Any]]

        public var beneficiaryDetails: Bool?

        public var trackingList: [TrackingList]?

        public var platformLogo: Bool

        public var packagingType: String

        public var isPackagingOrder: Bool

        public var totalItems: Int?

        public var journeyType: String

        public var deliveryDetails: UserDetailsData?

        public var payments: ShipmentPayments?

        public var isFyndStore: String?

        public var enableTracking: Bool?

        public var gstDetails: GST?

        public var fulfillingStore: FulfillingStore?

        public var priorityText: String?

        public var vertical: String?

        public var canReturn: Bool?

        public var isPdsr: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var statusProgress: Int

        public var bags: OrderBags?

        public var currentShipmentStatus: [String: Any]

        public var forwardTrackingList: [[String: Any]]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var invoice: [String: Any]

        public var affiliateShipmentId: String

        public var order: OrderDetailsData?

        public var refundDetails: [String: Any]?

        public var isNotFyndSource: Bool

        public var securedDeliveryFlag: String?

        public var payButton: String?

        public var isInvoiced: Bool

        public var orderType: String

        public var userAgent: String

        public var dueDate: String?

        public var enableDpTracking: String

        public var fyndstoreEmp: [String: Any]

        public var creditNoteId: String

        public var userId: String

        public var canBreak: String

        public var userInfo: [String: Any]?

        public var replacementDetails: String?

        public var shipmentQuantity: Int

        public var status: ShipmentStatusData?

        public var isFyndCoupon: Bool

        public var dpDetails: DPDetails?

        public enum CodingKeys: String, CodingKey {
            case mid

            case billingDetails = "billing_details"

            case emailId = "email_id"

            case coupon

            case orderStatus = "order_status"

            case refundText = "refund_text"

            case childNodes = "child_nodes"

            case canCancel = "can_cancel"

            case deliveryStatus = "delivery_status"

            case shipmentId = "shipment_id"

            case escalation

            case prices

            case lockStatus = "lock_status"

            case trackingUrl = "tracking_url"

            case goGreen = "go_green"

            case deliverySlot = "delivery_slot"

            case bankData = "bank_data"

            case orderingStore = "ordering_store"

            case orderCreatedTime = "order_created_time"

            case kiranaStoreId = "kirana_store_id"

            case paymentMode = "payment_mode"

            case bagStatusHistory = "bag_status_history"

            case company

            case pickedDate = "picked_date"

            case items

            case beneficiaryDetails = "beneficiary_details"

            case trackingList = "tracking_list"

            case platformLogo = "platform_logo"

            case packagingType = "packaging_type"

            case isPackagingOrder = "is_packaging_order"

            case totalItems = "total_items"

            case journeyType = "journey_type"

            case deliveryDetails = "delivery_details"

            case payments

            case isFyndStore = "is_fynd_store"

            case enableTracking = "enable_tracking"

            case gstDetails = "gst_details"

            case fulfillingStore = "fulfilling_store"

            case priorityText = "priority_text"

            case vertical

            case canReturn = "can_return"

            case isPdsr = "is_pdsr"

            case forwardOrderStatus = "forward_order_status"

            case statusProgress = "status_progress"

            case bags

            case currentShipmentStatus = "current_shipment_status"

            case forwardTrackingList = "forward_tracking_list"

            case forwardShipmentStatus = "forward_shipment_status"

            case invoice

            case affiliateShipmentId = "affiliate_shipment_id"

            case order

            case refundDetails = "refund_details"

            case isNotFyndSource = "is_not_fynd_source"

            case securedDeliveryFlag = "secured_delivery_flag"

            case payButton = "pay_button"

            case isInvoiced = "is_invoiced"

            case orderType = "order_type"

            case userAgent = "user_agent"

            case dueDate = "due_date"

            case enableDpTracking = "enable_dp_tracking"

            case fyndstoreEmp = "fyndstore_emp"

            case creditNoteId = "credit_note_id"

            case userId = "user_id"

            case canBreak = "can_break"

            case userInfo = "user_info"

            case replacementDetails = "replacement_details"

            case shipmentQuantity = "shipment_quantity"

            case status

            case isFyndCoupon = "is_fynd_coupon"

            case dpDetails = "dp_details"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.mid = mid

            self.billingDetails = billingDetails

            self.emailId = emailId

            self.coupon = coupon

            self.orderStatus = orderStatus

            self.refundText = refundText

            self.childNodes = childNodes

            self.canCancel = canCancel

            self.deliveryStatus = deliveryStatus

            self.shipmentId = shipmentId

            self.escalation = escalation

            self.prices = prices

            self.lockStatus = lockStatus

            self.trackingUrl = trackingUrl

            self.goGreen = goGreen

            self.deliverySlot = deliverySlot

            self.bankData = bankData

            self.orderingStore = orderingStore

            self.orderCreatedTime = orderCreatedTime

            self.kiranaStoreId = kiranaStoreId

            self.paymentMode = paymentMode

            self.bagStatusHistory = bagStatusHistory

            self.company = company

            self.pickedDate = pickedDate

            self.items = items

            self.beneficiaryDetails = beneficiaryDetails

            self.trackingList = trackingList

            self.platformLogo = platformLogo

            self.packagingType = packagingType

            self.isPackagingOrder = isPackagingOrder

            self.totalItems = totalItems

            self.journeyType = journeyType

            self.deliveryDetails = deliveryDetails

            self.payments = payments

            self.isFyndStore = isFyndStore

            self.enableTracking = enableTracking

            self.gstDetails = gstDetails

            self.fulfillingStore = fulfillingStore

            self.priorityText = priorityText

            self.vertical = vertical

            self.canReturn = canReturn

            self.isPdsr = isPdsr

            self.forwardOrderStatus = forwardOrderStatus

            self.statusProgress = statusProgress

            self.bags = bags

            self.currentShipmentStatus = currentShipmentStatus

            self.forwardTrackingList = forwardTrackingList

            self.forwardShipmentStatus = forwardShipmentStatus

            self.invoice = invoice

            self.affiliateShipmentId = affiliateShipmentId

            self.order = order

            self.refundDetails = refundDetails

            self.isNotFyndSource = isNotFyndSource

            self.securedDeliveryFlag = securedDeliveryFlag

            self.payButton = payButton

            self.isInvoiced = isInvoiced

            self.orderType = orderType

            self.userAgent = userAgent

            self.dueDate = dueDate

            self.enableDpTracking = enableDpTracking

            self.fyndstoreEmp = fyndstoreEmp

            self.creditNoteId = creditNoteId

            self.userId = userId

            self.canBreak = canBreak

            self.userInfo = userInfo

            self.replacementDetails = replacementDetails

            self.shipmentQuantity = shipmentQuantity

            self.status = status

            self.isFyndCoupon = isFyndCoupon

            self.dpDetails = dpDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

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

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

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

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            packagingType = try container.decode(String.self, forKey: .packagingType)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

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
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

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
                priorityText = try container.decode(String.self, forKey: .priorityText)

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

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

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

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

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

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

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

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            orderType = try container.decode(String.self, forKey: .orderType)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            userId = try container.decode(String.self, forKey: .userId)

            canBreak = try container.decode(String.self, forKey: .canBreak)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)
        }
    }
}