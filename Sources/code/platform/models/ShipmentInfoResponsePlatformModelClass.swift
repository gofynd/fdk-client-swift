

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var bagStatusHistory: [BagStatusHistory]?

        public var beneficiaryDetails: Bool?

        public var invoice: [String: Any]

        public var canBreak: String

        public var childNodes: [String]?

        public var platformLogo: Bool

        public var statusProgress: Int

        public var pickedDate: String?

        public var canCancel: Bool?

        public var packagingType: String?

        public var bankData: [String: Any]?

        public var priorityText: String?

        public var escalation: [String: Any]?

        public var forwardTrackingList: [[String: Any]]?

        public var kiranaStoreId: String?

        public var operationalStatus: String?

        public var shipmentStatus: String?

        public var shipmentImages: [String]?

        public var company: [String: Any]

        public var dpDetails: DPDetailsData?

        public var canReturn: Bool?

        public var enableTracking: Bool?

        public var isNotFyndSource: Bool

        public var userInfo: [String: Any]?

        public var emailId: String

        public var creditNoteId: String

        public var paymentMode: String?

        public var items: [[String: Any]]

        public var deliveryDetails: UserDetailsData?

        public var status: ShipmentStatusData?

        public var totalBags: Int?

        public var isFyndStore: String?

        public var totalItems: Int?

        public var orderType: String

        public var mid: String?

        public var shipmentQuantity: Int?

        public var bags: [OrderBags]?

        public var deliverySlot: [String: Any]?

        public var payments: ShipmentPayments?

        public var fyndstoreEmp: [String: Any]

        public var userId: String

        public var trackingUrl: String

        public var affiliateShipmentId: String

        public var currentShipmentStatus: [String: Any]

        public var deliveryStatus: [[String: Any]]

        public var isInvoiced: Bool

        public var shipmentId: String

        public var journeyType: String?

        public var lockStatus: String

        public var customMeta: [[String: Any]]?

        public var coupon: [String: Any]?

        public var trackingList: [TrackingList]?

        public var isPdsr: String?

        public var refundText: String?

        public var securedDeliveryFlag: String?

        public var gstDetails: GSTDetailsData?

        public var vertical: String?

        public var prices: Prices?

        public var billingDetails: UserDetailsData?

        public var order: OrderDetailsData?

        public var replacementDetails: String?

        public var userAgent: String?

        public var dueDate: String?

        public var enableDpTracking: Bool?

        public var refundDetails: [String: Any]?

        public var isFyndCoupon: Bool

        public var orderingStore: [String: Any]

        public var isPackagingOrder: Bool

        public var fulfillingStore: FulfillingStore?

        public var forwardOrderStatus: [[String: Any]]?

        public var orderCreatedTime: String?

        public var payButton: String?

        public var forwardShipmentStatus: [[String: Any]]?

        public var orderStatus: [String: Any]

        public var goGreen: Bool?

        public enum CodingKeys: String, CodingKey {
            case bagStatusHistory = "bag_status_history"

            case beneficiaryDetails = "beneficiary_details"

            case invoice

            case canBreak = "can_break"

            case childNodes = "child_nodes"

            case platformLogo = "platform_logo"

            case statusProgress = "status_progress"

            case pickedDate = "picked_date"

            case canCancel = "can_cancel"

            case packagingType = "packaging_type"

            case bankData = "bank_data"

            case priorityText = "priority_text"

            case escalation

            case forwardTrackingList = "forward_tracking_list"

            case kiranaStoreId = "kirana_store_id"

            case operationalStatus = "operational_status"

            case shipmentStatus = "shipment_status"

            case shipmentImages = "shipment_images"

            case company

            case dpDetails = "dp_details"

            case canReturn = "can_return"

            case enableTracking = "enable_tracking"

            case isNotFyndSource = "is_not_fynd_source"

            case userInfo = "user_info"

            case emailId = "email_id"

            case creditNoteId = "credit_note_id"

            case paymentMode = "payment_mode"

            case items

            case deliveryDetails = "delivery_details"

            case status

            case totalBags = "total_bags"

            case isFyndStore = "is_fynd_store"

            case totalItems = "total_items"

            case orderType = "order_type"

            case mid

            case shipmentQuantity = "shipment_quantity"

            case bags

            case deliverySlot = "delivery_slot"

            case payments

            case fyndstoreEmp = "fyndstore_emp"

            case userId = "user_id"

            case trackingUrl = "tracking_url"

            case affiliateShipmentId = "affiliate_shipment_id"

            case currentShipmentStatus = "current_shipment_status"

            case deliveryStatus = "delivery_status"

            case isInvoiced = "is_invoiced"

            case shipmentId = "shipment_id"

            case journeyType = "journey_type"

            case lockStatus = "lock_status"

            case customMeta = "custom_meta"

            case coupon

            case trackingList = "tracking_list"

            case isPdsr = "is_pdsr"

            case refundText = "refund_text"

            case securedDeliveryFlag = "secured_delivery_flag"

            case gstDetails = "gst_details"

            case vertical

            case prices

            case billingDetails = "billing_details"

            case order

            case replacementDetails = "replacement_details"

            case userAgent = "user_agent"

            case dueDate = "due_date"

            case enableDpTracking = "enable_dp_tracking"

            case refundDetails = "refund_details"

            case isFyndCoupon = "is_fynd_coupon"

            case orderingStore = "ordering_store"

            case isPackagingOrder = "is_packaging_order"

            case fulfillingStore = "fulfilling_store"

            case forwardOrderStatus = "forward_order_status"

            case orderCreatedTime = "order_created_time"

            case payButton = "pay_button"

            case forwardShipmentStatus = "forward_shipment_status"

            case orderStatus = "order_status"

            case goGreen = "go_green"
        }

        public init(affiliateShipmentId: String, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]], dpDetails: DPDetailsData? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: Bool? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GSTDetailsData? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String? = nil, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, payButton: String? = nil, pickedDate: String? = nil, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, statusProgress: Int, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String? = nil, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.bagStatusHistory = bagStatusHistory

            self.beneficiaryDetails = beneficiaryDetails

            self.invoice = invoice

            self.canBreak = canBreak

            self.childNodes = childNodes

            self.platformLogo = platformLogo

            self.statusProgress = statusProgress

            self.pickedDate = pickedDate

            self.canCancel = canCancel

            self.packagingType = packagingType

            self.bankData = bankData

            self.priorityText = priorityText

            self.escalation = escalation

            self.forwardTrackingList = forwardTrackingList

            self.kiranaStoreId = kiranaStoreId

            self.operationalStatus = operationalStatus

            self.shipmentStatus = shipmentStatus

            self.shipmentImages = shipmentImages

            self.company = company

            self.dpDetails = dpDetails

            self.canReturn = canReturn

            self.enableTracking = enableTracking

            self.isNotFyndSource = isNotFyndSource

            self.userInfo = userInfo

            self.emailId = emailId

            self.creditNoteId = creditNoteId

            self.paymentMode = paymentMode

            self.items = items

            self.deliveryDetails = deliveryDetails

            self.status = status

            self.totalBags = totalBags

            self.isFyndStore = isFyndStore

            self.totalItems = totalItems

            self.orderType = orderType

            self.mid = mid

            self.shipmentQuantity = shipmentQuantity

            self.bags = bags

            self.deliverySlot = deliverySlot

            self.payments = payments

            self.fyndstoreEmp = fyndstoreEmp

            self.userId = userId

            self.trackingUrl = trackingUrl

            self.affiliateShipmentId = affiliateShipmentId

            self.currentShipmentStatus = currentShipmentStatus

            self.deliveryStatus = deliveryStatus

            self.isInvoiced = isInvoiced

            self.shipmentId = shipmentId

            self.journeyType = journeyType

            self.lockStatus = lockStatus

            self.customMeta = customMeta

            self.coupon = coupon

            self.trackingList = trackingList

            self.isPdsr = isPdsr

            self.refundText = refundText

            self.securedDeliveryFlag = securedDeliveryFlag

            self.gstDetails = gstDetails

            self.vertical = vertical

            self.prices = prices

            self.billingDetails = billingDetails

            self.order = order

            self.replacementDetails = replacementDetails

            self.userAgent = userAgent

            self.dueDate = dueDate

            self.enableDpTracking = enableDpTracking

            self.refundDetails = refundDetails

            self.isFyndCoupon = isFyndCoupon

            self.orderingStore = orderingStore

            self.isPackagingOrder = isPackagingOrder

            self.fulfillingStore = fulfillingStore

            self.forwardOrderStatus = forwardOrderStatus

            self.orderCreatedTime = orderCreatedTime

            self.payButton = payButton

            self.forwardShipmentStatus = forwardShipmentStatus

            self.orderStatus = orderStatus

            self.goGreen = goGreen
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                childNodes = try container.decode([String].self, forKey: .childNodes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

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
                packagingType = try container.decode(String.self, forKey: .packagingType)

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
                escalation = try container.decode([String: Any].self, forKey: .escalation)

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
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                totalBags = try container.decode(Int.self, forKey: .totalBags)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([OrderBags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            userId = try container.decode(String.self, forKey: .userId)

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                refundText = try container.decode(String.self, forKey: .refundText)

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
                gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                userAgent = try container.decode(String.self, forKey: .userAgent)

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
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

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

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)
        }
    }
}
