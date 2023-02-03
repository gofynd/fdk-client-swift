

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var isInvoiced: Bool

        public var order: OrderDetailsData?

        public var replacementDetails: String?

        public var status: ShipmentStatusData?

        public var statusProgress: Int

        public var refundDetails: [String: Any]?

        public var shipmentImages: [String]?

        public var priorityText: String?

        public var creditNoteId: String

        public var forwardOrderStatus: [[String: Any]]?

        public var deliveryStatus: [[String: Any]]

        public var userAgent: String?

        public var customMeta: [[String: Any]]?

        public var canReturn: Bool?

        public var bankData: [String: Any]?

        public var trackingUrl: String

        public var bags: [OrderBags]?

        public var company: [String: Any]

        public var invoice: [String: Any]

        public var affiliateShipmentId: String

        public var lockStatus: String

        public var trackingList: [TrackingList]?

        public var currentShipmentStatus: [String: Any]

        public var shipmentId: String

        public var pickedDate: String?

        public var orderStatus: [String: Any]

        public var enableTracking: Bool?

        public var emailId: String

        public var isPdsr: String?

        public var fulfillingStore: FulfillingStore?

        public var deliveryDetails: UserDetailsData?

        public var orderType: String

        public var platformLogo: Bool

        public var payments: ShipmentPayments?

        public var totalBags: Int?

        public var packagingType: String?

        public var shipmentStatus: String?

        public var canCancel: Bool?

        public var bagStatusHistory: [BagStatusHistory]?

        public var vertical: String?

        public var beneficiaryDetails: Bool?

        public var refundText: String?

        public var dueDate: String?

        public var fyndstoreEmp: [String: Any]

        public var kiranaStoreId: String?

        public var journeyType: String?

        public var goGreen: Bool?

        public var forwardShipmentStatus: [[String: Any]]?

        public var billingDetails: UserDetailsData?

        public var orderCreatedTime: String?

        public var enableDpTracking: String?

        public var isPackagingOrder: Bool

        public var totalItems: Int?

        public var paymentMode: String?

        public var isNotFyndSource: Bool

        public var shipmentQuantity: Int?

        public var deliverySlot: [String: Any]?

        public var items: [[String: Any]]

        public var operationalStatus: String?

        public var canBreak: String

        public var mid: String?

        public var coupon: [String: Any]?

        public var escalation: [String: Any]?

        public var forwardTrackingList: [[String: Any]]?

        public var payButton: String?

        public var gstDetails: GSTDetailsData?

        public var orderingStore: [String: Any]

        public var isFyndCoupon: Bool

        public var userId: String

        public var securedDeliveryFlag: String?

        public var isFyndStore: String?

        public var prices: Prices?

        public var userInfo: [String: Any]?

        public var dpDetails: DPDetailsData?

        public var childNodes: [String]?

        public enum CodingKeys: String, CodingKey {
            case isInvoiced = "is_invoiced"

            case order

            case replacementDetails = "replacement_details"

            case status

            case statusProgress = "status_progress"

            case refundDetails = "refund_details"

            case shipmentImages = "shipment_images"

            case priorityText = "priority_text"

            case creditNoteId = "credit_note_id"

            case forwardOrderStatus = "forward_order_status"

            case deliveryStatus = "delivery_status"

            case userAgent = "user_agent"

            case customMeta = "custom_meta"

            case canReturn = "can_return"

            case bankData = "bank_data"

            case trackingUrl = "tracking_url"

            case bags

            case company

            case invoice

            case affiliateShipmentId = "affiliate_shipment_id"

            case lockStatus = "lock_status"

            case trackingList = "tracking_list"

            case currentShipmentStatus = "current_shipment_status"

            case shipmentId = "shipment_id"

            case pickedDate = "picked_date"

            case orderStatus = "order_status"

            case enableTracking = "enable_tracking"

            case emailId = "email_id"

            case isPdsr = "is_pdsr"

            case fulfillingStore = "fulfilling_store"

            case deliveryDetails = "delivery_details"

            case orderType = "order_type"

            case platformLogo = "platform_logo"

            case payments

            case totalBags = "total_bags"

            case packagingType = "packaging_type"

            case shipmentStatus = "shipment_status"

            case canCancel = "can_cancel"

            case bagStatusHistory = "bag_status_history"

            case vertical

            case beneficiaryDetails = "beneficiary_details"

            case refundText = "refund_text"

            case dueDate = "due_date"

            case fyndstoreEmp = "fyndstore_emp"

            case kiranaStoreId = "kirana_store_id"

            case journeyType = "journey_type"

            case goGreen = "go_green"

            case forwardShipmentStatus = "forward_shipment_status"

            case billingDetails = "billing_details"

            case orderCreatedTime = "order_created_time"

            case enableDpTracking = "enable_dp_tracking"

            case isPackagingOrder = "is_packaging_order"

            case totalItems = "total_items"

            case paymentMode = "payment_mode"

            case isNotFyndSource = "is_not_fynd_source"

            case shipmentQuantity = "shipment_quantity"

            case deliverySlot = "delivery_slot"

            case items

            case operationalStatus = "operational_status"

            case canBreak = "can_break"

            case mid

            case coupon

            case escalation

            case forwardTrackingList = "forward_tracking_list"

            case payButton = "pay_button"

            case gstDetails = "gst_details"

            case orderingStore = "ordering_store"

            case isFyndCoupon = "is_fynd_coupon"

            case userId = "user_id"

            case securedDeliveryFlag = "secured_delivery_flag"

            case isFyndStore = "is_fynd_store"

            case prices

            case userInfo = "user_info"

            case dpDetails = "dp_details"

            case childNodes = "child_nodes"
        }

        public init(affiliateShipmentId: String, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]], dpDetails: DPDetailsData? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GSTDetailsData? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String? = nil, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, payButton: String? = nil, pickedDate: String? = nil, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, statusProgress: Int, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String? = nil, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.isInvoiced = isInvoiced

            self.order = order

            self.replacementDetails = replacementDetails

            self.status = status

            self.statusProgress = statusProgress

            self.refundDetails = refundDetails

            self.shipmentImages = shipmentImages

            self.priorityText = priorityText

            self.creditNoteId = creditNoteId

            self.forwardOrderStatus = forwardOrderStatus

            self.deliveryStatus = deliveryStatus

            self.userAgent = userAgent

            self.customMeta = customMeta

            self.canReturn = canReturn

            self.bankData = bankData

            self.trackingUrl = trackingUrl

            self.bags = bags

            self.company = company

            self.invoice = invoice

            self.affiliateShipmentId = affiliateShipmentId

            self.lockStatus = lockStatus

            self.trackingList = trackingList

            self.currentShipmentStatus = currentShipmentStatus

            self.shipmentId = shipmentId

            self.pickedDate = pickedDate

            self.orderStatus = orderStatus

            self.enableTracking = enableTracking

            self.emailId = emailId

            self.isPdsr = isPdsr

            self.fulfillingStore = fulfillingStore

            self.deliveryDetails = deliveryDetails

            self.orderType = orderType

            self.platformLogo = platformLogo

            self.payments = payments

            self.totalBags = totalBags

            self.packagingType = packagingType

            self.shipmentStatus = shipmentStatus

            self.canCancel = canCancel

            self.bagStatusHistory = bagStatusHistory

            self.vertical = vertical

            self.beneficiaryDetails = beneficiaryDetails

            self.refundText = refundText

            self.dueDate = dueDate

            self.fyndstoreEmp = fyndstoreEmp

            self.kiranaStoreId = kiranaStoreId

            self.journeyType = journeyType

            self.goGreen = goGreen

            self.forwardShipmentStatus = forwardShipmentStatus

            self.billingDetails = billingDetails

            self.orderCreatedTime = orderCreatedTime

            self.enableDpTracking = enableDpTracking

            self.isPackagingOrder = isPackagingOrder

            self.totalItems = totalItems

            self.paymentMode = paymentMode

            self.isNotFyndSource = isNotFyndSource

            self.shipmentQuantity = shipmentQuantity

            self.deliverySlot = deliverySlot

            self.items = items

            self.operationalStatus = operationalStatus

            self.canBreak = canBreak

            self.mid = mid

            self.coupon = coupon

            self.escalation = escalation

            self.forwardTrackingList = forwardTrackingList

            self.payButton = payButton

            self.gstDetails = gstDetails

            self.orderingStore = orderingStore

            self.isFyndCoupon = isFyndCoupon

            self.userId = userId

            self.securedDeliveryFlag = securedDeliveryFlag

            self.isFyndStore = isFyndStore

            self.prices = prices

            self.userInfo = userInfo

            self.dpDetails = dpDetails

            self.childNodes = childNodes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

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
                status = try container.decode(ShipmentStatusData.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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
                bankData = try container.decode([String: Any].self, forKey: .bankData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                bags = try container.decode([OrderBags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode([String: Any].self, forKey: .company)

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                isPdsr = try container.decode(String.self, forKey: .isPdsr)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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
                packagingType = try container.decode(String.self, forKey: .packagingType)

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
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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
                refundText = try container.decode(String.self, forKey: .refundText)

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

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

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
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

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
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enableDpTracking = try container.decode(String.self, forKey: .enableDpTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                totalItems = try container.decode(Int.self, forKey: .totalItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

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

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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
                payButton = try container.decode(String.self, forKey: .payButton)

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

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            userId = try container.decode(String.self, forKey: .userId)

            do {
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)
        }
    }
}
