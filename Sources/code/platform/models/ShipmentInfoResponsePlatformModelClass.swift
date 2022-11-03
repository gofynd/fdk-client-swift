

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Orders
     */

    class ShipmentInfoResponse: Codable {
        public var shipmentId: String

        public var forwardShipmentStatus: [[String: Any]]?

        public var currentShipmentStatus: [String: Any]

        public var paymentMode: String

        public var userInfo: [String: Any]?

        public var enableTracking: Bool?

        public var journeyType: String

        public var payments: ShipmentPayments?

        public var priorityText: String?

        public var goGreen: Bool?

        public var affiliateShipmentId: String

        public var isFyndStore: String?

        public var deliverySlot: [String: Any]

        public var lockStatus: String

        public var forwardTrackingList: [[String: Any]]?

        public var orderCreatedTime: String?

        public var replacementDetails: String?

        public var childNodes: [String]?

        public var company: [String: Any]

        public var bagStatusHistory: [BagStatusHistory]?

        public var deliveryDetails: UserDetailsData?

        public var bags: OrderBags?

        public var fyndstoreEmp: [String: Any]

        public var deliveryStatus: [[String: Any]]

        public var items: [[String: Any]]

        public var isInvoiced: Bool

        public var pickedDate: String

        public var fulfillingStore: FulfillingStore?

        public var coupon: [String: Any]?

        public var refundDetails: [String: Any]?

        public var beneficiaryDetails: Bool?

        public var canCancel: Bool?

        public var prices: Prices?

        public var canReturn: Bool?

        public var statusProgress: Int

        public var emailId: String

        public var kiranaStoreId: String?

        public var order: OrderDetailsData?

        public var orderStatus: [String: Any]

        public var isPackagingOrder: Bool

        public var gstDetails: GST?

        public var orderingStore: [String: Any]

        public var userId: String

        public var enableDpTracking: String

        public var escalation: [String: Any]?

        public var bankData: [String: Any]?

        public var vertical: String?

        public var dueDate: String?

        public var mid: String?

        public var platformLogo: Bool

        public var isPdsr: String?

        public var billingDetails: UserDetailsData?

        public var shipmentQuantity: Int

        public var status: ShipmentStatusData?

        public var trackingList: [TrackingList]?

        public var creditNoteId: String

        public var totalItems: Int?

        public var isNotFyndSource: Bool

        public var canBreak: String

        public var userAgent: String

        public var refundText: String?

        public var payButton: String?

        public var orderType: String

        public var forwardOrderStatus: [[String: Any]]?

        public var invoice: [String: Any]

        public var dpDetails: DPDetails?

        public var securedDeliveryFlag: String?

        public var trackingUrl: String

        public var packagingType: String

        public var isFyndCoupon: Bool

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case forwardShipmentStatus = "forward_shipment_status"

            case currentShipmentStatus = "current_shipment_status"

            case paymentMode = "payment_mode"

            case userInfo = "user_info"

            case enableTracking = "enable_tracking"

            case journeyType = "journey_type"

            case payments

            case priorityText = "priority_text"

            case goGreen = "go_green"

            case affiliateShipmentId = "affiliate_shipment_id"

            case isFyndStore = "is_fynd_store"

            case deliverySlot = "delivery_slot"

            case lockStatus = "lock_status"

            case forwardTrackingList = "forward_tracking_list"

            case orderCreatedTime = "order_created_time"

            case replacementDetails = "replacement_details"

            case childNodes = "child_nodes"

            case company

            case bagStatusHistory = "bag_status_history"

            case deliveryDetails = "delivery_details"

            case bags

            case fyndstoreEmp = "fyndstore_emp"

            case deliveryStatus = "delivery_status"

            case items

            case isInvoiced = "is_invoiced"

            case pickedDate = "picked_date"

            case fulfillingStore = "fulfilling_store"

            case coupon

            case refundDetails = "refund_details"

            case beneficiaryDetails = "beneficiary_details"

            case canCancel = "can_cancel"

            case prices

            case canReturn = "can_return"

            case statusProgress = "status_progress"

            case emailId = "email_id"

            case kiranaStoreId = "kirana_store_id"

            case order

            case orderStatus = "order_status"

            case isPackagingOrder = "is_packaging_order"

            case gstDetails = "gst_details"

            case orderingStore = "ordering_store"

            case userId = "user_id"

            case enableDpTracking = "enable_dp_tracking"

            case escalation

            case bankData = "bank_data"

            case vertical

            case dueDate = "due_date"

            case mid

            case platformLogo = "platform_logo"

            case isPdsr = "is_pdsr"

            case billingDetails = "billing_details"

            case shipmentQuantity = "shipment_quantity"

            case status

            case trackingList = "tracking_list"

            case creditNoteId = "credit_note_id"

            case totalItems = "total_items"

            case isNotFyndSource = "is_not_fynd_source"

            case canBreak = "can_break"

            case userAgent = "user_agent"

            case refundText = "refund_text"

            case payButton = "pay_button"

            case orderType = "order_type"

            case forwardOrderStatus = "forward_order_status"

            case invoice

            case dpDetails = "dp_details"

            case securedDeliveryFlag = "secured_delivery_flag"

            case trackingUrl = "tracking_url"

            case packagingType = "packaging_type"

            case isFyndCoupon = "is_fynd_coupon"
        }

        public init(affiliateShipmentId: String, bags: OrderBags? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any], deliveryStatus: [[String: Any]], dpDetails: DPDetails? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GST? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String, payments: ShipmentPayments? = nil, paymentMode: String, payButton: String? = nil, pickedDate: String, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentQuantity: Int, status: ShipmentStatusData? = nil, statusProgress: Int, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.shipmentId = shipmentId

            self.forwardShipmentStatus = forwardShipmentStatus

            self.currentShipmentStatus = currentShipmentStatus

            self.paymentMode = paymentMode

            self.userInfo = userInfo

            self.enableTracking = enableTracking

            self.journeyType = journeyType

            self.payments = payments

            self.priorityText = priorityText

            self.goGreen = goGreen

            self.affiliateShipmentId = affiliateShipmentId

            self.isFyndStore = isFyndStore

            self.deliverySlot = deliverySlot

            self.lockStatus = lockStatus

            self.forwardTrackingList = forwardTrackingList

            self.orderCreatedTime = orderCreatedTime

            self.replacementDetails = replacementDetails

            self.childNodes = childNodes

            self.company = company

            self.bagStatusHistory = bagStatusHistory

            self.deliveryDetails = deliveryDetails

            self.bags = bags

            self.fyndstoreEmp = fyndstoreEmp

            self.deliveryStatus = deliveryStatus

            self.items = items

            self.isInvoiced = isInvoiced

            self.pickedDate = pickedDate

            self.fulfillingStore = fulfillingStore

            self.coupon = coupon

            self.refundDetails = refundDetails

            self.beneficiaryDetails = beneficiaryDetails

            self.canCancel = canCancel

            self.prices = prices

            self.canReturn = canReturn

            self.statusProgress = statusProgress

            self.emailId = emailId

            self.kiranaStoreId = kiranaStoreId

            self.order = order

            self.orderStatus = orderStatus

            self.isPackagingOrder = isPackagingOrder

            self.gstDetails = gstDetails

            self.orderingStore = orderingStore

            self.userId = userId

            self.enableDpTracking = enableDpTracking

            self.escalation = escalation

            self.bankData = bankData

            self.vertical = vertical

            self.dueDate = dueDate

            self.mid = mid

            self.platformLogo = platformLogo

            self.isPdsr = isPdsr

            self.billingDetails = billingDetails

            self.shipmentQuantity = shipmentQuantity

            self.status = status

            self.trackingList = trackingList

            self.creditNoteId = creditNoteId

            self.totalItems = totalItems

            self.isNotFyndSource = isNotFyndSource

            self.canBreak = canBreak

            self.userAgent = userAgent

            self.refundText = refundText

            self.payButton = payButton

            self.orderType = orderType

            self.forwardOrderStatus = forwardOrderStatus

            self.invoice = invoice

            self.dpDetails = dpDetails

            self.securedDeliveryFlag = securedDeliveryFlag

            self.trackingUrl = trackingUrl

            self.packagingType = packagingType

            self.isFyndCoupon = isFyndCoupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

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

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                isFyndStore = try container.decode(String.self, forKey: .isFyndStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

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

            do {
                replacementDetails = try container.decode(String.self, forKey: .replacementDetails)

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

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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
                bags = try container.decode(OrderBags.self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            items = try container.decode([[String: Any]].self, forKey: .items)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            pickedDate = try container.decode(String.self, forKey: .pickedDate)

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

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                gstDetails = try container.decode(GST.self, forKey: .gstDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            userId = try container.decode(String.self, forKey: .userId)

            enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

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

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            userAgent = try container.decode(String.self, forKey: .userAgent)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

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

            packagingType = try container.decode(String.self, forKey: .packagingType)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)
        }
    }
}
