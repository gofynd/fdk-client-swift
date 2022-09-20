

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsPlatformResponse
         Used By: Order
     */

    class ShipmentDetailsPlatformResponse: Codable {
        public var shipmentValue: Double

        public var lockStatus: Bool

        public var fallbackUser: [String: Any]?

        public var qcRequired: [String: Any]?

        public var articleDetails: [String: Any]

        public var paymentType: String?

        public var operationalStatus: String

        public var totalShipmentsInOrder: Int

        public var restoreCoupon: Bool

        public var journeyType: String

        public var comment: String?

        public var affiliateDetails: AffiliateDetails

        public var fyndstoreEmp: [String: Any]?

        public var paymentMethods: [String: Any]

        public var tags: [String]

        public var prices: ShipmentPrices1?

        public var shipmentGst: ShipmentGst1

        public var deliveryAddress: DeliveryAddress

        public var sId: String?

        public var weight: [String: Any]

        public var order: OrderObj

        public var company: Company1

        public var rtoAddress: RtoAddress1

        public var orderValue: Double

        public var products: [ShipmentProduct]?

        public var user: UserObj

        public var shipmentId: String

        public var orderIntegrationId: String?

        public var payments: ShipmentPayments

        public var deliverySlot: [String: Any]?

        public var searchKey: [String: Any]

        public var invoice: ShipmentInvoice1?

        public var shipmentUpdateTime: Double

        public var fulfillingStore: Store1

        public var requestedDpConf: RequestedDPConfs?

        public var shipmentQuantity: Int

        public var totalShipmentBags: Int

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var isProcessing: Bool

        public var appId: String

        public var orderingStore: Store1?

        public var cartId: Int?

        public var einvoiceInfo: EinvoiceInfo?

        public var bags: [Bag]

        public var dpDetails: DpDetails1?

        public var orderType: String

        public var brand: Brand

        public var originalBagList: [Int]

        public var transactionType: String

        public var restorePromos: [String: Any]?

        public var shipmentStatus: CurrentShipmentStatus

        public var shipment: ShipmentDetails1

        public var bagStatusHistory: [BagStatusHistory]

        public var noOfBagsOrder: Int

        public var coupon: [String: Any]?

        public var orderSource: String

        public enum CodingKeys: String, CodingKey {
            case shipmentValue = "shipment_value"

            case lockStatus = "lock_status"

            case fallbackUser = "fallback_user"

            case qcRequired = "qc_required"

            case articleDetails = "article_details"

            case paymentType = "payment_type"

            case operationalStatus = "operational_status"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case restoreCoupon = "restore_coupon"

            case journeyType = "journey_type"

            case comment

            case affiliateDetails = "affiliate_details"

            case fyndstoreEmp = "fyndstore_emp"

            case paymentMethods = "payment_methods"

            case tags

            case prices

            case shipmentGst = "shipment_gst"

            case deliveryAddress = "delivery_address"

            case sId = "s_id"

            case weight

            case order

            case company

            case rtoAddress = "rto_address"

            case orderValue = "order_value"

            case products

            case user

            case shipmentId = "shipment_id"

            case orderIntegrationId = "order_integration_id"

            case payments

            case deliverySlot = "delivery_slot"

            case searchKey = "search_key"

            case invoice

            case shipmentUpdateTime = "shipment_update_time"

            case fulfillingStore = "fulfilling_store"

            case requestedDpConf = "requested_dp_conf"

            case shipmentQuantity = "shipment_quantity"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentStatusHistory = "shipment_status_history"

            case isProcessing = "is_processing"

            case appId = "app_id"

            case orderingStore = "ordering_store"

            case cartId = "cart_id"

            case einvoiceInfo = "einvoice_info"

            case bags

            case dpDetails = "dp_details"

            case orderType = "order_type"

            case brand

            case originalBagList = "original_bag_list"

            case transactionType = "transaction_type"

            case restorePromos = "restore_promos"

            case shipmentStatus = "shipment_status"

            case shipment

            case bagStatusHistory = "bag_status_history"

            case noOfBagsOrder = "no_of_bags_order"

            case coupon

            case orderSource = "order_source"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.shipmentValue = shipmentValue

            self.lockStatus = lockStatus

            self.fallbackUser = fallbackUser

            self.qcRequired = qcRequired

            self.articleDetails = articleDetails

            self.paymentType = paymentType

            self.operationalStatus = operationalStatus

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.restoreCoupon = restoreCoupon

            self.journeyType = journeyType

            self.comment = comment

            self.affiliateDetails = affiliateDetails

            self.fyndstoreEmp = fyndstoreEmp

            self.paymentMethods = paymentMethods

            self.tags = tags

            self.prices = prices

            self.shipmentGst = shipmentGst

            self.deliveryAddress = deliveryAddress

            self.sId = sId

            self.weight = weight

            self.order = order

            self.company = company

            self.rtoAddress = rtoAddress

            self.orderValue = orderValue

            self.products = products

            self.user = user

            self.shipmentId = shipmentId

            self.orderIntegrationId = orderIntegrationId

            self.payments = payments

            self.deliverySlot = deliverySlot

            self.searchKey = searchKey

            self.invoice = invoice

            self.shipmentUpdateTime = shipmentUpdateTime

            self.fulfillingStore = fulfillingStore

            self.requestedDpConf = requestedDpConf

            self.shipmentQuantity = shipmentQuantity

            self.totalShipmentBags = totalShipmentBags

            self.shipmentStatusHistory = shipmentStatusHistory

            self.isProcessing = isProcessing

            self.appId = appId

            self.orderingStore = orderingStore

            self.cartId = cartId

            self.einvoiceInfo = einvoiceInfo

            self.bags = bags

            self.dpDetails = dpDetails

            self.orderType = orderType

            self.brand = brand

            self.originalBagList = originalBagList

            self.transactionType = transactionType

            self.restorePromos = restorePromos

            self.shipmentStatus = shipmentStatus

            self.shipment = shipment

            self.bagStatusHistory = bagStatusHistory

            self.noOfBagsOrder = noOfBagsOrder

            self.coupon = coupon

            self.orderSource = orderSource
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            do {
                fallbackUser = try container.decode([String: Any].self, forKey: .fallbackUser)

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

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            do {
                fyndstoreEmp = try container.decode([String: Any].self, forKey: .fyndstoreEmp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            tags = try container.decode([String].self, forKey: .tags)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode([String: Any].self, forKey: .weight)

            order = try container.decode(OrderObj.self, forKey: .order)

            company = try container.decode(Company1.self, forKey: .company)

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                products = try container.decode([ShipmentProduct].self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            user = try container.decode(UserObj.self, forKey: .user)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            do {
                deliverySlot = try container.decode([String: Any].self, forKey: .deliverySlot)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            do {
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            appId = try container.decode(String.self, forKey: .appId)

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

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bags = try container.decode([Bag].self, forKey: .bags)

            do {
                dpDetails = try container.decode(DpDetails1.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)

            brand = try container.decode(Brand.self, forKey: .brand)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            transactionType = try container.decode(String.self, forKey: .transactionType)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            do {
                coupon = try container.decode([String: Any].self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderSource = try container.decode(String.self, forKey: .orderSource)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)
        }
    }
}
