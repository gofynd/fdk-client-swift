

import Foundation
public extension PlatformClient {
    /*
         Model: OrderDetailsPlatformResponse
         Used By: Order
     */

    class OrderDetailsPlatformResponse: Codable {
        public var prices: ShipmentPrices1?

        public var restorePromos: [String: Any]?

        public var totalShipmentsInOrder: Int

        public var paymentType: String?

        public var deliverySlot: [String: Any]?

        public var fyndstoreEmp: [String: Any]?

        public var journeyType: String

        public var affiliateDetails: AffiliateDetails

        public var orderSource: String

        public var fulfillingStore: Store1

        public var originalBagList: [Int]

        public var user: UserObj

        public var company: Company1

        public var orderType: String

        public var orderingStore: Store1?

        public var appId: String

        public var qcRequired: [String: Any]?

        public var restoreCoupon: Bool

        public var transactionType: String

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var operationalStatus: String

        public var totalShipmentBags: Int

        public var fallbackUser: [String: Any]?

        public var shipmentGst: ShipmentGst1

        public var products: [ShipmentProduct]?

        public var shipmentStatus: CurrentShipmentStatus

        public var payments: ShipmentPayments

        public var cartId: Int?

        public var orderValue: Double

        public var comment: String?

        public var dpDetails: DpDetails1?

        public var searchKey: [String: Any]

        public var einvoiceInfo: EinvoiceInfo?

        public var shipmentUpdateTime: Double

        public var shipmentQuantity: Int

        public var noOfBagsOrder: Int

        public var weight: [String: Any]

        public var brand: Brand

        public var orderIntegrationId: String?

        public var articleDetails: [String: Any]

        public var tags: [String]

        public var shipmentId: String

        public var lockStatus: Bool

        public var shipmentValue: Double

        public var paymentMethods: [String: Any]

        public var shipment: ShipmentDetails1

        public var sId: String?

        public var deliveryAddress: DeliveryAddress

        public var requestedDpConf: RequestedDPConfs?

        public var isProcessing: Bool

        public var bags: [Bag]

        public var order: OrderObj

        public var coupon: [String: Any]?

        public var rtoAddress: RtoAddress1

        public var invoice: ShipmentInvoice1?

        public var bagStatusHistory: [BagStatusHistory]

        public enum CodingKeys: String, CodingKey {
            case prices

            case restorePromos = "restore_promos"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case paymentType = "payment_type"

            case deliverySlot = "delivery_slot"

            case fyndstoreEmp = "fyndstore_emp"

            case journeyType = "journey_type"

            case affiliateDetails = "affiliate_details"

            case orderSource = "order_source"

            case fulfillingStore = "fulfilling_store"

            case originalBagList = "original_bag_list"

            case user

            case company

            case orderType = "order_type"

            case orderingStore = "ordering_store"

            case appId = "app_id"

            case qcRequired = "qc_required"

            case restoreCoupon = "restore_coupon"

            case transactionType = "transaction_type"

            case shipmentStatusHistory = "shipment_status_history"

            case operationalStatus = "operational_status"

            case totalShipmentBags = "total_shipment_bags"

            case fallbackUser = "fallback_user"

            case shipmentGst = "shipment_gst"

            case products

            case shipmentStatus = "shipment_status"

            case payments

            case cartId = "cart_id"

            case orderValue = "order_value"

            case comment

            case dpDetails = "dp_details"

            case searchKey = "search_key"

            case einvoiceInfo = "einvoice_info"

            case shipmentUpdateTime = "shipment_update_time"

            case shipmentQuantity = "shipment_quantity"

            case noOfBagsOrder = "no_of_bags_order"

            case weight

            case brand

            case orderIntegrationId = "order_integration_id"

            case articleDetails = "article_details"

            case tags

            case shipmentId = "shipment_id"

            case lockStatus = "lock_status"

            case shipmentValue = "shipment_value"

            case paymentMethods = "payment_methods"

            case shipment

            case sId = "s_id"

            case deliveryAddress = "delivery_address"

            case requestedDpConf = "requested_dp_conf"

            case isProcessing = "is_processing"

            case bags

            case order

            case coupon

            case rtoAddress = "rto_address"

            case invoice

            case bagStatusHistory = "bag_status_history"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.prices = prices

            self.restorePromos = restorePromos

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.paymentType = paymentType

            self.deliverySlot = deliverySlot

            self.fyndstoreEmp = fyndstoreEmp

            self.journeyType = journeyType

            self.affiliateDetails = affiliateDetails

            self.orderSource = orderSource

            self.fulfillingStore = fulfillingStore

            self.originalBagList = originalBagList

            self.user = user

            self.company = company

            self.orderType = orderType

            self.orderingStore = orderingStore

            self.appId = appId

            self.qcRequired = qcRequired

            self.restoreCoupon = restoreCoupon

            self.transactionType = transactionType

            self.shipmentStatusHistory = shipmentStatusHistory

            self.operationalStatus = operationalStatus

            self.totalShipmentBags = totalShipmentBags

            self.fallbackUser = fallbackUser

            self.shipmentGst = shipmentGst

            self.products = products

            self.shipmentStatus = shipmentStatus

            self.payments = payments

            self.cartId = cartId

            self.orderValue = orderValue

            self.comment = comment

            self.dpDetails = dpDetails

            self.searchKey = searchKey

            self.einvoiceInfo = einvoiceInfo

            self.shipmentUpdateTime = shipmentUpdateTime

            self.shipmentQuantity = shipmentQuantity

            self.noOfBagsOrder = noOfBagsOrder

            self.weight = weight

            self.brand = brand

            self.orderIntegrationId = orderIntegrationId

            self.articleDetails = articleDetails

            self.tags = tags

            self.shipmentId = shipmentId

            self.lockStatus = lockStatus

            self.shipmentValue = shipmentValue

            self.paymentMethods = paymentMethods

            self.shipment = shipment

            self.sId = sId

            self.deliveryAddress = deliveryAddress

            self.requestedDpConf = requestedDpConf

            self.isProcessing = isProcessing

            self.bags = bags

            self.order = order

            self.coupon = coupon

            self.rtoAddress = rtoAddress

            self.invoice = invoice

            self.bagStatusHistory = bagStatusHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

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

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

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
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            user = try container.decode(UserObj.self, forKey: .user)

            company = try container.decode(Company1.self, forKey: .company)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            transactionType = try container.decode(String.self, forKey: .transactionType)

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            do {
                products = try container.decode([ShipmentProduct].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            weight = try container.decode([String: Any].self, forKey: .weight)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            tags = try container.decode([String].self, forKey: .tags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            do {
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            bags = try container.decode([Bag].self, forKey: .bags)

            order = try container.decode(OrderObj.self, forKey: .order)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)
        }
    }
}
