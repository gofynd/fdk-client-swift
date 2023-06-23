

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var deliverySlot: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var user: UserDataInfo?

        public var gstDetails: GSTDetailsData?

        public var paymentMethods: [String: Any]?

        public var status: ShipmentStatusData?

        public var dpDetails: DPDetailsData?

        public var companyDetails: CompanyDetails?

        public var affiliateDetails: AffiliateDetails?

        public var fulfilmentPriority: Int?

        public var shipmentId: String

        public var journeyType: String?

        public var totalItems: Int?

        public var shipmentQuantity: Int?

        public var userAgent: String?

        public var bags: [OrderBags]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var platformLogo: String?

        public var fulfillingStore: FulfillingStore?

        public var shipmentImages: [String]?

        public var estimatedSlaTime: String?

        public var shipmentCreatedAt: String?

        public var isDpAssignEnabled: Bool?

        public var prices: Prices?

        public var coupon: [String: Any]?

        public var packagingType: String?

        public var payments: ShipmentPayments?

        public var orderingStore: OrderingStoreDetails?

        public var invoiceId: String?

        public var totalBags: Int?

        public var shipmentDetails: ShipmentDetails?

        public var customMessage: String?

        public var vertical: String?

        public var paymentMode: String?

        public var deliveryDetails: UserDetailsData?

        public var invoice: InvoiceInfo?

        public var customMeta: [[String: Any]]?

        public var enableDpTracking: Bool?

        public var dpAssignment: Bool?

        public var forwardShipmentId: String?

        public var canUpdateDimension: Bool?

        public var pickedDate: String?

        public var shipmentStatus: String?

        public var priorityText: String?

        public var meta: ShipmentMeta?

        public var order: OrderDetailsData?

        public var trackingList: [TrackingList]?

        public var lockStatus: Bool?

        public var operationalStatus: String?

        public enum CodingKeys: String, CodingKey {
            case deliverySlot = "delivery_slot"

            case billingDetails = "billing_details"

            case user

            case gstDetails = "gst_details"

            case paymentMethods = "payment_methods"

            case status

            case dpDetails = "dp_details"

            case companyDetails = "company_details"

            case affiliateDetails = "affiliate_details"

            case fulfilmentPriority = "fulfilment_priority"

            case shipmentId = "shipment_id"

            case journeyType = "journey_type"

            case totalItems = "total_items"

            case shipmentQuantity = "shipment_quantity"

            case userAgent = "user_agent"

            case bags

            case bagStatusHistory = "bag_status_history"

            case platformLogo = "platform_logo"

            case fulfillingStore = "fulfilling_store"

            case shipmentImages = "shipment_images"

            case estimatedSlaTime = "estimated_sla_time"

            case shipmentCreatedAt = "shipment_created_at"

            case isDpAssignEnabled = "is_dp_assign_enabled"

            case prices

            case coupon

            case packagingType = "packaging_type"

            case payments

            case orderingStore = "ordering_store"

            case invoiceId = "invoice_id"

            case totalBags = "total_bags"

            case shipmentDetails = "shipment_details"

            case customMessage = "custom_message"

            case vertical

            case paymentMode = "payment_mode"

            case deliveryDetails = "delivery_details"

            case invoice

            case customMeta = "custom_meta"

            case enableDpTracking = "enable_dp_tracking"

            case dpAssignment = "dp_assignment"

            case forwardShipmentId = "forward_shipment_id"

            case canUpdateDimension = "can_update_dimension"

            case pickedDate = "picked_date"

            case shipmentStatus = "shipment_status"

            case priorityText = "priority_text"

            case meta

            case order

            case trackingList = "tracking_list"

            case lockStatus = "lock_status"

            case operationalStatus = "operational_status"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, canUpdateDimension: Bool? = nil, companyDetails: CompanyDetails? = nil, coupon: [String: Any]? = nil, customMessage: String? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpAssignment: Bool? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, estimatedSlaTime: String? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, isDpAssignEnabled: Bool? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: ShipmentMeta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentCreatedAt: String? = nil, shipmentDetails: ShipmentDetails? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.deliverySlot = deliverySlot

            self.billingDetails = billingDetails

            self.user = user

            self.gstDetails = gstDetails

            self.paymentMethods = paymentMethods

            self.status = status

            self.dpDetails = dpDetails

            self.companyDetails = companyDetails

            self.affiliateDetails = affiliateDetails

            self.fulfilmentPriority = fulfilmentPriority

            self.shipmentId = shipmentId

            self.journeyType = journeyType

            self.totalItems = totalItems

            self.shipmentQuantity = shipmentQuantity

            self.userAgent = userAgent

            self.bags = bags

            self.bagStatusHistory = bagStatusHistory

            self.platformLogo = platformLogo

            self.fulfillingStore = fulfillingStore

            self.shipmentImages = shipmentImages

            self.estimatedSlaTime = estimatedSlaTime

            self.shipmentCreatedAt = shipmentCreatedAt

            self.isDpAssignEnabled = isDpAssignEnabled

            self.prices = prices

            self.coupon = coupon

            self.packagingType = packagingType

            self.payments = payments

            self.orderingStore = orderingStore

            self.invoiceId = invoiceId

            self.totalBags = totalBags

            self.shipmentDetails = shipmentDetails

            self.customMessage = customMessage

            self.vertical = vertical

            self.paymentMode = paymentMode

            self.deliveryDetails = deliveryDetails

            self.invoice = invoice

            self.customMeta = customMeta

            self.enableDpTracking = enableDpTracking

            self.dpAssignment = dpAssignment

            self.forwardShipmentId = forwardShipmentId

            self.canUpdateDimension = canUpdateDimension

            self.pickedDate = pickedDate

            self.shipmentStatus = shipmentStatus

            self.priorityText = priorityText

            self.meta = meta

            self.order = order

            self.trackingList = trackingList

            self.lockStatus = lockStatus

            self.operationalStatus = operationalStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyDetails = try container.decode(CompanyDetails.self, forKey: .companyDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

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
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

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
                bags = try container.decode([OrderBags].self, forKey: .bags)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

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
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDpAssignEnabled = try container.decode(Bool.self, forKey: .isDpAssignEnabled)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(OrderingStoreDetails.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
                shipmentDetails = try container.decode(ShipmentDetails.self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMessage = try container.decode(String.self, forKey: .customMessage)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                invoice = try container.decode(InvoiceInfo.self, forKey: .invoice)

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
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentId = try container.decode(String.self, forKey: .forwardShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canUpdateDimension = try container.decode(Bool.self, forKey: .canUpdateDimension)

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

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ShipmentMeta.self, forKey: .meta)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(isDpAssignEnabled, forKey: .isDpAssignEnabled)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(customMessage, forKey: .customMessage)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encode(forwardShipmentId, forKey: .forwardShipmentId)

            try? container.encodeIfPresent(canUpdateDimension, forKey: .canUpdateDimension)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var deliverySlot: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var user: UserDataInfo?

        public var gstDetails: GSTDetailsData?

        public var paymentMethods: [String: Any]?

        public var status: ShipmentStatusData?

        public var dpDetails: DPDetailsData?

        public var companyDetails: CompanyDetails?

        public var affiliateDetails: AffiliateDetails?

        public var fulfilmentPriority: Int?

        public var shipmentId: String

        public var journeyType: String?

        public var totalItems: Int?

        public var shipmentQuantity: Int?

        public var userAgent: String?

        public var bags: [OrderBags]?

        public var bagStatusHistory: [BagStatusHistory]?

        public var platformLogo: String?

        public var fulfillingStore: FulfillingStore?

        public var shipmentImages: [String]?

        public var estimatedSlaTime: String?

        public var shipmentCreatedAt: String?

        public var isDpAssignEnabled: Bool?

        public var prices: Prices?

        public var coupon: [String: Any]?

        public var packagingType: String?

        public var payments: ShipmentPayments?

        public var orderingStore: OrderingStoreDetails?

        public var invoiceId: String?

        public var totalBags: Int?

        public var shipmentDetails: ShipmentDetails?

        public var customMessage: String?

        public var vertical: String?

        public var paymentMode: String?

        public var deliveryDetails: UserDetailsData?

        public var invoice: InvoiceInfo?

        public var customMeta: [[String: Any]]?

        public var enableDpTracking: Bool?

        public var dpAssignment: Bool?

        public var forwardShipmentId: String?

        public var canUpdateDimension: Bool?

        public var pickedDate: String?

        public var shipmentStatus: String?

        public var priorityText: String?

        public var meta: ShipmentMeta?

        public var order: OrderDetailsData?

        public var trackingList: [TrackingList]?

        public var lockStatus: Bool?

        public var operationalStatus: String?

        public enum CodingKeys: String, CodingKey {
            case deliverySlot = "delivery_slot"

            case billingDetails = "billing_details"

            case user

            case gstDetails = "gst_details"

            case paymentMethods = "payment_methods"

            case status

            case dpDetails = "dp_details"

            case companyDetails = "company_details"

            case affiliateDetails = "affiliate_details"

            case fulfilmentPriority = "fulfilment_priority"

            case shipmentId = "shipment_id"

            case journeyType = "journey_type"

            case totalItems = "total_items"

            case shipmentQuantity = "shipment_quantity"

            case userAgent = "user_agent"

            case bags

            case bagStatusHistory = "bag_status_history"

            case platformLogo = "platform_logo"

            case fulfillingStore = "fulfilling_store"

            case shipmentImages = "shipment_images"

            case estimatedSlaTime = "estimated_sla_time"

            case shipmentCreatedAt = "shipment_created_at"

            case isDpAssignEnabled = "is_dp_assign_enabled"

            case prices

            case coupon

            case packagingType = "packaging_type"

            case payments

            case orderingStore = "ordering_store"

            case invoiceId = "invoice_id"

            case totalBags = "total_bags"

            case shipmentDetails = "shipment_details"

            case customMessage = "custom_message"

            case vertical

            case paymentMode = "payment_mode"

            case deliveryDetails = "delivery_details"

            case invoice

            case customMeta = "custom_meta"

            case enableDpTracking = "enable_dp_tracking"

            case dpAssignment = "dp_assignment"

            case forwardShipmentId = "forward_shipment_id"

            case canUpdateDimension = "can_update_dimension"

            case pickedDate = "picked_date"

            case shipmentStatus = "shipment_status"

            case priorityText = "priority_text"

            case meta

            case order

            case trackingList = "tracking_list"

            case lockStatus = "lock_status"

            case operationalStatus = "operational_status"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, canUpdateDimension: Bool? = nil, companyDetails: CompanyDetails? = nil, coupon: [String: Any]? = nil, customMessage: String? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpAssignment: Bool? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, estimatedSlaTime: String? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, isDpAssignEnabled: Bool? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: ShipmentMeta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentCreatedAt: String? = nil, shipmentDetails: ShipmentDetails? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.deliverySlot = deliverySlot

            self.billingDetails = billingDetails

            self.user = user

            self.gstDetails = gstDetails

            self.paymentMethods = paymentMethods

            self.status = status

            self.dpDetails = dpDetails

            self.companyDetails = companyDetails

            self.affiliateDetails = affiliateDetails

            self.fulfilmentPriority = fulfilmentPriority

            self.shipmentId = shipmentId

            self.journeyType = journeyType

            self.totalItems = totalItems

            self.shipmentQuantity = shipmentQuantity

            self.userAgent = userAgent

            self.bags = bags

            self.bagStatusHistory = bagStatusHistory

            self.platformLogo = platformLogo

            self.fulfillingStore = fulfillingStore

            self.shipmentImages = shipmentImages

            self.estimatedSlaTime = estimatedSlaTime

            self.shipmentCreatedAt = shipmentCreatedAt

            self.isDpAssignEnabled = isDpAssignEnabled

            self.prices = prices

            self.coupon = coupon

            self.packagingType = packagingType

            self.payments = payments

            self.orderingStore = orderingStore

            self.invoiceId = invoiceId

            self.totalBags = totalBags

            self.shipmentDetails = shipmentDetails

            self.customMessage = customMessage

            self.vertical = vertical

            self.paymentMode = paymentMode

            self.deliveryDetails = deliveryDetails

            self.invoice = invoice

            self.customMeta = customMeta

            self.enableDpTracking = enableDpTracking

            self.dpAssignment = dpAssignment

            self.forwardShipmentId = forwardShipmentId

            self.canUpdateDimension = canUpdateDimension

            self.pickedDate = pickedDate

            self.shipmentStatus = shipmentStatus

            self.priorityText = priorityText

            self.meta = meta

            self.order = order

            self.trackingList = trackingList

            self.lockStatus = lockStatus

            self.operationalStatus = operationalStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyDetails = try container.decode(CompanyDetails.self, forKey: .companyDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

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
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

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
                bags = try container.decode([OrderBags].self, forKey: .bags)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

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
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDpAssignEnabled = try container.decode(Bool.self, forKey: .isDpAssignEnabled)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderingStore = try container.decode(OrderingStoreDetails.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
                shipmentDetails = try container.decode(ShipmentDetails.self, forKey: .shipmentDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMessage = try container.decode(String.self, forKey: .customMessage)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                invoice = try container.decode(InvoiceInfo.self, forKey: .invoice)

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
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpAssignment = try container.decode(Bool.self, forKey: .dpAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forwardShipmentId = try container.decode(String.self, forKey: .forwardShipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canUpdateDimension = try container.decode(Bool.self, forKey: .canUpdateDimension)

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

            do {
                priorityText = try container.decode(String.self, forKey: .priorityText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(ShipmentMeta.self, forKey: .meta)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(isDpAssignEnabled, forKey: .isDpAssignEnabled)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(customMessage, forKey: .customMessage)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(dpAssignment, forKey: .dpAssignment)

            try? container.encode(forwardShipmentId, forKey: .forwardShipmentId)

            try? container.encodeIfPresent(canUpdateDimension, forKey: .canUpdateDimension)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)
        }
    }
}
