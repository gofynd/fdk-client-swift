

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var shipmentQuantity: Int?

        public var fyndstoreEmp: [String: Any]

        public var deliveryDetails: UserDetailsData?

        public var shipmentStatus: String?

        public var billingDetails: UserDetailsData?

        public var lockStatus: String

        public var affiliateShipmentId: String

        public var currentShipmentStatus: [String: Any]

        public var userInfo: [String: Any]?

        public var refundText: String?

        public var orderingStore: [String: Any]

        public var isPdsr: String?

        public var childNodes: [String]?

        public var refundDetails: [String: Any]?

        public var totalItems: Int?

        public var deliverySlot: [String: Any]?

        public var securedDeliveryFlag: String?

        public var forwardShipmentStatus: [[String: Any]]?

        public var prices: Prices?

        public var invoice: [String: Any]

        public var goGreen: Bool?

        public var bagStatusHistory: [BagStatusHistory]?

        public var dueDate: String?

        public var enableDpTracking: String?

        public var fulfillingStore: FulfillingStore?

        public var order: OrderDetailsData?

        public var bags: [OrderBags]?

        public var orderStatus: [String: Any]

        public var priorityText: String?

        public var canReturn: Bool?

        public var replacementDetails: String?

        public var orderType: String

        public var shipmentImages: [String]?

        public var status: ShipmentStatusData?

        public var userId: String

        public var orderCreatedTime: String?

        public var statusProgress: Int

        public var trackingList: [TrackingList]?

        public var trackingUrl: String

        public var items: [[String: Any]]

        public var enableTracking: Bool?

        public var isFyndStore: String?

        public var canBreak: String

        public var journeyType: String?

        public var emailId: String

        public var payments: ShipmentPayments?

        public var canCancel: Bool?

        public var vertical: String?

        public var packagingType: String?

        public var forwardTrackingList: [[String: Any]]?

        public var shipmentId: String

        public var bankData: [String: Any]?

        public var dpDetails: DPDetailsData?

        public var pickedDate: String?

        public var deliveryStatus: [[String: Any]]

        public var company: [String: Any]

        public var beneficiaryDetails: Bool?

        public var isFyndCoupon: Bool

        public var isPackagingOrder: Bool

        public var mid: String?

        public var payButton: String?

        public var coupon: [String: Any]?

        public var kiranaStoreId: String?

        public var forwardOrderStatus: [[String: Any]]?

        public var paymentMode: String?

        public var userAgent: String?

        public var isNotFyndSource: Bool

        public var platformLogo: Bool

        public var isInvoiced: Bool

        public var gstDetails: GSTDetailsData?

        public var escalation: [String: Any]?

        public var totalBags: Int?

        public var creditNoteId: String

        public var customMeta: [[String: Any]]?

        public var operationalStatus: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentQuantity = "shipment_quantity"

            case fyndstoreEmp = "fyndstore_emp"

            case deliveryDetails = "delivery_details"

            case shipmentStatus = "shipment_status"

            case billingDetails = "billing_details"

            case lockStatus = "lock_status"

            case affiliateShipmentId = "affiliate_shipment_id"

            case currentShipmentStatus = "current_shipment_status"

            case userInfo = "user_info"

            case refundText = "refund_text"

            case orderingStore = "ordering_store"

            case isPdsr = "is_pdsr"

            case childNodes = "child_nodes"

            case refundDetails = "refund_details"

            case totalItems = "total_items"

            case deliverySlot = "delivery_slot"

            case securedDeliveryFlag = "secured_delivery_flag"

            case forwardShipmentStatus = "forward_shipment_status"

            case prices

            case invoice

            case goGreen = "go_green"

            case bagStatusHistory = "bag_status_history"

            case dueDate = "due_date"

            case enableDpTracking = "enable_dp_tracking"

            case fulfillingStore = "fulfilling_store"

            case order

            case bags

            case orderStatus = "order_status"

            case priorityText = "priority_text"

            case canReturn = "can_return"

            case replacementDetails = "replacement_details"

            case orderType = "order_type"

            case shipmentImages = "shipment_images"

            case status

            case userId = "user_id"

            case orderCreatedTime = "order_created_time"

            case statusProgress = "status_progress"

            case trackingList = "tracking_list"

            case trackingUrl = "tracking_url"

            case items

            case enableTracking = "enable_tracking"

            case isFyndStore = "is_fynd_store"

            case canBreak = "can_break"

            case journeyType = "journey_type"

            case emailId = "email_id"

            case payments

            case canCancel = "can_cancel"

            case vertical

            case packagingType = "packaging_type"

            case forwardTrackingList = "forward_tracking_list"

            case shipmentId = "shipment_id"

            case bankData = "bank_data"

            case dpDetails = "dp_details"

            case pickedDate = "picked_date"

            case deliveryStatus = "delivery_status"

            case company

            case beneficiaryDetails = "beneficiary_details"

            case isFyndCoupon = "is_fynd_coupon"

            case isPackagingOrder = "is_packaging_order"

            case mid

            case payButton = "pay_button"

            case coupon

            case kiranaStoreId = "kirana_store_id"

            case forwardOrderStatus = "forward_order_status"

            case paymentMode = "payment_mode"

            case userAgent = "user_agent"

            case isNotFyndSource = "is_not_fynd_source"

            case platformLogo = "platform_logo"

            case isInvoiced = "is_invoiced"

            case gstDetails = "gst_details"

            case escalation

            case totalBags = "total_bags"

            case creditNoteId = "credit_note_id"

            case customMeta = "custom_meta"

            case operationalStatus = "operational_status"
        }

        public init(affiliateShipmentId: String, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]], dpDetails: DPDetailsData? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GSTDetailsData? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String? = nil, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, payButton: String? = nil, pickedDate: String? = nil, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, statusProgress: Int, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String? = nil, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.shipmentQuantity = shipmentQuantity

            self.fyndstoreEmp = fyndstoreEmp

            self.deliveryDetails = deliveryDetails

            self.shipmentStatus = shipmentStatus

            self.billingDetails = billingDetails

            self.lockStatus = lockStatus

            self.affiliateShipmentId = affiliateShipmentId

            self.currentShipmentStatus = currentShipmentStatus

            self.userInfo = userInfo

            self.refundText = refundText

            self.orderingStore = orderingStore

            self.isPdsr = isPdsr

            self.childNodes = childNodes

            self.refundDetails = refundDetails

            self.totalItems = totalItems

            self.deliverySlot = deliverySlot

            self.securedDeliveryFlag = securedDeliveryFlag

            self.forwardShipmentStatus = forwardShipmentStatus

            self.prices = prices

            self.invoice = invoice

            self.goGreen = goGreen

            self.bagStatusHistory = bagStatusHistory

            self.dueDate = dueDate

            self.enableDpTracking = enableDpTracking

            self.fulfillingStore = fulfillingStore

            self.order = order

            self.bags = bags

            self.orderStatus = orderStatus

            self.priorityText = priorityText

            self.canReturn = canReturn

            self.replacementDetails = replacementDetails

            self.orderType = orderType

            self.shipmentImages = shipmentImages

            self.status = status

            self.userId = userId

            self.orderCreatedTime = orderCreatedTime

            self.statusProgress = statusProgress

            self.trackingList = trackingList

            self.trackingUrl = trackingUrl

            self.items = items

            self.enableTracking = enableTracking

            self.isFyndStore = isFyndStore

            self.canBreak = canBreak

            self.journeyType = journeyType

            self.emailId = emailId

            self.payments = payments

            self.canCancel = canCancel

            self.vertical = vertical

            self.packagingType = packagingType

            self.forwardTrackingList = forwardTrackingList

            self.shipmentId = shipmentId

            self.bankData = bankData

            self.dpDetails = dpDetails

            self.pickedDate = pickedDate

            self.deliveryStatus = deliveryStatus

            self.company = company

            self.beneficiaryDetails = beneficiaryDetails

            self.isFyndCoupon = isFyndCoupon

            self.isPackagingOrder = isPackagingOrder

            self.mid = mid

            self.payButton = payButton

            self.coupon = coupon

            self.kiranaStoreId = kiranaStoreId

            self.forwardOrderStatus = forwardOrderStatus

            self.paymentMode = paymentMode

            self.userAgent = userAgent

            self.isNotFyndSource = isNotFyndSource

            self.platformLogo = platformLogo

            self.isInvoiced = isInvoiced

            self.gstDetails = gstDetails

            self.escalation = escalation

            self.totalBags = totalBags

            self.creditNoteId = creditNoteId

            self.customMeta = customMeta

            self.operationalStatus = operationalStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

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

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

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
                refundDetails = try container.decode([String: Any].self, forKey: .refundDetails)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

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

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                goGreen = try container.decode(Bool.self, forKey: .goGreen)

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
                dueDate = try container.decode(String.self, forKey: .dueDate)

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

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                bags = try container.decode([OrderBags].self, forKey: .bags)

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

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

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

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

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

            userId = try container.decode(String.self, forKey: .userId)

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailId = try container.decode(String.self, forKey: .emailId)

            do {
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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
                forwardTrackingList = try container.decode([[String: Any]].self, forKey: .forwardTrackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                bankData = try container.decode([String: Any].self, forKey: .bankData)

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
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                mid = try container.decode(String.self, forKey: .mid)

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
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)

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
                totalBags = try container.decode(Int.self, forKey: .totalBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(mid, forKey: .mid)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
        }
    }
}
