

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var order: OrderDetailsData?

        public var userAgent: String?

        public var invoice: InvoiceInfo?

        public var payments: ShipmentPayments?

        public var invoiceId: String?

        public var shipmentStatus: String?

        public var totalItems: Int?

        public var estimatedSlaTime: String?

        public var prices: Prices?

        public var shipmentImages: [String]?

        public var coupon: [String: Any]?

        public var journeyType: String?

        public var platformLogo: String?

        public var shipmentDetails: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var paymentMethods: [String: Any]?

        public var enableDpTracking: Bool?

        public var gstDetails: GSTDetailsData?

        public var shipmentQuantity: Int?

        public var trackingList: [TrackingList]?

        public var status: ShipmentStatusData?

        public var customMessage: String?

        public var shipmentId: String

        public var paymentMode: String?

        public var meta: Meta?

        public var packagingType: String?

        public var fulfilmentPriority: Int?

        public var operationalStatus: String?

        public var companyDetails: CompanyDetails?

        public var deliveryDetails: UserDetailsData?

        public var user: UserDataInfo?

        public var customMeta: [[String: Any]]?

        public var deliverySlot: [String: Any]?

        public var pickedDate: String?

        public var vertical: String?

        public var bags: [OrderBags]?

        public var priorityText: String?

        public var totalBags: Int?

        public var orderingStore: OrderingStoreDetails?

        public var forwardShipmentId: String?

        public var dpDetails: DPDetailsData?

        public var lockStatus: Bool?

        public var fulfillingStore: FulfillingStore?

        public var bagStatusHistory: [BagStatusHistory]?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case order

            case userAgent = "user_agent"

            case invoice

            case payments

            case invoiceId = "invoice_id"

            case shipmentStatus = "shipment_status"

            case totalItems = "total_items"

            case estimatedSlaTime = "estimated_sla_time"

            case prices

            case shipmentImages = "shipment_images"

            case coupon

            case journeyType = "journey_type"

            case platformLogo = "platform_logo"

            case shipmentDetails = "shipment_details"

            case billingDetails = "billing_details"

            case paymentMethods = "payment_methods"

            case enableDpTracking = "enable_dp_tracking"

            case gstDetails = "gst_details"

            case shipmentQuantity = "shipment_quantity"

            case trackingList = "tracking_list"

            case status

            case customMessage = "custom_message"

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case meta

            case packagingType = "packaging_type"

            case fulfilmentPriority = "fulfilment_priority"

            case operationalStatus = "operational_status"

            case companyDetails = "company_details"

            case deliveryDetails = "delivery_details"

            case user

            case customMeta = "custom_meta"

            case deliverySlot = "delivery_slot"

            case pickedDate = "picked_date"

            case vertical

            case bags

            case priorityText = "priority_text"

            case totalBags = "total_bags"

            case orderingStore = "ordering_store"

            case forwardShipmentId = "forward_shipment_id"

            case dpDetails = "dp_details"

            case lockStatus = "lock_status"

            case fulfillingStore = "fulfilling_store"

            case bagStatusHistory = "bag_status_history"

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, companyDetails: CompanyDetails? = nil, coupon: [String: Any]? = nil, customMessage: String? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, estimatedSlaTime: String? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: Meta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentDetails: [String: Any]? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.order = order

            self.userAgent = userAgent

            self.invoice = invoice

            self.payments = payments

            self.invoiceId = invoiceId

            self.shipmentStatus = shipmentStatus

            self.totalItems = totalItems

            self.estimatedSlaTime = estimatedSlaTime

            self.prices = prices

            self.shipmentImages = shipmentImages

            self.coupon = coupon

            self.journeyType = journeyType

            self.platformLogo = platformLogo

            self.shipmentDetails = shipmentDetails

            self.billingDetails = billingDetails

            self.paymentMethods = paymentMethods

            self.enableDpTracking = enableDpTracking

            self.gstDetails = gstDetails

            self.shipmentQuantity = shipmentQuantity

            self.trackingList = trackingList

            self.status = status

            self.customMessage = customMessage

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.meta = meta

            self.packagingType = packagingType

            self.fulfilmentPriority = fulfilmentPriority

            self.operationalStatus = operationalStatus

            self.companyDetails = companyDetails

            self.deliveryDetails = deliveryDetails

            self.user = user

            self.customMeta = customMeta

            self.deliverySlot = deliverySlot

            self.pickedDate = pickedDate

            self.vertical = vertical

            self.bags = bags

            self.priorityText = priorityText

            self.totalBags = totalBags

            self.orderingStore = orderingStore

            self.forwardShipmentId = forwardShipmentId

            self.dpDetails = dpDetails

            self.lockStatus = lockStatus

            self.fulfillingStore = fulfillingStore

            self.bagStatusHistory = bagStatusHistory

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                invoice = try container.decode(InvoiceInfo.self, forKey: .invoice)

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
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentDetails = try container.decode([String: Any].self, forKey: .shipmentDetails)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                customMessage = try container.decode(String.self, forKey: .customMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

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
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

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
                companyDetails = try container.decode(CompanyDetails.self, forKey: .companyDetails)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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
                priorityText = try container.decode(String.self, forKey: .priorityText)

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
                orderingStore = try container.decode(OrderingStoreDetails.self, forKey: .orderingStore)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customMessage, forKey: .customMessage)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(forwardShipmentId, forKey: .forwardShipmentId)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var order: OrderDetailsData?

        public var userAgent: String?

        public var invoice: InvoiceInfo?

        public var payments: ShipmentPayments?

        public var invoiceId: String?

        public var shipmentStatus: String?

        public var totalItems: Int?

        public var estimatedSlaTime: String?

        public var prices: Prices?

        public var shipmentImages: [String]?

        public var coupon: [String: Any]?

        public var journeyType: String?

        public var platformLogo: String?

        public var shipmentDetails: [String: Any]?

        public var billingDetails: UserDetailsData?

        public var paymentMethods: [String: Any]?

        public var enableDpTracking: Bool?

        public var gstDetails: GSTDetailsData?

        public var shipmentQuantity: Int?

        public var trackingList: [TrackingList]?

        public var status: ShipmentStatusData?

        public var customMessage: String?

        public var shipmentId: String

        public var paymentMode: String?

        public var meta: Meta?

        public var packagingType: String?

        public var fulfilmentPriority: Int?

        public var operationalStatus: String?

        public var companyDetails: CompanyDetails?

        public var deliveryDetails: UserDetailsData?

        public var user: UserDataInfo?

        public var customMeta: [[String: Any]]?

        public var deliverySlot: [String: Any]?

        public var pickedDate: String?

        public var vertical: String?

        public var bags: [OrderBags]?

        public var priorityText: String?

        public var totalBags: Int?

        public var orderingStore: OrderingStoreDetails?

        public var forwardShipmentId: String?

        public var dpDetails: DPDetailsData?

        public var lockStatus: Bool?

        public var fulfillingStore: FulfillingStore?

        public var bagStatusHistory: [BagStatusHistory]?

        public var affiliateDetails: AffiliateDetails?

        public enum CodingKeys: String, CodingKey {
            case order

            case userAgent = "user_agent"

            case invoice

            case payments

            case invoiceId = "invoice_id"

            case shipmentStatus = "shipment_status"

            case totalItems = "total_items"

            case estimatedSlaTime = "estimated_sla_time"

            case prices

            case shipmentImages = "shipment_images"

            case coupon

            case journeyType = "journey_type"

            case platformLogo = "platform_logo"

            case shipmentDetails = "shipment_details"

            case billingDetails = "billing_details"

            case paymentMethods = "payment_methods"

            case enableDpTracking = "enable_dp_tracking"

            case gstDetails = "gst_details"

            case shipmentQuantity = "shipment_quantity"

            case trackingList = "tracking_list"

            case status

            case customMessage = "custom_message"

            case shipmentId = "shipment_id"

            case paymentMode = "payment_mode"

            case meta

            case packagingType = "packaging_type"

            case fulfilmentPriority = "fulfilment_priority"

            case operationalStatus = "operational_status"

            case companyDetails = "company_details"

            case deliveryDetails = "delivery_details"

            case user

            case customMeta = "custom_meta"

            case deliverySlot = "delivery_slot"

            case pickedDate = "picked_date"

            case vertical

            case bags

            case priorityText = "priority_text"

            case totalBags = "total_bags"

            case orderingStore = "ordering_store"

            case forwardShipmentId = "forward_shipment_id"

            case dpDetails = "dp_details"

            case lockStatus = "lock_status"

            case fulfillingStore = "fulfilling_store"

            case bagStatusHistory = "bag_status_history"

            case affiliateDetails = "affiliate_details"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, companyDetails: CompanyDetails? = nil, coupon: [String: Any]? = nil, customMessage: String? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, estimatedSlaTime: String? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: Meta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentDetails: [String: Any]? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.order = order

            self.userAgent = userAgent

            self.invoice = invoice

            self.payments = payments

            self.invoiceId = invoiceId

            self.shipmentStatus = shipmentStatus

            self.totalItems = totalItems

            self.estimatedSlaTime = estimatedSlaTime

            self.prices = prices

            self.shipmentImages = shipmentImages

            self.coupon = coupon

            self.journeyType = journeyType

            self.platformLogo = platformLogo

            self.shipmentDetails = shipmentDetails

            self.billingDetails = billingDetails

            self.paymentMethods = paymentMethods

            self.enableDpTracking = enableDpTracking

            self.gstDetails = gstDetails

            self.shipmentQuantity = shipmentQuantity

            self.trackingList = trackingList

            self.status = status

            self.customMessage = customMessage

            self.shipmentId = shipmentId

            self.paymentMode = paymentMode

            self.meta = meta

            self.packagingType = packagingType

            self.fulfilmentPriority = fulfilmentPriority

            self.operationalStatus = operationalStatus

            self.companyDetails = companyDetails

            self.deliveryDetails = deliveryDetails

            self.user = user

            self.customMeta = customMeta

            self.deliverySlot = deliverySlot

            self.pickedDate = pickedDate

            self.vertical = vertical

            self.bags = bags

            self.priorityText = priorityText

            self.totalBags = totalBags

            self.orderingStore = orderingStore

            self.forwardShipmentId = forwardShipmentId

            self.dpDetails = dpDetails

            self.lockStatus = lockStatus

            self.fulfillingStore = fulfillingStore

            self.bagStatusHistory = bagStatusHistory

            self.affiliateDetails = affiliateDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDetailsData.self, forKey: .order)

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
                invoice = try container.decode(InvoiceInfo.self, forKey: .invoice)

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
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentDetails = try container.decode([String: Any].self, forKey: .shipmentDetails)

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
                paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

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
                gstDetails = try container.decode(GSTDetailsData.self, forKey: .gstDetails)

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
                trackingList = try container.decode([TrackingList].self, forKey: .trackingList)

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
                customMessage = try container.decode(String.self, forKey: .customMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

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
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

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
                companyDetails = try container.decode(CompanyDetails.self, forKey: .companyDetails)

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
                user = try container.decode(UserDataInfo.self, forKey: .user)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                vertical = try container.decode(String.self, forKey: .vertical)

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
                priorityText = try container.decode(String.self, forKey: .priorityText)

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
                orderingStore = try container.decode(OrderingStoreDetails.self, forKey: .orderingStore)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(shipmentDetails, forKey: .shipmentDetails)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customMessage, forKey: .customMessage)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(forwardShipmentId, forKey: .forwardShipmentId)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)
        }
    }
}
