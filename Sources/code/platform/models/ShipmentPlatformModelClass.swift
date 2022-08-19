

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var noOfBagsOrder: Int

        public var isProcessing: Bool

        public var restorePromos: [String: Any]?

        public var comment: String?

        public var shipmentUpdateTime: Double

        public var shipmentId: String

        public var qcRequired: [String: Any]?

        public var journeyType: String

        public var lockStatus: Bool

        public var originalBagList: [Int]

        public var order: OrderObj

        public var company: Company1

        public var orderValue: Double

        public var paymentMethods: [String: Any]

        public var searchKey: [String: Any]

        public var weight: [String: Any]

        public var sId: String?

        public var tags: [String]

        public var shipmentQuantity: Int

        public var transactionType: String

        public var shipmentValue: Double

        public var cartId: Int?

        public var fulfillingStore: Store1

        public var paymentType: String?

        public var shipmentGst: ShipmentGST

        public var shipmentStatus: CurrentShipmentStatus

        public var totalShipmentsInOrder: Int

        public var products: [ShipmentProduct]?

        public var dpDetails: DPDetails?

        public var bags: [Bag]

        public var user: UserObj

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var payments: ShipmentPayments

        public var invoice: ShipmentInvoice1?

        public var prices: ShipmentPrices1?

        public var totalShipmentBags: Int

        public var articleDetails: [String: Any]

        public var fallbackUser: [String: Any]?

        public var appId: String

        public var brand: Brand

        public var einvoiceInfo: EinvoiceInfo?

        public var rtoAddress: RTOAddress

        public var orderType: String

        public var bagStatusHistory: [BagStatusHistory]

        public var shipment: ShipmentDetails1

        public var deliveryAddress: DeliveryAddress

        public var orderSource: String

        public var requestedDpConf: RequestedDPConfs?

        public var affiliateDetails: AffiliateDetails

        public var deliverySlot: [String: Any]?

        public var operationalStatus: String

        public var orderingStore: Store1?

        public var orderIntegrationId: String?

        public var coupon: [String: Any]?

        public var fyndstoreEmp: [String: Any]?

        public var restoreCoupon: Bool

        public enum CodingKeys: String, CodingKey {
            case noOfBagsOrder = "no_of_bags_order"

            case isProcessing = "is_processing"

            case restorePromos = "restore_promos"

            case comment

            case shipmentUpdateTime = "shipment_update_time"

            case shipmentId = "shipment_id"

            case qcRequired = "qc_required"

            case journeyType = "journey_type"

            case lockStatus = "lock_status"

            case originalBagList = "original_bag_list"

            case order

            case company

            case orderValue = "order_value"

            case paymentMethods = "payment_methods"

            case searchKey = "search_key"

            case weight

            case sId = "s_id"

            case tags

            case shipmentQuantity = "shipment_quantity"

            case transactionType = "transaction_type"

            case shipmentValue = "shipment_value"

            case cartId = "cart_id"

            case fulfillingStore = "fulfilling_store"

            case paymentType = "payment_type"

            case shipmentGst = "shipment_gst"

            case shipmentStatus = "shipment_status"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case products

            case dpDetails = "dp_details"

            case bags

            case user

            case shipmentStatusHistory = "shipment_status_history"

            case payments

            case invoice

            case prices

            case totalShipmentBags = "total_shipment_bags"

            case articleDetails = "article_details"

            case fallbackUser = "fallback_user"

            case appId = "app_id"

            case brand

            case einvoiceInfo = "einvoice_info"

            case rtoAddress = "rto_address"

            case orderType = "order_type"

            case bagStatusHistory = "bag_status_history"

            case shipment

            case deliveryAddress = "delivery_address"

            case orderSource = "order_source"

            case requestedDpConf = "requested_dp_conf"

            case affiliateDetails = "affiliate_details"

            case deliverySlot = "delivery_slot"

            case operationalStatus = "operational_status"

            case orderingStore = "ordering_store"

            case orderIntegrationId = "order_integration_id"

            case coupon

            case fyndstoreEmp = "fyndstore_emp"

            case restoreCoupon = "restore_coupon"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DPDetails? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RTOAddress, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGST, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.noOfBagsOrder = noOfBagsOrder

            self.isProcessing = isProcessing

            self.restorePromos = restorePromos

            self.comment = comment

            self.shipmentUpdateTime = shipmentUpdateTime

            self.shipmentId = shipmentId

            self.qcRequired = qcRequired

            self.journeyType = journeyType

            self.lockStatus = lockStatus

            self.originalBagList = originalBagList

            self.order = order

            self.company = company

            self.orderValue = orderValue

            self.paymentMethods = paymentMethods

            self.searchKey = searchKey

            self.weight = weight

            self.sId = sId

            self.tags = tags

            self.shipmentQuantity = shipmentQuantity

            self.transactionType = transactionType

            self.shipmentValue = shipmentValue

            self.cartId = cartId

            self.fulfillingStore = fulfillingStore

            self.paymentType = paymentType

            self.shipmentGst = shipmentGst

            self.shipmentStatus = shipmentStatus

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.products = products

            self.dpDetails = dpDetails

            self.bags = bags

            self.user = user

            self.shipmentStatusHistory = shipmentStatusHistory

            self.payments = payments

            self.invoice = invoice

            self.prices = prices

            self.totalShipmentBags = totalShipmentBags

            self.articleDetails = articleDetails

            self.fallbackUser = fallbackUser

            self.appId = appId

            self.brand = brand

            self.einvoiceInfo = einvoiceInfo

            self.rtoAddress = rtoAddress

            self.orderType = orderType

            self.bagStatusHistory = bagStatusHistory

            self.shipment = shipment

            self.deliveryAddress = deliveryAddress

            self.orderSource = orderSource

            self.requestedDpConf = requestedDpConf

            self.affiliateDetails = affiliateDetails

            self.deliverySlot = deliverySlot

            self.operationalStatus = operationalStatus

            self.orderingStore = orderingStore

            self.orderIntegrationId = orderIntegrationId

            self.coupon = coupon

            self.fyndstoreEmp = fyndstoreEmp

            self.restoreCoupon = restoreCoupon
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            order = try container.decode(OrderObj.self, forKey: .order)

            company = try container.decode(Company1.self, forKey: .company)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            weight = try container.decode([String: Any].self, forKey: .weight)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            tags = try container.decode([String].self, forKey: .tags)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            transactionType = try container.decode(String.self, forKey: .transactionType)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentGst = try container.decode(ShipmentGST.self, forKey: .shipmentGst)

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                products = try container.decode([ShipmentProduct].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpDetails = try container.decode(DPDetails.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([Bag].self, forKey: .bags)

            user = try container.decode(UserObj.self, forKey: .user)

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rtoAddress = try container.decode(RTOAddress.self, forKey: .rtoAddress)

            orderType = try container.decode(String.self, forKey: .orderType)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            do {
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            do {
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)
        }
    }
}
