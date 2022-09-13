

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsPlatformResponse
         Used By: Order
     */

    class ShipmentDetailsPlatformResponse: Codable {
        public var paymentMethods: [String: Any]

        public var requestedDpConf: RequestedDPConfs?

        public var user: UserObj

        public var cartId: Int?

        public var bags: [Bag]

        public var products: [ShipmentProduct]?

        public var payments: ShipmentPayments

        public var fyndstoreEmp: [String: Any]?

        public var invoice: ShipmentInvoice1?

        public var searchKey: [String: Any]

        public var bagStatusHistory: [BagStatusHistory]

        public var coupon: [String: Any]?

        public var deliverySlot: [String: Any]?

        public var sId: String?

        public var originalBagList: [Int]

        public var lockStatus: Bool

        public var brand: Brand

        public var restoreCoupon: Bool

        public var orderType: String

        public var prices: ShipmentPrices1?

        public var order: OrderObj

        public var shipmentUpdateTime: Double

        public var weight: [String: Any]

        public var orderValue: Double

        public var articleDetails: [String: Any]

        public var journeyType: String

        public var deliveryAddress: DeliveryAddress

        public var company: Company1

        public var orderingStore: Store1?

        public var shipmentStatus: CurrentShipmentStatus

        public var shipmentGst: ShipmentGst1

        public var noOfBagsOrder: Int

        public var orderIntegrationId: String?

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var qcRequired: [String: Any]?

        public var dpDetails: DpDetails1?

        public var restorePromos: [String: Any]?

        public var operationalStatus: String

        public var totalShipmentBags: Int

        public var shipmentId: String

        public var paymentType: String?

        public var shipmentValue: Double

        public var transactionType: String

        public var fallbackUser: [String: Any]?

        public var shipment: ShipmentDetails1

        public var isProcessing: Bool

        public var affiliateDetails: AffiliateDetails

        public var einvoiceInfo: EinvoiceInfo?

        public var shipmentQuantity: Int

        public var comment: String?

        public var orderSource: String

        public var appId: String

        public var rtoAddress: RtoAddress1

        public var tags: [String]

        public var totalShipmentsInOrder: Int

        public var fulfillingStore: Store1

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case requestedDpConf = "requested_dp_conf"

            case user

            case cartId = "cart_id"

            case bags

            case products

            case payments

            case fyndstoreEmp = "fyndstore_emp"

            case invoice

            case searchKey = "search_key"

            case bagStatusHistory = "bag_status_history"

            case coupon

            case deliverySlot = "delivery_slot"

            case sId = "s_id"

            case originalBagList = "original_bag_list"

            case lockStatus = "lock_status"

            case brand

            case restoreCoupon = "restore_coupon"

            case orderType = "order_type"

            case prices

            case order

            case shipmentUpdateTime = "shipment_update_time"

            case weight

            case orderValue = "order_value"

            case articleDetails = "article_details"

            case journeyType = "journey_type"

            case deliveryAddress = "delivery_address"

            case company

            case orderingStore = "ordering_store"

            case shipmentStatus = "shipment_status"

            case shipmentGst = "shipment_gst"

            case noOfBagsOrder = "no_of_bags_order"

            case orderIntegrationId = "order_integration_id"

            case shipmentStatusHistory = "shipment_status_history"

            case qcRequired = "qc_required"

            case dpDetails = "dp_details"

            case restorePromos = "restore_promos"

            case operationalStatus = "operational_status"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentId = "shipment_id"

            case paymentType = "payment_type"

            case shipmentValue = "shipment_value"

            case transactionType = "transaction_type"

            case fallbackUser = "fallback_user"

            case shipment

            case isProcessing = "is_processing"

            case affiliateDetails = "affiliate_details"

            case einvoiceInfo = "einvoice_info"

            case shipmentQuantity = "shipment_quantity"

            case comment

            case orderSource = "order_source"

            case appId = "app_id"

            case rtoAddress = "rto_address"

            case tags

            case totalShipmentsInOrder = "total_shipments_in_order"

            case fulfillingStore = "fulfilling_store"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.paymentMethods = paymentMethods

            self.requestedDpConf = requestedDpConf

            self.user = user

            self.cartId = cartId

            self.bags = bags

            self.products = products

            self.payments = payments

            self.fyndstoreEmp = fyndstoreEmp

            self.invoice = invoice

            self.searchKey = searchKey

            self.bagStatusHistory = bagStatusHistory

            self.coupon = coupon

            self.deliverySlot = deliverySlot

            self.sId = sId

            self.originalBagList = originalBagList

            self.lockStatus = lockStatus

            self.brand = brand

            self.restoreCoupon = restoreCoupon

            self.orderType = orderType

            self.prices = prices

            self.order = order

            self.shipmentUpdateTime = shipmentUpdateTime

            self.weight = weight

            self.orderValue = orderValue

            self.articleDetails = articleDetails

            self.journeyType = journeyType

            self.deliveryAddress = deliveryAddress

            self.company = company

            self.orderingStore = orderingStore

            self.shipmentStatus = shipmentStatus

            self.shipmentGst = shipmentGst

            self.noOfBagsOrder = noOfBagsOrder

            self.orderIntegrationId = orderIntegrationId

            self.shipmentStatusHistory = shipmentStatusHistory

            self.qcRequired = qcRequired

            self.dpDetails = dpDetails

            self.restorePromos = restorePromos

            self.operationalStatus = operationalStatus

            self.totalShipmentBags = totalShipmentBags

            self.shipmentId = shipmentId

            self.paymentType = paymentType

            self.shipmentValue = shipmentValue

            self.transactionType = transactionType

            self.fallbackUser = fallbackUser

            self.shipment = shipment

            self.isProcessing = isProcessing

            self.affiliateDetails = affiliateDetails

            self.einvoiceInfo = einvoiceInfo

            self.shipmentQuantity = shipmentQuantity

            self.comment = comment

            self.orderSource = orderSource

            self.appId = appId

            self.rtoAddress = rtoAddress

            self.tags = tags

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.fulfillingStore = fulfillingStore
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            do {
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserObj.self, forKey: .user)

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([Bag].self, forKey: .bags)

            do {
                products = try container.decode([ShipmentProduct].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

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

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            brand = try container.decode(Brand.self, forKey: .brand)

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            orderType = try container.decode(String.self, forKey: .orderType)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            order = try container.decode(OrderObj.self, forKey: .order)

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            weight = try container.decode([String: Any].self, forKey: .weight)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            company = try container.decode(Company1.self, forKey: .company)

            do {
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            transactionType = try container.decode(String.self, forKey: .transactionType)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderSource = try container.decode(String.self, forKey: .orderSource)

            appId = try container.decode(String.self, forKey: .appId)

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            tags = try container.decode([String].self, forKey: .tags)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
        }
    }
}
