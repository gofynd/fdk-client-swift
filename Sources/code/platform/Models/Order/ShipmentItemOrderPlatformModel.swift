

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var invoice: EinvoiceInfo?

        public var shipmentCreatedAt: String

        public var application: [String: Any]?

        public var shipmentId: String?

        public var lockStatus: Bool?

        public var paymentMethods: [String: Any]?

        public var channel: [String: Any]?

        public var meta: Meta?

        public var bags: [BagUnit]?

        public var user: UserDataInfo?

        public var sla: [String: Any]?

        public var company: [String: Any]?

        public var dpDetails: DPDetailsData?

        public var shipmentStatus: ShipmentStatus?

        public var id: String

        public var deliveryDetails: UserDetailsData?

        public var paymentModeInfo: PaymentModeInfo?

        public var billingDetails: UserDetailsData?

        public var orderingChannel: String?

        public var prices: Prices?

        public var totalBagsCount: Int

        public var createdAt: String

        public var invoiceId: String?

        public var journeyType: String?

        public var affiliateDetails: AffiliateDetails?

        public var pdfLinks: PDFLinks?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var fulfilmentPriority: Int?

        public var fulfillingCentre: String

        public var totalShipmentsInOrder: Int

        public enum CodingKeys: String, CodingKey {
            case invoice

            case shipmentCreatedAt = "shipment_created_at"

            case application

            case shipmentId = "shipment_id"

            case lockStatus = "lock_status"

            case paymentMethods = "payment_methods"

            case channel

            case meta

            case bags

            case user

            case sla

            case company

            case dpDetails = "dp_details"

            case shipmentStatus = "shipment_status"

            case id

            case deliveryDetails = "delivery_details"

            case paymentModeInfo = "payment_mode_info"

            case billingDetails = "billing_details"

            case orderingChannel = "ordering_channel"

            case prices

            case totalBagsCount = "total_bags_count"

            case createdAt = "created_at"

            case invoiceId = "invoice_id"

            case journeyType = "journey_type"

            case affiliateDetails = "affiliate_details"

            case pdfLinks = "pdf_links"

            case fulfillingStore = "fulfilling_store"

            case fulfilmentPriority = "fulfilment_priority"

            case fulfillingCentre = "fulfilling_centre"

            case totalShipmentsInOrder = "total_shipments_in_order"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, application: [String: Any]? = nil, bags: [BagUnit]? = nil, billingDetails: UserDetailsData? = nil, channel: [String: Any]? = nil, company: [String: Any]? = nil, createdAt: String, deliveryDetails: UserDetailsData? = nil, dpDetails: DPDetailsData? = nil, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, fulfilmentPriority: Int? = nil, id: String, invoice: EinvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: Meta? = nil, orderingChannel: String? = nil, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, pdfLinks: PDFLinks? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.invoice = invoice

            self.shipmentCreatedAt = shipmentCreatedAt

            self.application = application

            self.shipmentId = shipmentId

            self.lockStatus = lockStatus

            self.paymentMethods = paymentMethods

            self.channel = channel

            self.meta = meta

            self.bags = bags

            self.user = user

            self.sla = sla

            self.company = company

            self.dpDetails = dpDetails

            self.shipmentStatus = shipmentStatus

            self.id = id

            self.deliveryDetails = deliveryDetails

            self.paymentModeInfo = paymentModeInfo

            self.billingDetails = billingDetails

            self.orderingChannel = orderingChannel

            self.prices = prices

            self.totalBagsCount = totalBagsCount

            self.createdAt = createdAt

            self.invoiceId = invoiceId

            self.journeyType = journeyType

            self.affiliateDetails = affiliateDetails

            self.pdfLinks = pdfLinks

            self.fulfillingStore = fulfillingStore

            self.fulfilmentPriority = fulfilmentPriority

            self.fulfillingCentre = fulfillingCentre

            self.totalShipmentsInOrder = totalShipmentsInOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoice = try container.decode(EinvoiceInfo.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
                channel = try container.decode([String: Any].self, forKey: .channel)

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
                bags = try container.decode([BagUnit].self, forKey: .bags)

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
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode([String: Any].self, forKey: .company)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

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
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

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

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

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

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItem
         Used By: Order
     */

    class ShipmentItem: Codable {
        public var invoice: EinvoiceInfo?

        public var shipmentCreatedAt: String

        public var application: [String: Any]?

        public var shipmentId: String?

        public var lockStatus: Bool?

        public var paymentMethods: [String: Any]?

        public var channel: [String: Any]?

        public var meta: Meta?

        public var bags: [BagUnit]?

        public var user: UserDataInfo?

        public var sla: [String: Any]?

        public var company: [String: Any]?

        public var dpDetails: DPDetailsData?

        public var shipmentStatus: ShipmentStatus?

        public var id: String

        public var deliveryDetails: UserDetailsData?

        public var paymentModeInfo: PaymentModeInfo?

        public var billingDetails: UserDetailsData?

        public var orderingChannel: String?

        public var prices: Prices?

        public var totalBagsCount: Int

        public var createdAt: String

        public var invoiceId: String?

        public var journeyType: String?

        public var affiliateDetails: AffiliateDetails?

        public var pdfLinks: PDFLinks?

        public var fulfillingStore: ShipmentItemFulFillingStore?

        public var fulfilmentPriority: Int?

        public var fulfillingCentre: String

        public var totalShipmentsInOrder: Int

        public enum CodingKeys: String, CodingKey {
            case invoice

            case shipmentCreatedAt = "shipment_created_at"

            case application

            case shipmentId = "shipment_id"

            case lockStatus = "lock_status"

            case paymentMethods = "payment_methods"

            case channel

            case meta

            case bags

            case user

            case sla

            case company

            case dpDetails = "dp_details"

            case shipmentStatus = "shipment_status"

            case id

            case deliveryDetails = "delivery_details"

            case paymentModeInfo = "payment_mode_info"

            case billingDetails = "billing_details"

            case orderingChannel = "ordering_channel"

            case prices

            case totalBagsCount = "total_bags_count"

            case createdAt = "created_at"

            case invoiceId = "invoice_id"

            case journeyType = "journey_type"

            case affiliateDetails = "affiliate_details"

            case pdfLinks = "pdf_links"

            case fulfillingStore = "fulfilling_store"

            case fulfilmentPriority = "fulfilment_priority"

            case fulfillingCentre = "fulfilling_centre"

            case totalShipmentsInOrder = "total_shipments_in_order"
        }

        public init(affiliateDetails: AffiliateDetails? = nil, application: [String: Any]? = nil, bags: [BagUnit]? = nil, billingDetails: UserDetailsData? = nil, channel: [String: Any]? = nil, company: [String: Any]? = nil, createdAt: String, deliveryDetails: UserDetailsData? = nil, dpDetails: DPDetailsData? = nil, fulfillingCentre: String, fulfillingStore: ShipmentItemFulFillingStore? = nil, fulfilmentPriority: Int? = nil, id: String, invoice: EinvoiceInfo? = nil, invoiceId: String? = nil, journeyType: String? = nil, lockStatus: Bool? = nil, meta: Meta? = nil, orderingChannel: String? = nil, paymentMethods: [String: Any]? = nil, paymentModeInfo: PaymentModeInfo? = nil, pdfLinks: PDFLinks? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, sla: [String: Any]? = nil, totalBagsCount: Int, totalShipmentsInOrder: Int, user: UserDataInfo? = nil) {
            self.invoice = invoice

            self.shipmentCreatedAt = shipmentCreatedAt

            self.application = application

            self.shipmentId = shipmentId

            self.lockStatus = lockStatus

            self.paymentMethods = paymentMethods

            self.channel = channel

            self.meta = meta

            self.bags = bags

            self.user = user

            self.sla = sla

            self.company = company

            self.dpDetails = dpDetails

            self.shipmentStatus = shipmentStatus

            self.id = id

            self.deliveryDetails = deliveryDetails

            self.paymentModeInfo = paymentModeInfo

            self.billingDetails = billingDetails

            self.orderingChannel = orderingChannel

            self.prices = prices

            self.totalBagsCount = totalBagsCount

            self.createdAt = createdAt

            self.invoiceId = invoiceId

            self.journeyType = journeyType

            self.affiliateDetails = affiliateDetails

            self.pdfLinks = pdfLinks

            self.fulfillingStore = fulfillingStore

            self.fulfilmentPriority = fulfilmentPriority

            self.fulfillingCentre = fulfillingCentre

            self.totalShipmentsInOrder = totalShipmentsInOrder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoice = try container.decode(EinvoiceInfo.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            do {
                application = try container.decode([String: Any].self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

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
                channel = try container.decode([String: Any].self, forKey: .channel)

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
                bags = try container.decode([BagUnit].self, forKey: .bags)

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
                sla = try container.decode([String: Any].self, forKey: .sla)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode([String: Any].self, forKey: .company)

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
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                deliveryDetails = try container.decode(UserDetailsData.self, forKey: .deliveryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentModeInfo = try container.decode(PaymentModeInfo.self, forKey: .paymentModeInfo)

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
                orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

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

            totalBagsCount = try container.decode(Int.self, forKey: .totalBagsCount)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                invoiceId = try container.decode(String.self, forKey: .invoiceId)

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
                affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)

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

            fulfillingCentre = try container.decode(String.self, forKey: .fulfillingCentre)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(channel, forKey: .channel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(sla, forKey: .sla)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryDetails, forKey: .deliveryDetails)

            try? container.encodeIfPresent(paymentModeInfo, forKey: .paymentModeInfo)

            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalBagsCount, forKey: .totalBagsCount)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(fulfilmentPriority, forKey: .fulfilmentPriority)

            try? container.encodeIfPresent(fulfillingCentre, forKey: .fulfillingCentre)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)
        }
    }
}
