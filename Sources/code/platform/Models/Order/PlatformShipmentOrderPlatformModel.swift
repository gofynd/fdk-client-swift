

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var vertical: String?

        public var prices: Prices?

        public var shipmentImages: [String]?

        public var operationalStatus: String?

        public var meta: Meta?

        public var enableDpTracking: Bool?

        public var payments: ShipmentPayments?

        public var invoiceId: String?

        public var order: OrderDetailsData?

        public var shipmentId: String

        public var shipmentQuantity: Int?

        public var journeyType: String?

        public var packagingType: String?

        public var fulfillingStore: FulfillingStore?

        public var priorityText: String?

        public var coupon: [String: Any]?

        public var status: ShipmentStatusData?

        public var shipmentStatus: String?

        public var trackingList: [TrackingList]?

        public var billingDetails: UserDetailsData?

        public var userAgent: String?

        public var dpDetails: DPDetailsData?

        public var orderingStore: OrderingStoreDetails?

        public var paymentMode: String?

        public var deliveryDetails: UserDetailsData?

        public var fulfilmentPriority: Int?

        public var totalBags: Int?

        public var platformLogo: String?

        public var bags: [OrderBags]?

        public var customMeta: [[String: Any]]?

        public var pickedDate: String?

        public var affiliateDetails: AffiliateDetails?

        public var invoice: EinvoiceInfo?

        public var gstDetails: GSTDetailsData?

        public var totalItems: Int?

        public var bagStatusHistory: [BagStatusHistory]?

        public var deliverySlot: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case vertical

            case prices

            case shipmentImages = "shipment_images"

            case operationalStatus = "operational_status"

            case meta

            case enableDpTracking = "enable_dp_tracking"

            case payments

            case invoiceId = "invoice_id"

            case order

            case shipmentId = "shipment_id"

            case shipmentQuantity = "shipment_quantity"

            case journeyType = "journey_type"

            case packagingType = "packaging_type"

            case fulfillingStore = "fulfilling_store"

            case priorityText = "priority_text"

            case coupon

            case status

            case shipmentStatus = "shipment_status"

            case trackingList = "tracking_list"

            case billingDetails = "billing_details"

            case userAgent = "user_agent"

            case dpDetails = "dp_details"

            case orderingStore = "ordering_store"

            case paymentMode = "payment_mode"

            case deliveryDetails = "delivery_details"

            case fulfilmentPriority = "fulfilment_priority"

            case totalBags = "total_bags"

            case platformLogo = "platform_logo"

            case bags

            case customMeta = "custom_meta"

            case pickedDate = "picked_date"

            case affiliateDetails = "affiliate_details"

            case invoice

            case gstDetails = "gst_details"

            case totalItems = "total_items"

            case bagStatusHistory = "bag_status_history"

            case deliverySlot = "delivery_slot"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, coupon: [String: Any]? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: EinvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, meta: Meta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.vertical = vertical

            self.prices = prices

            self.shipmentImages = shipmentImages

            self.operationalStatus = operationalStatus

            self.meta = meta

            self.enableDpTracking = enableDpTracking

            self.payments = payments

            self.invoiceId = invoiceId

            self.order = order

            self.shipmentId = shipmentId

            self.shipmentQuantity = shipmentQuantity

            self.journeyType = journeyType

            self.packagingType = packagingType

            self.fulfillingStore = fulfillingStore

            self.priorityText = priorityText

            self.coupon = coupon

            self.status = status

            self.shipmentStatus = shipmentStatus

            self.trackingList = trackingList

            self.billingDetails = billingDetails

            self.userAgent = userAgent

            self.dpDetails = dpDetails

            self.orderingStore = orderingStore

            self.paymentMode = paymentMode

            self.deliveryDetails = deliveryDetails

            self.fulfilmentPriority = fulfilmentPriority

            self.totalBags = totalBags

            self.platformLogo = platformLogo

            self.bags = bags

            self.customMeta = customMeta

            self.pickedDate = pickedDate

            self.affiliateDetails = affiliateDetails

            self.invoice = invoice

            self.gstDetails = gstDetails

            self.totalItems = totalItems

            self.bagStatusHistory = bagStatusHistory

            self.deliverySlot = deliverySlot
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

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
                meta = try container.decode(Meta.self, forKey: .meta)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

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
                packagingType = try container.decode(String.self, forKey: .packagingType)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

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
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(EinvoiceInfo.self, forKey: .invoice)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformShipment
         Used By: Order
     */

    class PlatformShipment: Codable {
        public var vertical: String?

        public var prices: Prices?

        public var shipmentImages: [String]?

        public var operationalStatus: String?

        public var meta: Meta?

        public var enableDpTracking: Bool?

        public var payments: ShipmentPayments?

        public var invoiceId: String?

        public var order: OrderDetailsData?

        public var shipmentId: String

        public var shipmentQuantity: Int?

        public var journeyType: String?

        public var packagingType: String?

        public var fulfillingStore: FulfillingStore?

        public var priorityText: String?

        public var coupon: [String: Any]?

        public var status: ShipmentStatusData?

        public var shipmentStatus: String?

        public var trackingList: [TrackingList]?

        public var billingDetails: UserDetailsData?

        public var userAgent: String?

        public var dpDetails: DPDetailsData?

        public var orderingStore: OrderingStoreDetails?

        public var paymentMode: String?

        public var deliveryDetails: UserDetailsData?

        public var fulfilmentPriority: Int?

        public var totalBags: Int?

        public var platformLogo: String?

        public var bags: [OrderBags]?

        public var customMeta: [[String: Any]]?

        public var pickedDate: String?

        public var affiliateDetails: AffiliateDetails?

        public var invoice: EinvoiceInfo?

        public var gstDetails: GSTDetailsData?

        public var totalItems: Int?

        public var bagStatusHistory: [BagStatusHistory]?

        public var deliverySlot: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case vertical

            case prices

            case shipmentImages = "shipment_images"

            case operationalStatus = "operational_status"

            case meta

            case enableDpTracking = "enable_dp_tracking"

            case payments

            case invoiceId = "invoice_id"

            case order

            case shipmentId = "shipment_id"

            case shipmentQuantity = "shipment_quantity"

            case journeyType = "journey_type"

            case packagingType = "packaging_type"

            case fulfillingStore = "fulfilling_store"

            case priorityText = "priority_text"

            case coupon

            case status

            case shipmentStatus = "shipment_status"

            case trackingList = "tracking_list"

            case billingDetails = "billing_details"

            case userAgent = "user_agent"

            case dpDetails = "dp_details"

            case orderingStore = "ordering_store"

            case paymentMode = "payment_mode"

            case deliveryDetails = "delivery_details"

            case fulfilmentPriority = "fulfilment_priority"

            case totalBags = "total_bags"

            case platformLogo = "platform_logo"

            case bags

            case customMeta = "custom_meta"

            case pickedDate = "picked_date"

            case affiliateDetails = "affiliate_details"

            case invoice

            case gstDetails = "gst_details"

            case totalItems = "total_items"

            case bagStatusHistory = "bag_status_history"

            case deliverySlot = "delivery_slot"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, bags: [OrderBags]? = nil, bagStatusHistory: [BagStatusHistory]? = nil, billingDetails: UserDetailsData? = nil, coupon: [String: Any]? = nil, customMeta: [[String: Any]]? = nil, deliveryDetails: UserDetailsData? = nil, deliverySlot: [String: Any]? = nil, dpDetails: DPDetailsData? = nil, enableDpTracking: Bool? = nil, fulfillingStore: FulfillingStore? = nil, fulfilmentPriority: Int? = nil, gstDetails: GSTDetailsData? = nil, invoice: EinvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, meta: Meta? = nil, operationalStatus: String? = nil, order: OrderDetailsData? = nil, orderingStore: OrderingStoreDetails? = nil, packagingType: String? = nil, payments: ShipmentPayments? = nil, paymentMode: String? = nil, pickedDate: String? = nil, platformLogo: String? = nil, prices: Prices? = nil, priorityText: String? = nil, shipmentId: String, shipmentImages: [String]? = nil, shipmentQuantity: Int? = nil, shipmentStatus: String? = nil, status: ShipmentStatusData? = nil, totalBags: Int? = nil, totalItems: Int? = nil, trackingList: [TrackingList]? = nil, userAgent: String? = nil, vertical: String? = nil) {
            self.vertical = vertical

            self.prices = prices

            self.shipmentImages = shipmentImages

            self.operationalStatus = operationalStatus

            self.meta = meta

            self.enableDpTracking = enableDpTracking

            self.payments = payments

            self.invoiceId = invoiceId

            self.order = order

            self.shipmentId = shipmentId

            self.shipmentQuantity = shipmentQuantity

            self.journeyType = journeyType

            self.packagingType = packagingType

            self.fulfillingStore = fulfillingStore

            self.priorityText = priorityText

            self.coupon = coupon

            self.status = status

            self.shipmentStatus = shipmentStatus

            self.trackingList = trackingList

            self.billingDetails = billingDetails

            self.userAgent = userAgent

            self.dpDetails = dpDetails

            self.orderingStore = orderingStore

            self.paymentMode = paymentMode

            self.deliveryDetails = deliveryDetails

            self.fulfilmentPriority = fulfilmentPriority

            self.totalBags = totalBags

            self.platformLogo = platformLogo

            self.bags = bags

            self.customMeta = customMeta

            self.pickedDate = pickedDate

            self.affiliateDetails = affiliateDetails

            self.invoice = invoice

            self.gstDetails = gstDetails

            self.totalItems = totalItems

            self.bagStatusHistory = bagStatusHistory

            self.deliverySlot = deliverySlot
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                shipmentImages = try container.decode([String].self, forKey: .shipmentImages)

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
                meta = try container.decode(Meta.self, forKey: .meta)

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
                order = try container.decode(OrderDetailsData.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

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
                packagingType = try container.decode(String.self, forKey: .packagingType)

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
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                shipmentStatus = try container.decode(String.self, forKey: .shipmentStatus)

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
                billingDetails = try container.decode(UserDetailsData.self, forKey: .billingDetails)

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
                dpDetails = try container.decode(DPDetailsData.self, forKey: .dpDetails)

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
                fulfilmentPriority = try container.decode(Int.self, forKey: .fulfilmentPriority)

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
                platformLogo = try container.decode(String.self, forKey: .platformLogo)

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
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(EinvoiceInfo.self, forKey: .invoice)

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
                totalItems = try container.decode(Int.self, forKey: .totalItems)

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
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vertical, forKey: .vertical)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentImages, forKey: .shipmentImages)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(enableDpTracking, forKey: .enableDpTracking)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(packagingType, forKey: .packagingType)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encode(priorityText, forKey: .priorityText)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(platformLogo, forKey: .platformLogo)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(pickedDate, forKey: .pickedDate)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(gstDetails, forKey: .gstDetails)

            try? container.encodeIfPresent(totalItems, forKey: .totalItems)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)
        }
    }
}
