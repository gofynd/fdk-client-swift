

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentInfoResponse
         Used By: Order
     */

    class ShipmentInfoResponse: Codable {
        public var journeyType: String?

        public var isInvoiced: Bool

        public var userAgent: String?

        public var orderType: String

        public var beneficiaryDetails: Bool?

        public var operationalStatus: String?

        public var forwardTrackingList: [[String: Any]]?

        public var payments: ShipmentPayments?

        public var isNotFyndSource: Bool

        public var customMeta: [[String: Any]]?

        public var order: OrderDetailsData?

        public var refundDetails: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var canBreak: String

        public var paymentMode: String?

        public var status: ShipmentStatusData?

        public var isPackagingOrder: Bool

        public var kiranaStoreId: String?

        public var isPdsr: String?

        public var payButton: String?

        public var bags: [OrderBags]?

        public var canReturn: Bool?

        public var shipmentId: String

        public var userId: String

        public var deliveryStatus: [[String: Any]]

        public var trackingList: [TrackingList]?

        public var deliveryDetails: UserDetailsData?

        public var emailId: String

        public var items: [[String: Any]]

        public var priorityText: String?

        public var currentShipmentStatus: [String: Any]

        public var shipmentImages: [String]?

        public var totalItems: Int?

        public var securedDeliveryFlag: String?

        public var replacementDetails: String?

        public var coupon: [String: Any]?

        public var goGreen: Bool?

        public var enableTracking: Bool?

        public var bankData: [String: Any]?

        public var forwardShipmentStatus: [[String: Any]]?

        public var orderingStore: [String: Any]

        public var vertical: String?

        public var statusProgress: Int

        public var dueDate: String?

        public var gstDetails: GSTDetailsData?

        public var fyndstoreEmp: [String: Any]

        public var userInfo: [String: Any]?

        public var creditNoteId: String

        public var company: [String: Any]

        public var canCancel: Bool?

        public var enableDpTracking: String?

        public var deliverySlot: [String: Any]?

        public var platformLogo: Bool

        public var packagingType: String?

        public var invoice: [String: Any]

        public var fulfillingStore: FulfillingStore?

        public var affiliateShipmentId: String

        public var lockStatus: String

        public var dpDetails: DPDetailsData?

        public var trackingUrl: String

        public var refundText: String?

        public var isFyndStore: String?

        public var orderCreatedTime: String?

        public var pickedDate: String?

        public var shipmentStatus: String?

        public var isFyndCoupon: Bool

        public var prices: Prices?

        public var totalBags: Int?

        public var shipmentQuantity: Int?

        public var orderStatus: [String: Any]

        public var forwardOrderStatus: [[String: Any]]?

        public var escalation: [String: Any]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var childNodes: [String]?

        public var mid: String?

        public enum CodingKeys: String, CodingKey {
            case journeyType = "journey_type"

            case isInvoiced = "is_invoiced"

            case userAgent = "user_agent"

            case orderType = "order_type"

            case beneficiaryDetails = "beneficiary_details"

            case operationalStatus = "operational_status"

            case forwardTrackingList = "forward_tracking_list"

            case payments

            case isNotFyndSource = "is_not_fynd_source"

            case customMeta = "custom_meta"

            case order

            case refundDetails = "refund_details"

            case billingDetails = "billing_details"

            case canBreak = "can_break"

            case paymentMode = "payment_mode"

            case status

            case isPackagingOrder = "is_packaging_order"

            case kiranaStoreId = "kirana_store_id"

            case isPdsr = "is_pdsr"

            case payButton = "pay_button"

            case bags

            case canReturn = "can_return"

            case shipmentId = "shipment_id"

            case userId = "user_id"

            case deliveryStatus = "delivery_status"

            case trackingList = "tracking_list"

            case deliveryDetails = "delivery_details"

            case emailId = "email_id"

            case items

            case priorityText = "priority_text"

            case currentShipmentStatus = "current_shipment_status"

            case shipmentImages = "shipment_images"

            case totalItems = "total_items"

            case securedDeliveryFlag = "secured_delivery_flag"

            case replacementDetails = "replacement_details"

            case coupon

            case goGreen = "go_green"

            case enableTracking = "enable_tracking"

            case bankData = "bank_data"

            case forwardShipmentStatus = "forward_shipment_status"

            case orderingStore = "ordering_store"

            case vertical

            case statusProgress = "status_progress"

            case dueDate = "due_date"

            case gstDetails = "gst_details"

            case fyndstoreEmp = "fyndstore_emp"

            case userInfo = "user_info"

            case creditNoteId = "credit_note_id"

            case company

            case canCancel = "can_cancel"

            case enableDpTracking = "enable_dp_tracking"

            case deliverySlot = "delivery_slot"

            case platformLogo = "platform_logo"

            case packagingType = "packaging_type"

            case invoice

            case fulfillingStore = "fulfilling_store"

            case affiliateShipmentId = "affiliate_shipment_id"

            case lockStatus = "lock_status"

            case dpDetails = "dp_details"

            case trackingUrl = "tracking_url"

            case refundText = "refund_text"

            case isFyndStore = "is_fynd_store"

            case orderCreatedTime = "order_created_time"

            case pickedDate = "picked_date"

            case shipmentStatus = "shipment_status"

            case isFyndCoupon = "is_fynd_coupon"

            case prices

            case totalBags = "total_bags"

            case shipmentQuantity = "shipment_quantity"

            case orderStatus = "order_status"

            case forwardOrderStatus = "forward_order_status"

            case escalation

            case bagStatusHistory = "bag_status_history"

            case childNodes = "child_nodes"

            case mid
        }

        public init(affiliateShipmentId: String, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, bankData: [String: Any]? = nil, beneficiaryDetails: Bool? = nil, billingDetails: UserDetailsData? = nil, canBreak: String, canCancel: Bool? = nil, canReturn: Bool? = nil, childNodes: [String]? = nil, company: [String: Any], coupon: [String: Any]? = nil, creditNoteId: String, currentShipmentStatus: [String: Any], customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, deliveryStatus: [[String: Any]], dpDetails: DPDetailsData? = nil, dueDate: String? = nil, emailId: String, enableDpTracking: String? = nil, enableTracking: Bool? = nil, escalation: [String: Any]? = nil, forwardOrderStatus: [[String: Any]]? = nil, forwardShipmentStatus: [[String: Any]]? = nil, forwardTrackingList: [[String: Any]]? = nil, fulfillingStore: FulfillingStore? = nil, fyndstoreEmp: [String: Any], goGreen: Bool? = nil, gstDetails: GSTDetailsData? = nil, invoice: [String: Any], isFyndCoupon: Bool, isFyndStore: String? = nil, isInvoiced: Bool, isNotFyndSource: Bool, isPackagingOrder: Bool, isPdsr: String? = nil, items: [[String: Any]], journeyType: String? = nil, kiranaStoreId: String? = nil, lockStatus: String, mid: String? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: [String: Any], orderCreatedTime: String? = nil, orderStatus: [String: Any], orderType: String, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, payButton: String? = nil, pickedDate: String? = nil, platformLogo: Bool, prices: Prices? = nil, priorityText: String? = nil, refundDetails: [String: Any]? = nil, refundText: String? = nil, replacementDetails: String? = nil, securedDeliveryFlag: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, statusProgress: Int, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, trackingUrl: String, userAgent: String? = nil, userId: String, userInfo: [String: Any]? = nil, vertical: String? = nil) {
            self.journeyType = journeyType

            self.isInvoiced = isInvoiced

            self.userAgent = userAgent

            self.orderType = orderType

            self.beneficiaryDetails = beneficiaryDetails

            self.operationalStatus = operationalStatus

            self.forwardTrackingList = forwardTrackingList

            self.payments = payments

            self.isNotFyndSource = isNotFyndSource

            self.customMeta = customMeta

            self.order = order

            self.refundDetails = refundDetails

            self.billingDetails = billingDetails

            self.canBreak = canBreak

            self.paymentMode = paymentMode

            self.status = status

            self.isPackagingOrder = isPackagingOrder

            self.kiranaStoreId = kiranaStoreId

            self.isPdsr = isPdsr

            self.payButton = payButton

            self.bags = bags

            self.canReturn = canReturn

            self.shipmentId = shipmentId

            self.userId = userId

            self.deliveryStatus = deliveryStatus

            self.trackingList = trackingList

            self.deliveryDetails = deliveryDetails

            self.emailId = emailId

            self.items = items

            self.priorityText = priorityText

            self.currentShipmentStatus = currentShipmentStatus

            self.shipmentImages = shipmentImages

            self.totalItems = totalItems

            self.securedDeliveryFlag = securedDeliveryFlag

            self.replacementDetails = replacementDetails

            self.coupon = coupon

            self.goGreen = goGreen

            self.enableTracking = enableTracking

            self.bankData = bankData

            self.forwardShipmentStatus = forwardShipmentStatus

            self.orderingStore = orderingStore

            self.vertical = vertical

            self.statusProgress = statusProgress

            self.dueDate = dueDate

            self.gstDetails = gstDetails

            self.fyndstoreEmp = fyndstoreEmp

            self.userInfo = userInfo

            self.creditNoteId = creditNoteId

            self.company = company

            self.canCancel = canCancel

            self.enableDpTracking = enableDpTracking

            self.deliverySlot = deliverySlot

            self.platformLogo = platformLogo

            self.packagingType = packagingType

            self.invoice = invoice

            self.fulfillingStore = fulfillingStore

            self.affiliateShipmentId = affiliateShipmentId

            self.lockStatus = lockStatus

            self.dpDetails = dpDetails

            self.trackingUrl = trackingUrl

            self.refundText = refundText

            self.isFyndStore = isFyndStore

            self.orderCreatedTime = orderCreatedTime

            self.pickedDate = pickedDate

            self.shipmentStatus = shipmentStatus

            self.isFyndCoupon = isFyndCoupon

            self.prices = prices

            self.totalBags = totalBags

            self.shipmentQuantity = shipmentQuantity

            self.orderStatus = orderStatus

            self.forwardOrderStatus = forwardOrderStatus

            self.escalation = escalation

            self.bagStatusHistory = bagStatusHistory

            self.childNodes = childNodes

            self.mid = mid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isInvoiced = try container.decode(Bool.self, forKey: .isInvoiced)

            do {
                userAgent = try container.decode(String.self, forKey: .userAgent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

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

            isNotFyndSource = try container.decode(Bool.self, forKey: .isNotFyndSource)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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

            canBreak = try container.decode(String.self, forKey: .canBreak)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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

            isPackagingOrder = try container.decode(Bool.self, forKey: .isPackagingOrder)

            do {
                kiranaStoreId = try container.decode(String.self, forKey: .kiranaStoreId)

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
                payButton = try container.decode(String.self, forKey: .payButton)

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
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            userId = try container.decode(String.self, forKey: .userId)

            deliveryStatus = try container.decode([[String: Any]].self, forKey: .deliveryStatus)

            do {
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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

            emailId = try container.decode(String.self, forKey: .emailId)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentShipmentStatus = try container.decode([String: Any].self, forKey: .currentShipmentStatus)

            do {
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

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
                securedDeliveryFlag = try container.decode(String.self, forKey: .securedDeliveryFlag)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                enableTracking = try container.decode(Bool.self, forKey: .enableTracking)

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
                forwardShipmentStatus = try container.decode([[String: Any]].self, forKey: .forwardShipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingStore = try container.decode([String: Any].self, forKey: .orderingStore)

            do {
                vertical = try container.decode(String.self, forKey: .vertical)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            do {
                dueDate = try container.decode(String.self, forKey: .dueDate)

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

            fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            do {
                userInfo = try container.decode([String: Any].self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            creditNoteId = try container.decode(String.self, forKey: .creditNoteId)

            company = try container.decode([String: Any].self, forKey: .company)

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            platformLogo = try container.decode(Bool.self, forKey: .platformLogo)

            do {
                packagingType = try container.decode(String.self, forKey: .packagingType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            invoice = try container.decode([String: Any].self, forKey: .invoice)

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            lockStatus = try container.decode(String.self, forKey: .lockStatus)

            do {
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            trackingUrl = try container.decode(String.self, forKey: .trackingUrl)

            do {
                refundText = try container.decode(String.self, forKey: .refundText)

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
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

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

            do {
                shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isFyndCoupon = try container.decode(Bool.self, forKey: .isFyndCoupon)

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

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
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderStatus = try container.decode([String: Any].self, forKey: .orderStatus)

            do {
                forwardOrderStatus = try container.decode([[String: Any]].self, forKey: .forwardOrderStatus)

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
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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
                mid = try container.decode(String.self, forKey: .mid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(isInvoiced, forKey: .isInvoiced)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(forwardTrackingList, forKey: .forwardTrackingList)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(isNotFyndSource, forKey: .isNotFyndSource)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(refundDetails, forKey: .refundDetails)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isPackagingOrder, forKey: .isPackagingOrder)

            try? container.encodeIfPresent(kiranaStoreId, forKey: .kiranaStoreId)

            try? container.encodeIfPresent(isPdsr, forKey: .isPdsr)

            try? container.encodeIfPresent(payButton, forKey: .payButton)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(deliveryStatus, forKey: .deliveryStatus)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(emailId, forKey: .emailId)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(currentShipmentStatus, forKey: .currentShipmentStatus)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(securedDeliveryFlag, forKey: .securedDeliveryFlag)

            try? container.encodeIfPresent(replacementDetails, forKey: .replacementDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(goGreen, forKey: .goGreen)

            try? container.encodeIfPresent(enableTracking, forKey: .enableTracking)

            try? container.encodeIfPresent(bankData, forKey: .bankData)

            try? container.encodeIfPresent(forwardShipmentStatus, forKey: .forwardShipmentStatus)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(vertical, forKey: .vertical)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(dueDate, forKey: .dueDate)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(creditNoteId, forKey: .creditNoteId)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(trackingUrl, forKey: .trackingUrl)

            try? container.encodeIfPresent(refundText, forKey: .refundText)

            try? container.encodeIfPresent(isFyndStore, forKey: .isFyndStore)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(isFyndCoupon, forKey: .isFyndCoupon)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(orderStatus, forKey: .orderStatus)

            try? container.encodeIfPresent(forwardOrderStatus, forKey: .forwardOrderStatus)

            try? container.encodeIfPresent(escalation, forKey: .escalation)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(childNodes, forKey: .childNodes)

            try? container.encodeIfPresent(mid, forKey: .mid)
        }
    }
}
