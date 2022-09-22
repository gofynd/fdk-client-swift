

import Foundation
public extension PlatformClient {
    /*
         Model: Shipment
         Used By: Order
     */

    class Shipment: Codable {
        public var journeyType: String

        public var shipmentValue: Double

        public var prices: ShipmentPrices1?

        public var rtoAddress: RtoAddress1

        public var transactionType: String

        public var products: [ShipmentProduct]?

        public var qcRequired: [String: Any]?

        public var orderIntegrationId: String?

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var weight: [String: Any]

        public var operationalStatus: String

        public var paymentType: String?

        public var requestedDpConf: RequestedDPConfs?

        public var fyndstoreEmp: [String: Any]?

        public var restorePromos: [String: Any]?

        public var user: UserObj

        public var invoice: ShipmentInvoice1?

        public var searchKey: [String: Any]

        public var totalShipmentBags: Int

        public var brand: Brand

        public var orderType: String

        public var coupon: [String: Any]?

        public var shipmentId: String

        public var sId: String?

        public var orderValue: Double

        public var affiliateDetails: AffiliateDetails

        public var noOfBagsOrder: Int

        public var restoreCoupon: Bool

        public var lockStatus: Bool

        public var payments: ShipmentPayments

        public var orderingStore: Store1?

        public var cartId: Int?

        public var totalShipmentsInOrder: Int

        public var articleDetails: [String: Any]

        public var orderSource: String

        public var shipment: ShipmentDetails1

        public var shipmentStatus: CurrentShipmentStatus

        public var bags: [Bag]

        public var comment: String?

        public var deliverySlot: [String: Any]?

        public var appId: String

        public var isProcessing: Bool

        public var order: OrderObj

        public var company: Company1

        public var einvoiceInfo: EinvoiceInfo?

        public var fulfillingStore: Store1

        public var paymentMethods: [String: Any]

        public var shipmentQuantity: Int

        public var shipmentUpdateTime: Double

        public var tags: [String]

        public var originalBagList: [Int]

        public var shipmentGst: ShipmentGst1

        public var fallbackUser: [String: Any]?

        public var dpDetails: DpDetails1?

        public var deliveryAddress: DeliveryAddress

        public var bagStatusHistory: [BagStatusHistory]

        public enum CodingKeys: String, CodingKey {
            case journeyType = "journey_type"

            case shipmentValue = "shipment_value"

            case prices

            case rtoAddress = "rto_address"

            case transactionType = "transaction_type"

            case products

            case qcRequired = "qc_required"

            case orderIntegrationId = "order_integration_id"

            case shipmentStatusHistory = "shipment_status_history"

            case weight

            case operationalStatus = "operational_status"

            case paymentType = "payment_type"

            case requestedDpConf = "requested_dp_conf"

            case fyndstoreEmp = "fyndstore_emp"

            case restorePromos = "restore_promos"

            case user

            case invoice

            case searchKey = "search_key"

            case totalShipmentBags = "total_shipment_bags"

            case brand

            case orderType = "order_type"

            case coupon

            case shipmentId = "shipment_id"

            case sId = "s_id"

            case orderValue = "order_value"

            case affiliateDetails = "affiliate_details"

            case noOfBagsOrder = "no_of_bags_order"

            case restoreCoupon = "restore_coupon"

            case lockStatus = "lock_status"

            case payments

            case orderingStore = "ordering_store"

            case cartId = "cart_id"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case articleDetails = "article_details"

            case orderSource = "order_source"

            case shipment

            case shipmentStatus = "shipment_status"

            case bags

            case comment

            case deliverySlot = "delivery_slot"

            case appId = "app_id"

            case isProcessing = "is_processing"

            case order

            case company

            case einvoiceInfo = "einvoice_info"

            case fulfillingStore = "fulfilling_store"

            case paymentMethods = "payment_methods"

            case shipmentQuantity = "shipment_quantity"

            case shipmentUpdateTime = "shipment_update_time"

            case tags

            case originalBagList = "original_bag_list"

            case shipmentGst = "shipment_gst"

            case fallbackUser = "fallback_user"

            case dpDetails = "dp_details"

            case deliveryAddress = "delivery_address"

            case bagStatusHistory = "bag_status_history"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.journeyType = journeyType

            self.shipmentValue = shipmentValue

            self.prices = prices

            self.rtoAddress = rtoAddress

            self.transactionType = transactionType

            self.products = products

            self.qcRequired = qcRequired

            self.orderIntegrationId = orderIntegrationId

            self.shipmentStatusHistory = shipmentStatusHistory

            self.weight = weight

            self.operationalStatus = operationalStatus

            self.paymentType = paymentType

            self.requestedDpConf = requestedDpConf

            self.fyndstoreEmp = fyndstoreEmp

            self.restorePromos = restorePromos

            self.user = user

            self.invoice = invoice

            self.searchKey = searchKey

            self.totalShipmentBags = totalShipmentBags

            self.brand = brand

            self.orderType = orderType

            self.coupon = coupon

            self.shipmentId = shipmentId

            self.sId = sId

            self.orderValue = orderValue

            self.affiliateDetails = affiliateDetails

            self.noOfBagsOrder = noOfBagsOrder

            self.restoreCoupon = restoreCoupon

            self.lockStatus = lockStatus

            self.payments = payments

            self.orderingStore = orderingStore

            self.cartId = cartId

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.articleDetails = articleDetails

            self.orderSource = orderSource

            self.shipment = shipment

            self.shipmentStatus = shipmentStatus

            self.bags = bags

            self.comment = comment

            self.deliverySlot = deliverySlot

            self.appId = appId

            self.isProcessing = isProcessing

            self.order = order

            self.company = company

            self.einvoiceInfo = einvoiceInfo

            self.fulfillingStore = fulfillingStore

            self.paymentMethods = paymentMethods

            self.shipmentQuantity = shipmentQuantity

            self.shipmentUpdateTime = shipmentUpdateTime

            self.tags = tags

            self.originalBagList = originalBagList

            self.shipmentGst = shipmentGst

            self.fallbackUser = fallbackUser

            self.dpDetails = dpDetails

            self.deliveryAddress = deliveryAddress

            self.bagStatusHistory = bagStatusHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            transactionType = try container.decode(String.self, forKey: .transactionType)

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

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            weight = try container.decode([String: Any].self, forKey: .weight)

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

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

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

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

            user = try container.decode(UserObj.self, forKey: .user)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            brand = try container.decode(Brand.self, forKey: .brand)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            do {
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            bags = try container.decode([Bag].self, forKey: .bags)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            appId = try container.decode(String.self, forKey: .appId)

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            order = try container.decode(OrderObj.self, forKey: .order)

            company = try container.decode(Company1.self, forKey: .company)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            tags = try container.decode([String].self, forKey: .tags)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

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

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
        }
    }
}
