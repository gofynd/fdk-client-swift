

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var totalItems: Int?

        public var replacementDetails: String?

        public var deliveryDetails: UserDetailsData?

        public var bagStatusHistory: [BagStatusHistory]?

        public var pickedDate: String

        public var emailId: String

        public var currentShipmentStatus: [String: Any]

        public var invoice: [String: Any]

        public var isPackagingOrder: Bool

        public var forwardOrderStatus: [[String: Any]]?

        public var userInfo: [String: Any]?

        public var enableDpTracking: String

        public var mid: String?

        public var packagingType: String

        public var canReturn: Bool?

        public var canCancel: Bool?

        public var bags: OrderBags?

        public var userAgent: String

        public var company: [String: Any]

        public var lockStatus: String

        public var fulfillingStore: FulfillingStore?

        public var orderStatus: [String: Any]

        public var affiliateShipmentId: String

        public var kiranaStoreId: String?

        public var beneficiaryDetails: Bool?

        public var statusProgress: Int

        public var forwardTrackingList: [[String: Any]]?

        public var isInvoiced: Bool

        public var items: [[String: Any]]

        public var fyndstoreEmp: [String: Any]

        public var order: OrderDetailsData?

        public var enableTracking: Bool?

        public var refundText: String?

        public var canBreak: String

        public var platformLogo: Bool

        public var dueDate: String?

        public var payments: ShipmentPayments?

        public var trackingList: [TrackingList]?

        public var escalation: [String: Any]?

        public var orderCreatedTime: String?

        public var payButton: String?

        public var coupon: [String: Any]?

        public var childNodes: [String]?

        public var dpDetails: DPDetails?

        public var paymentMode: String

        public var shipmentQuantity: Int

        public var billingDetails: UserDetailsData?

        public var priorityText: String?

        public var securedDeliveryFlag: String?

        public var orderType: String

        public var creditNoteId: String

        public var status: ShipmentStatusData?

        public var isPdsr: String?

        public var userId: String

        public var deliveryStatus: [[String: Any]]

        public var shipmentId: String

        public var bankData: [String: Any]?

        public var journeyType: String

        public var vertical: String?

        public var trackingUrl: String

        public var refundDetails: [String: Any]?

        public var orderingStore: [String: Any]

        public var goGreen: Bool?

        public var isFyndCoupon: Bool

        public var gstDetails: GST?

        public var deliverySlot: [String: Any]

        public var prices: Prices?

        public var isNotFyndSource: Bool

        public var forwardShipmentStatus: [[String: Any]]?

        public var isFyndStore: String?

        public enum CodingKeys: String, CodingKey {
            case totalItems = "total_items"

            case replacementDetails = "replacement_details"

            case deliveryDetails = "delivery_details"

            case bagStatusHistory = "bag_status_history"

            case pickedDate = "picked_date"

            case emailId = "email_id"

            case currentShipmentStatus = "current_shipment_status"

            case invoice

            case isPackagingOrder = "is_packaging_order"

            case forwardOrderStatus = "forward_order_status"

            case userInfo = "user_info"

            case enableDpTracking = "enable_dp_tracking"

            case mid

            case packagingType = "packaging_type"

            case canReturn = "can_return"

            case canCancel = "can_cancel"

            case bags

            case userAgent = "user_agent"

            case company

            case lockStatus = "lock_status"

            case fulfillingStore = "fulfilling_store"

            case orderStatus = "order_status"

            case affiliateShipmentId = "affiliate_shipment_id"

            case kiranaStoreId = "kirana_store_id"

            case beneficiaryDetails = "beneficiary_details"

            case statusProgress = "status_progress"

            case forwardTrackingList = "forward_tracking_list"

            case isInvoiced = "is_invoiced"

            case items

            case fyndstoreEmp = "fyndstore_emp"

            case order

            case enableTracking = "enable_tracking"

            case refundText = "refund_text"

            case canBreak = "can_break"

            case platformLogo = "platform_logo"

            case dueDate = "due_date"

            case payments

            case trackingList = "tracking_list"

            case escalation

            case orderCreatedTime = "order_created_time"

            case payButton = "pay_button"

            case coupon

            case childNodes = "child_nodes"

            case dpDetails = "dp_details"

            case paymentMode = "payment_mode"

            case shipmentQuantity = "shipment_quantity"

            case billingDetails = "billing_details"

            case priorityText = "priority_text"

            case securedDeliveryFlag = "secured_delivery_flag"

            case orderType = "order_type"

            case creditNoteId = "credit_note_id"

            case status

            case isPdsr = "is_pdsr"

            case userId = "user_id"

            case deliveryStatus = "delivery_status"

            case shipmentId = "shipment_id"

            case bankData = "bank_data"

            case journeyType = "journey_type"

            case vertical

            case trackingUrl = "tracking_url"

            case refundDetails = "refund_details"

            case orderingStore = "ordering_store"

            case goGreen = "go_green"

            case isFyndCoupon = "is_fynd_coupon"

            case gstDetails = "gst_details"

            case deliverySlot = "delivery_slot"

            case prices

            case isNotFyndSource = "is_not_fynd_source"

            case forwardShipmentStatus = "forward_shipment_status"

            case isFyndStore = "is_fynd_store"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.totalItems = totalItems

            self.replacementDetails = replacementDetails

            self.deliveryDetails = deliveryDetails

            self.bagStatusHistory = bagStatusHistory

            self.pickedDate = pickedDate

            self.emailId = emailId

            self.currentShipmentStatus = currentShipmentStatus

            self.invoice = invoice

            self.isPackagingOrder = isPackagingOrder

            self.forwardOrderStatus = forwardOrderStatus

            self.userInfo = userInfo

            self.enableDpTracking = enableDpTracking

            self.mid = mid

            self.packagingType = packagingType

            self.canReturn = canReturn

            self.canCancel = canCancel

            self.bags = bags

            self.userAgent = userAgent

            self.company = company

            self.lockStatus = lockStatus

            self.fulfillingStore = fulfillingStore

            self.orderStatus = orderStatus

            self.affiliateShipmentId = affiliateShipmentId

            self.kiranaStoreId = kiranaStoreId

            self.beneficiaryDetails = beneficiaryDetails

            self.statusProgress = statusProgress

            self.forwardTrackingList = forwardTrackingList

            self.isInvoiced = isInvoiced

            self.items = items

            self.fyndstoreEmp = fyndstoreEmp

            self.order = order

            self.enableTracking = enableTracking

            self.refundText = refundText

            self.canBreak = canBreak

            self.platformLogo = platformLogo

            self.dueDate = dueDate

            self.payments = payments

            self.trackingList = trackingList

            self.escalation = escalation

            self.orderCreatedTime = orderCreatedTime

            self.payButton = payButton

            self.coupon = coupon

            self.childNodes = childNodes

            self.dpDetails = dpDetails

            self.paymentMode = paymentMode

            self.shipmentQuantity = shipmentQuantity

            self.billingDetails = billingDetails

            self.priorityText = priorityText

            self.securedDeliveryFlag = securedDeliveryFlag

            self.orderType = orderType

            self.creditNoteId = creditNoteId

            self.status = status

            self.isPdsr = isPdsr

            self.userId = userId

            self.deliveryStatus = deliveryStatus

            self.shipmentId = shipmentId

            self.bankData = bankData

            self.journeyType = journeyType

            self.vertical = vertical

            self.trackingUrl = trackingUrl

            self.refundDetails = refundDetails

            self.orderingStore = orderingStore

            self.goGreen = goGreen

            self.isFyndCoupon = isFyndCoupon

            self.gstDetails = gstDetails

            self.deliverySlot = deliverySlot

            self.prices = prices

            self.isNotFyndSource = isNotFyndSource

            self.forwardShipmentStatus = forwardShipmentStatus

            self.isFyndStore = isFyndStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

            emailId = try container.decode(String.self, forKey: .emailId)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

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

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            packagingType = try container.decode(String.self, forKey: .packagingType)

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userAgent = try container.decode(String.self, forKey: .userAgent)

            company = try container.decode([String: Any].self, forKey: .company)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            items = try container.decode([[String: Any]].self, forKey: .items)

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                refundText = try container.decode(String.self, forKey: .refundText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)
        }
    }
}
