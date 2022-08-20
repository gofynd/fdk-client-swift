

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDetailsPlatformResponse
         Used By: Order
     */

    class OrderDetailsPlatformResponse: Codable {
        public var einvoiceInfo: EinvoiceInfo?

        public var requestedDpConf: RequestedDPConfs?

        public var payments: ShipmentPayments

        public var shipmentStatus: CurrentShipmentStatus

        public var totalShipmentBags: Int

        public var originalBagList: [Int]

        public var bagStatusHistory: [BagStatusHistory]

        public var user: UserObj

        public var affiliateDetails: AffiliateDetails

        public var lockStatus: Bool

        public var orderIntegrationId: String?

        public var invoice: ShipmentInvoice1?

        public var restorePromos: [String: Any]?

        public var fallbackUser: [String: Any]?

        public var restoreCoupon: Bool

        public var shipmentUpdateTime: Double

        public var rtoAddress: RtoAddress1

        public var shipmentGst: ShipmentGst1

        public var articleDetails: [String: Any]

        public var shipmentValue: Double

        public var shipmentQuantity: Int

        public var paymentType: String?

        public var shipmentId: String

        public var deliverySlot: [String: Any]?

        public var deliveryAddress: DeliveryAddress

        public var fyndstoreEmp: [String: Any]?

        public var products: [ShipmentProduct]?

        public var orderingStore: Store1?

        public var noOfBagsOrder: Int

        public var shipment: ShipmentDetails1

        public var sId: String?

        public var tags: [String]

        public var orderType: String

        public var searchKey: [String: Any]

        public var comment: String?

        public var fulfillingStore: Store1

        public var orderValue: Double

        public var journeyType: String

        public var paymentMethods: [String: Any]

        public var order: OrderObj

        public var isProcessing: Bool

        public var qcRequired: [String: Any]?

        public var transactionType: String

        public var totalShipmentsInOrder: Int

        public var cartId: Int?

        public var operationalStatus: String

        public var brand: Brand

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var coupon: [String: Any]?

        public var dpDetails: DpDetails1?

        public var company: Company1

        public var orderSource: String

        public var weight: [String: Any]

        public var bags: [Bag]

        public var appId: String

        public var prices: ShipmentPrices1?

        public enum CodingKeys: String, CodingKey {
            case einvoiceInfo = "einvoice_info"

            case requestedDpConf = "requested_dp_conf"

            case payments

            case shipmentStatus = "shipment_status"

            case totalShipmentBags = "total_shipment_bags"

            case originalBagList = "original_bag_list"

            case bagStatusHistory = "bag_status_history"

            case user

            case affiliateDetails = "affiliate_details"

            case lockStatus = "lock_status"

            case orderIntegrationId = "order_integration_id"

            case invoice

            case restorePromos = "restore_promos"

            case fallbackUser = "fallback_user"

            case restoreCoupon = "restore_coupon"

            case shipmentUpdateTime = "shipment_update_time"

            case rtoAddress = "rto_address"

            case shipmentGst = "shipment_gst"

            case articleDetails = "article_details"

            case shipmentValue = "shipment_value"

            case shipmentQuantity = "shipment_quantity"

            case paymentType = "payment_type"

            case shipmentId = "shipment_id"

            case deliverySlot = "delivery_slot"

            case deliveryAddress = "delivery_address"

            case fyndstoreEmp = "fyndstore_emp"

            case products

            case orderingStore = "ordering_store"

            case noOfBagsOrder = "no_of_bags_order"

            case shipment

            case sId = "s_id"

            case tags

            case orderType = "order_type"

            case searchKey = "search_key"

            case comment

            case fulfillingStore = "fulfilling_store"

            case orderValue = "order_value"

            case journeyType = "journey_type"

            case paymentMethods = "payment_methods"

            case order

            case isProcessing = "is_processing"

            case qcRequired = "qc_required"

            case transactionType = "transaction_type"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case cartId = "cart_id"

            case operationalStatus = "operational_status"

            case brand

            case shipmentStatusHistory = "shipment_status_history"

            case coupon

            case dpDetails = "dp_details"

            case company

            case orderSource = "order_source"

            case weight

            case bags

            case appId = "app_id"

            case prices
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.einvoiceInfo = einvoiceInfo

            self.requestedDpConf = requestedDpConf

            self.payments = payments

            self.shipmentStatus = shipmentStatus

            self.totalShipmentBags = totalShipmentBags

            self.originalBagList = originalBagList

            self.bagStatusHistory = bagStatusHistory

            self.user = user

            self.affiliateDetails = affiliateDetails

            self.lockStatus = lockStatus

            self.orderIntegrationId = orderIntegrationId

            self.invoice = invoice

            self.restorePromos = restorePromos

            self.fallbackUser = fallbackUser

            self.restoreCoupon = restoreCoupon

            self.shipmentUpdateTime = shipmentUpdateTime

            self.rtoAddress = rtoAddress

            self.shipmentGst = shipmentGst

            self.articleDetails = articleDetails

            self.shipmentValue = shipmentValue

            self.shipmentQuantity = shipmentQuantity

            self.paymentType = paymentType

            self.shipmentId = shipmentId

            self.deliverySlot = deliverySlot

            self.deliveryAddress = deliveryAddress

            self.fyndstoreEmp = fyndstoreEmp

            self.products = products

            self.orderingStore = orderingStore

            self.noOfBagsOrder = noOfBagsOrder

            self.shipment = shipment

            self.sId = sId

            self.tags = tags

            self.orderType = orderType

            self.searchKey = searchKey

            self.comment = comment

            self.fulfillingStore = fulfillingStore

            self.orderValue = orderValue

            self.journeyType = journeyType

            self.paymentMethods = paymentMethods

            self.order = order

            self.isProcessing = isProcessing

            self.qcRequired = qcRequired

            self.transactionType = transactionType

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.cartId = cartId

            self.operationalStatus = operationalStatus

            self.brand = brand

            self.shipmentStatusHistory = shipmentStatusHistory

            self.coupon = coupon

            self.dpDetails = dpDetails

            self.company = company

            self.orderSource = orderSource

            self.weight = weight

            self.bags = bags

            self.appId = appId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

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

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            user = try container.decode(UserObj.self, forKey: .user)

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

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

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

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
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            tags = try container.decode([String].self, forKey: .tags)

            orderType = try container.decode(String.self, forKey: .orderType)

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            order = try container.decode(OrderObj.self, forKey: .order)

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transactionType = try container.decode(String.self, forKey: .transactionType)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            brand = try container.decode(Brand.self, forKey: .brand)

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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

            company = try container.decode(Company1.self, forKey: .company)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            weight = try container.decode([String: Any].self, forKey: .weight)

            bags = try container.decode([Bag].self, forKey: .bags)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
