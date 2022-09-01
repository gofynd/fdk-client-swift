

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var einvoiceInfo: EinvoiceInfo?

        public var fulfillingStore: Store1

        public var bags: [Bag]

        public var shipment: ShipmentDetails1

        public var brand: Brand

        public var shipmentQuantity: Int

        public var shipmentGst: ShipmentGst1

        public var weight: [String: Any]

        public var user: UserObj

        public var paymentMethods: [String: Any]

        public var payments: ShipmentPayments

        public var prices: ShipmentPrices1?

        public var requestedDpConf: RequestedDPConfs?

        public var totalShipmentBags: Int

        public var invoice: ShipmentInvoice1?

        public var transactionType: String

        public var deliverySlot: [String: Any]?

        public var paymentType: String?

        public var bagStatusHistory: [BagStatusHistory]

        public var noOfBagsOrder: Int

        public var shipmentUpdateTime: Double

        public var order: OrderObj

        public var tags: [String]

        public var journeyType: String

        public var company: Company1

        public var affiliateDetails: AffiliateDetails

        public var coupon: [String: Any]?

        public var isProcessing: Bool

        public var lockStatus: Bool

        public var orderSource: String

        public var shipmentValue: Double

        public var restoreCoupon: Bool

        public var deliveryAddress: DeliveryAddress

        public var sId: String?

        public var restorePromos: [String: Any]?

        public var shipmentStatus: CurrentShipmentStatus

        public var orderType: String

        public var cartId: Int?

        public var orderIntegrationId: String?

        public var dpDetails: DpDetails1?

        public var products: [ShipmentProduct]?

        public var qcRequired: [String: Any]?

        public var shipmentId: String

        public var operationalStatus: String

        public var orderingStore: Store1?

        public var searchKey: [String: Any]

        public var totalShipmentsInOrder: Int

        public var rtoAddress: RtoAddress1

        public var fallbackUser: [String: Any]?

        public var comment: String?

        public var fyndstoreEmp: [String: Any]?

        public var orderValue: Double

        public var originalBagList: [Int]

        public var appId: String

        public var articleDetails: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case shipmentStatusHistory = "shipment_status_history"

            case einvoiceInfo = "einvoice_info"

            case fulfillingStore = "fulfilling_store"

            case bags

            case shipment

            case brand

            case shipmentQuantity = "shipment_quantity"

            case shipmentGst = "shipment_gst"

            case weight

            case user

            case paymentMethods = "payment_methods"

            case payments

            case prices

            case requestedDpConf = "requested_dp_conf"

            case totalShipmentBags = "total_shipment_bags"

            case invoice

            case transactionType = "transaction_type"

            case deliverySlot = "delivery_slot"

            case paymentType = "payment_type"

            case bagStatusHistory = "bag_status_history"

            case noOfBagsOrder = "no_of_bags_order"

            case shipmentUpdateTime = "shipment_update_time"

            case order

            case tags

            case journeyType = "journey_type"

            case company

            case affiliateDetails = "affiliate_details"

            case coupon

            case isProcessing = "is_processing"

            case lockStatus = "lock_status"

            case orderSource = "order_source"

            case shipmentValue = "shipment_value"

            case restoreCoupon = "restore_coupon"

            case deliveryAddress = "delivery_address"

            case sId = "s_id"

            case restorePromos = "restore_promos"

            case shipmentStatus = "shipment_status"

            case orderType = "order_type"

            case cartId = "cart_id"

            case orderIntegrationId = "order_integration_id"

            case dpDetails = "dp_details"

            case products

            case qcRequired = "qc_required"

            case shipmentId = "shipment_id"

            case operationalStatus = "operational_status"

            case orderingStore = "ordering_store"

            case searchKey = "search_key"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case rtoAddress = "rto_address"

            case fallbackUser = "fallback_user"

            case comment

            case fyndstoreEmp = "fyndstore_emp"

            case orderValue = "order_value"

            case originalBagList = "original_bag_list"

            case appId = "app_id"

            case articleDetails = "article_details"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.shipmentStatusHistory = shipmentStatusHistory

            self.einvoiceInfo = einvoiceInfo

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.shipment = shipment

            self.brand = brand

            self.shipmentQuantity = shipmentQuantity

            self.shipmentGst = shipmentGst

            self.weight = weight

            self.user = user

            self.paymentMethods = paymentMethods

            self.payments = payments

            self.prices = prices

            self.requestedDpConf = requestedDpConf

            self.totalShipmentBags = totalShipmentBags

            self.invoice = invoice

            self.transactionType = transactionType

            self.deliverySlot = deliverySlot

            self.paymentType = paymentType

            self.bagStatusHistory = bagStatusHistory

            self.noOfBagsOrder = noOfBagsOrder

            self.shipmentUpdateTime = shipmentUpdateTime

            self.order = order

            self.tags = tags

            self.journeyType = journeyType

            self.company = company

            self.affiliateDetails = affiliateDetails

            self.coupon = coupon

            self.isProcessing = isProcessing

            self.lockStatus = lockStatus

            self.orderSource = orderSource

            self.shipmentValue = shipmentValue

            self.restoreCoupon = restoreCoupon

            self.deliveryAddress = deliveryAddress

            self.sId = sId

            self.restorePromos = restorePromos

            self.shipmentStatus = shipmentStatus

            self.orderType = orderType

            self.cartId = cartId

            self.orderIntegrationId = orderIntegrationId

            self.dpDetails = dpDetails

            self.products = products

            self.qcRequired = qcRequired

            self.shipmentId = shipmentId

            self.operationalStatus = operationalStatus

            self.orderingStore = orderingStore

            self.searchKey = searchKey

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.rtoAddress = rtoAddress

            self.fallbackUser = fallbackUser

            self.comment = comment

            self.fyndstoreEmp = fyndstoreEmp

            self.orderValue = orderValue

            self.originalBagList = originalBagList

            self.appId = appId

            self.articleDetails = articleDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            bags = try container.decode([Bag].self, forKey: .bags)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            brand = try container.decode(Brand.self, forKey: .brand)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            weight = try container.decode([String: Any].self, forKey: .weight)

            user = try container.decode(UserObj.self, forKey: .user)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transactionType = try container.decode(String.self, forKey: .transactionType)

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            order = try container.decode(OrderObj.self, forKey: .order)

            tags = try container.decode([String].self, forKey: .tags)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            company = try container.decode(Company1.self, forKey: .company)

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

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
                dpDetails = try container.decode(DpDetails1.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode([ShipmentProduct].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            do {
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

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

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            appId = try container.decode(String.self, forKey: .appId)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)
        }
    }
}
