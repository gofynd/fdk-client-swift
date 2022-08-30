

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsPlatformResponse
         Used By: Order
     */

    class ShipmentDetailsPlatformResponse: Codable {
        public var bagStatusHistory: [BagStatusHistory]

        public var qcRequired: [String: Any]?

        public var deliverySlot: [String: Any]?

        public var noOfBagsOrder: Int

        public var searchKey: [String: Any]

        public var deliveryAddress: DeliveryAddress

        public var tags: [String]

        public var totalShipmentBags: Int

        public var orderValue: Double

        public var totalShipmentsInOrder: Int

        public var dpDetails: DpDetails1?

        public var restorePromos: [String: Any]?

        public var company: Company1

        public var products: [ShipmentProduct]?

        public var operationalStatus: String

        public var einvoiceInfo: EinvoiceInfo?

        public var restoreCoupon: Bool

        public var sId: String?

        public var shipmentId: String

        public var paymentMethods: [String: Any]

        public var appId: String

        public var rtoAddress: RtoAddress1

        public var prices: ShipmentPrices1?

        public var shipment: ShipmentDetails1

        public var comment: String?

        public var shipmentGst: ShipmentGst1

        public var bags: [Bag]

        public var affiliateDetails: AffiliateDetails

        public var order: OrderObj

        public var articleDetails: [String: Any]

        public var fulfillingStore: Store1

        public var invoice: ShipmentInvoice1?

        public var isProcessing: Bool

        public var orderIntegrationId: String?

        public var journeyType: String

        public var fallbackUser: [String: Any]?

        public var lockStatus: Bool

        public var orderSource: String

        public var paymentType: String?

        public var shipmentQuantity: Int

        public var payments: ShipmentPayments

        public var user: UserObj

        public var coupon: [String: Any]?

        public var orderingStore: Store1?

        public var shipmentStatus: CurrentShipmentStatus

        public var fyndstoreEmp: [String: Any]?

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var shipmentValue: Double

        public var brand: Brand

        public var requestedDpConf: RequestedDPConfs?

        public var originalBagList: [Int]

        public var weight: [String: Any]

        public var orderType: String

        public var transactionType: String

        public var shipmentUpdateTime: Double

        public var cartId: Int?

        public enum CodingKeys: String, CodingKey {
            case bagStatusHistory = "bag_status_history"

            case qcRequired = "qc_required"

            case deliverySlot = "delivery_slot"

            case noOfBagsOrder = "no_of_bags_order"

            case searchKey = "search_key"

            case deliveryAddress = "delivery_address"

            case tags

            case totalShipmentBags = "total_shipment_bags"

            case orderValue = "order_value"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case dpDetails = "dp_details"

            case restorePromos = "restore_promos"

            case company

            case products

            case operationalStatus = "operational_status"

            case einvoiceInfo = "einvoice_info"

            case restoreCoupon = "restore_coupon"

            case sId = "s_id"

            case shipmentId = "shipment_id"

            case paymentMethods = "payment_methods"

            case appId = "app_id"

            case rtoAddress = "rto_address"

            case prices

            case shipment

            case comment

            case shipmentGst = "shipment_gst"

            case bags

            case affiliateDetails = "affiliate_details"

            case order

            case articleDetails = "article_details"

            case fulfillingStore = "fulfilling_store"

            case invoice

            case isProcessing = "is_processing"

            case orderIntegrationId = "order_integration_id"

            case journeyType = "journey_type"

            case fallbackUser = "fallback_user"

            case lockStatus = "lock_status"

            case orderSource = "order_source"

            case paymentType = "payment_type"

            case shipmentQuantity = "shipment_quantity"

            case payments

            case user

            case coupon

            case orderingStore = "ordering_store"

            case shipmentStatus = "shipment_status"

            case fyndstoreEmp = "fyndstore_emp"

            case shipmentStatusHistory = "shipment_status_history"

            case shipmentValue = "shipment_value"

            case brand

            case requestedDpConf = "requested_dp_conf"

            case originalBagList = "original_bag_list"

            case weight

            case orderType = "order_type"

            case transactionType = "transaction_type"

            case shipmentUpdateTime = "shipment_update_time"

            case cartId = "cart_id"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.bagStatusHistory = bagStatusHistory

            self.qcRequired = qcRequired

            self.deliverySlot = deliverySlot

            self.noOfBagsOrder = noOfBagsOrder

            self.searchKey = searchKey

            self.deliveryAddress = deliveryAddress

            self.tags = tags

            self.totalShipmentBags = totalShipmentBags

            self.orderValue = orderValue

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.dpDetails = dpDetails

            self.restorePromos = restorePromos

            self.company = company

            self.products = products

            self.operationalStatus = operationalStatus

            self.einvoiceInfo = einvoiceInfo

            self.restoreCoupon = restoreCoupon

            self.sId = sId

            self.shipmentId = shipmentId

            self.paymentMethods = paymentMethods

            self.appId = appId

            self.rtoAddress = rtoAddress

            self.prices = prices

            self.shipment = shipment

            self.comment = comment

            self.shipmentGst = shipmentGst

            self.bags = bags

            self.affiliateDetails = affiliateDetails

            self.order = order

            self.articleDetails = articleDetails

            self.fulfillingStore = fulfillingStore

            self.invoice = invoice

            self.isProcessing = isProcessing

            self.orderIntegrationId = orderIntegrationId

            self.journeyType = journeyType

            self.fallbackUser = fallbackUser

            self.lockStatus = lockStatus

            self.orderSource = orderSource

            self.paymentType = paymentType

            self.shipmentQuantity = shipmentQuantity

            self.payments = payments

            self.user = user

            self.coupon = coupon

            self.orderingStore = orderingStore

            self.shipmentStatus = shipmentStatus

            self.fyndstoreEmp = fyndstoreEmp

            self.shipmentStatusHistory = shipmentStatusHistory

            self.shipmentValue = shipmentValue

            self.brand = brand

            self.requestedDpConf = requestedDpConf

            self.originalBagList = originalBagList

            self.weight = weight

            self.orderType = orderType

            self.transactionType = transactionType

            self.shipmentUpdateTime = shipmentUpdateTime

            self.cartId = cartId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

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

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            tags = try container.decode([String].self, forKey: .tags)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

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

            company = try container.decode(Company1.self, forKey: .company)

            do {
                products = try container.decode([ShipmentProduct].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            appId = try container.decode(String.self, forKey: .appId)

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            bags = try container.decode([Bag].self, forKey: .bags)

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            order = try container.decode(OrderObj.self, forKey: .order)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            user = try container.decode(UserObj.self, forKey: .user)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

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

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            brand = try container.decode(Brand.self, forKey: .brand)

            do {
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            weight = try container.decode([String: Any].self, forKey: .weight)

            orderType = try container.decode(String.self, forKey: .orderType)

            transactionType = try container.decode(String.self, forKey: .transactionType)

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            do {
                cartId = try container.decode(Int.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(cartId, forKey: .cartId)
        }
    }
}
