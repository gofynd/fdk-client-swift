

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var totalBags: Int?

        public var order: OrderDetailsData?

        public var pickedDate: String?

        public var shipmentId: String

        public var meta: Meta?

        public var invoiceId: String?

        public var priorityText: String?

        public var vertical: String?

        public var deliverySlot: [String: Any]?

        public var forwardShipmentId: String?

        public var bags: [OrderBags]?

        public var orderingStore: OrderingStoreDetails?

        public var userAgent: String?

        public var status: ShipmentStatusData?

        public var enableDpTracking: Bool?

        public var shipmentStatus: String?

        public var paymentMode: String?

        public var customMeta: [[String: Any]]?

        public var totalItems: Int?

        public var billingDetails: UserDetailsData?

        public var prices: Prices?

        public var operationalStatus: String?

        public var fulfillingStore: FulfillingStore?

        public var coupon: [String: Any]?

        public var deliveryDetails: UserDetailsData?

        public var packagingType: String?

        public var affiliateDetails: AffiliateDetails?

        public var fulfilmentPriority: Int?

        public var bagStatusHistory: [BagStatusHistory]?

        public var invoice: InvoiceInfo?

        public var dpDetails: DPDetailsData?

        public var user: UserDataInfo?

        public var shipmentQuantity: Int?

        public var trackingList: [TrackingList]?

        public var journeyType: String?

        public var gstDetails: GSTDetailsData?

        public var lockStatus: Bool?

        public var paymentMethods: [String: Any]?

        public var payments: ShipmentPayments?

        public var companyDetails: CompanyDetails?

        public var platformLogo: String?

        public var shipmentImages: [String]?

        public enum CodingKeys: String, CodingKey {
            case totalBags = "total_bags"

            case order

            case pickedDate = "picked_date"

            case shipmentId = "shipment_id"

            case meta

            case invoiceId = "invoice_id"

            case priorityText = "priority_text"

            case vertical

            case deliverySlot = "delivery_slot"

            case forwardShipmentId = "forward_shipment_id"

            case bags

            case orderingStore = "ordering_store"

            case userAgent = "user_agent"

            case status

            case enableDpTracking = "enable_dp_tracking"

            case shipmentStatus = "shipment_status"

            case paymentMode = "payment_mode"

            case customMeta = "custom_meta"

            case totalItems = "total_items"

            case billingDetails = "billing_details"

            case prices

            case operationalStatus = "operational_status"

            case fulfillingStore = "fulfilling_store"

            case coupon

            case deliveryDetails = "delivery_details"

            case packagingType = "packaging_type"

            case affiliateDetails = "affiliate_details"

            case fulfilmentPriority = "fulfilment_priority"

            case bagStatusHistory = "bag_status_history"

            case invoice

            case dpDetails = "dp_details"

            case user

            case shipmentQuantity = "shipment_quantity"

            case trackingList = "tracking_list"

            case journeyType = "journey_type"

            case gstDetails = "gst_details"

            case lockStatus = "lock_status"

            case paymentMethods = "payment_methods"

            case payments

            case companyDetails = "company_details"

            case platformLogo = "platform_logo"

            case shipmentImages = "shipment_images"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, companyDetails: CompanyDetails? = nil, coupon: [String: Any]? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: Meta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.totalBags = totalBags

            self.order = order

            self.pickedDate = pickedDate

            self.shipmentId = shipmentId

            self.meta = meta

            self.invoiceId = invoiceId

            self.priorityText = priorityText

            self.vertical = vertical

            self.deliverySlot = deliverySlot

            self.forwardShipmentId = forwardShipmentId

            self.bags = bags

            self.orderingStore = orderingStore

            self.userAgent = userAgent

            self.status = status

            self.enableDpTracking = enableDpTracking

            self.shipmentStatus = shipmentStatus

            self.paymentMode = paymentMode

            self.customMeta = customMeta

            self.totalItems = totalItems

            self.billingDetails = billingDetails

            self.prices = prices

            self.operationalStatus = operationalStatus

            self.fulfillingStore = fulfillingStore

            self.coupon = coupon

            self.deliveryDetails = deliveryDetails

            self.packagingType = packagingType

            self.affiliateDetails = affiliateDetails

            self.fulfilmentPriority = fulfilmentPriority

            self.bagStatusHistory = bagStatusHistory

            self.invoice = invoice

            self.dpDetails = dpDetails

            self.user = user

            self.shipmentQuantity = shipmentQuantity

            self.trackingList = trackingList

            self.journeyType = journeyType

            self.gstDetails = gstDetails

            self.lockStatus = lockStatus

            self.paymentMethods = paymentMethods

            self.payments = payments

            self.companyDetails = companyDetails

            self.platformLogo = platformLogo

            self.shipmentImages = shipmentImages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalBags = try container.decode(Int.self, forKey: .totalBags)

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
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                bags = try container.decode([OrderBags].self, forKey: .bags)

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
                userAgent = try container.decode(String.self, forKey: .userAgent)

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
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                journeyType = try container.decode(String.self, forKey: .journeyType)

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
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(forwardShipmentId, forKey: .forwardShipmentId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var totalBags: Int?

        public var order: OrderDetailsData?

        public var pickedDate: String?

        public var shipmentId: String

        public var meta: Meta?

        public var invoiceId: String?

        public var priorityText: String?

        public var vertical: String?

        public var deliverySlot: [String: Any]?

        public var forwardShipmentId: String?

        public var bags: [OrderBags]?

        public var orderingStore: OrderingStoreDetails?

        public var userAgent: String?

        public var status: ShipmentStatusData?

        public var enableDpTracking: Bool?

        public var shipmentStatus: String?

        public var paymentMode: String?

        public var customMeta: [[String: Any]]?

        public var totalItems: Int?

        public var billingDetails: UserDetailsData?

        public var prices: Prices?

        public var operationalStatus: String?

        public var fulfillingStore: FulfillingStore?

        public var coupon: [String: Any]?

        public var deliveryDetails: UserDetailsData?

        public var packagingType: String?

        public var affiliateDetails: AffiliateDetails?

        public var fulfilmentPriority: Int?

        public var bagStatusHistory: [BagStatusHistory]?

        public var invoice: InvoiceInfo?

        public var dpDetails: DPDetailsData?

        public var user: UserDataInfo?

        public var shipmentQuantity: Int?

        public var trackingList: [TrackingList]?

        public var journeyType: String?

        public var gstDetails: GSTDetailsData?

        public var lockStatus: Bool?

        public var paymentMethods: [String: Any]?

        public var payments: ShipmentPayments?

        public var companyDetails: CompanyDetails?

        public var platformLogo: String?

        public var shipmentImages: [String]?

        public enum CodingKeys: String, CodingKey {
            case totalBags = "total_bags"

            case order

            case pickedDate = "picked_date"

            case shipmentId = "shipment_id"

            case meta

            case invoiceId = "invoice_id"

            case priorityText = "priority_text"

            case vertical

            case deliverySlot = "delivery_slot"

            case forwardShipmentId = "forward_shipment_id"

            case bags

            case orderingStore = "ordering_store"

            case userAgent = "user_agent"

            case status

            case enableDpTracking = "enable_dp_tracking"

            case shipmentStatus = "shipment_status"

            case paymentMode = "payment_mode"

            case customMeta = "custom_meta"

            case totalItems = "total_items"

            case billingDetails = "billing_details"

            case prices

            case operationalStatus = "operational_status"

            case fulfillingStore = "fulfilling_store"

            case coupon

            case deliveryDetails = "delivery_details"

            case packagingType = "packaging_type"

            case affiliateDetails = "affiliate_details"

            case fulfilmentPriority = "fulfilment_priority"

            case bagStatusHistory = "bag_status_history"

            case invoice

            case dpDetails = "dp_details"

            case user

            case shipmentQuantity = "shipment_quantity"

            case trackingList = "tracking_list"

            case journeyType = "journey_type"

            case gstDetails = "gst_details"

            case lockStatus = "lock_status"

            case paymentMethods = "payment_methods"

            case payments

            case companyDetails = "company_details"

            case platformLogo = "platform_logo"

            case shipmentImages = "shipment_images"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, companyDetails: CompanyDetails? = nil, coupon: [String: Any]? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, forwardShipmentId: String? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: InvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: Meta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, user: UserDataInfo? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.totalBags = totalBags

            self.order = order

            self.pickedDate = pickedDate

            self.shipmentId = shipmentId

            self.meta = meta

            self.invoiceId = invoiceId

            self.priorityText = priorityText

            self.vertical = vertical

            self.deliverySlot = deliverySlot

            self.forwardShipmentId = forwardShipmentId

            self.bags = bags

            self.orderingStore = orderingStore

            self.userAgent = userAgent

            self.status = status

            self.enableDpTracking = enableDpTracking

            self.shipmentStatus = shipmentStatus

            self.paymentMode = paymentMode

            self.customMeta = customMeta

            self.totalItems = totalItems

            self.billingDetails = billingDetails

            self.prices = prices

            self.operationalStatus = operationalStatus

            self.fulfillingStore = fulfillingStore

            self.coupon = coupon

            self.deliveryDetails = deliveryDetails

            self.packagingType = packagingType

            self.affiliateDetails = affiliateDetails

            self.fulfilmentPriority = fulfilmentPriority

            self.bagStatusHistory = bagStatusHistory

            self.invoice = invoice

            self.dpDetails = dpDetails

            self.user = user

            self.shipmentQuantity = shipmentQuantity

            self.trackingList = trackingList

            self.journeyType = journeyType

            self.gstDetails = gstDetails

            self.lockStatus = lockStatus

            self.paymentMethods = paymentMethods

            self.payments = payments

            self.companyDetails = companyDetails

            self.platformLogo = platformLogo

            self.shipmentImages = shipmentImages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalBags = try container.decode(Int.self, forKey: .totalBags)

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
                pickedDate = try container.decode(String.self, forKey: .pickedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

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
                bags = try container.decode([OrderBags].self, forKey: .bags)

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
                userAgent = try container.decode(String.self, forKey: .userAgent)

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
                enableDpTracking = try container.decode(Bool.self, forKey: .enableDpTracking)

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
                paymentMode = try container.decode(String.self, forKey: .paymentMode)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                prices = try container.decode(Prices.self, forKey: .prices)

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
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

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

            do {
                bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                journeyType = try container.decode(String.self, forKey: .journeyType)

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
                lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

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
                payments = try container.decode(ShipmentPayments.self, forKey: .payments)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(forwardShipmentId, forKey: .forwardShipmentId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(companyDetails, forKey: .companyDetails)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)
        }
    }
}
