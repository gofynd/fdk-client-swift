

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsByAffiliateBagIdResponse
         Used By: Order
     */

    class ShipmentDetailsByAffiliateBagIdResponse: Codable {
        public var coupon: [String: Any]?

        public var deliverySlot: [String: Any]?

        public var totalShipmentBags: Int

        public var shipmentId: String

        public var shipment: ShipmentDetails1

        public var orderingStore: Store1?

        public var fyndstoreEmp: [String: Any]?

        public var shipmentQuantity: Int

        public var einvoiceInfo: EinvoiceInfo?

        public var transactionType: String

        public var dpDetails: DpDetails1?

        public var searchKey: [String: Any]

        public var shipmentValue: Double

        public var totalShipmentsInOrder: Int

        public var user: UserObj

        public var fulfillingStore: Store1

        public var paymentType: String?

        public var deliveryAddress: DeliveryAddress

        public var articleDetails: [String: Any]

        public var bagStatusHistory: [BagStatusHistory]

        public var invoice: ShipmentInvoice1?

        public var products: [ShipmentProduct]?

        public var requestedDpConf: RequestedDPConfs?

        public var fallbackUser: [String: Any]?

        public var brand: Brand

        public var orderValue: Double

        public var orderSource: String

        public var prices: ShipmentPrices1?

        public var shipmentGst: ShipmentGst1

        public var operationalStatus: String

        public var sId: String?

        public var affiliateDetails: AffiliateDetails

        public var isProcessing: Bool

        public var rtoAddress: RtoAddress1

        public var restorePromos: [String: Any]?

        public var weight: [String: Any]

        public var bags: [Bag]

        public var company: Company1

        public var originalBagList: [Int]

        public var appId: String

        public var restoreCoupon: Bool

        public var shipmentStatus: CurrentShipmentStatus

        public var payments: ShipmentPayments

        public var journeyType: String

        public var lockStatus: Bool

        public var comment: String?

        public var noOfBagsOrder: Int

        public var orderIntegrationId: String?

        public var cartId: Int?

        public var paymentMethods: [String: Any]

        public var shipmentStatusHistory: [ShipmentStatusCommon]

        public var shipmentUpdateTime: Double

        public var tags: [String]

        public var order: OrderObj

        public var qcRequired: [String: Any]?

        public var orderType: String

        public enum CodingKeys: String, CodingKey {
            case coupon

            case deliverySlot = "delivery_slot"

            case totalShipmentBags = "total_shipment_bags"

            case shipmentId = "shipment_id"

            case shipment

            case orderingStore = "ordering_store"

            case fyndstoreEmp = "fyndstore_emp"

            case shipmentQuantity = "shipment_quantity"

            case einvoiceInfo = "einvoice_info"

            case transactionType = "transaction_type"

            case dpDetails = "dp_details"

            case searchKey = "search_key"

            case shipmentValue = "shipment_value"

            case totalShipmentsInOrder = "total_shipments_in_order"

            case user

            case fulfillingStore = "fulfilling_store"

            case paymentType = "payment_type"

            case deliveryAddress = "delivery_address"

            case articleDetails = "article_details"

            case bagStatusHistory = "bag_status_history"

            case invoice

            case products

            case requestedDpConf = "requested_dp_conf"

            case fallbackUser = "fallback_user"

            case brand

            case orderValue = "order_value"

            case orderSource = "order_source"

            case prices

            case shipmentGst = "shipment_gst"

            case operationalStatus = "operational_status"

            case sId = "s_id"

            case affiliateDetails = "affiliate_details"

            case isProcessing = "is_processing"

            case rtoAddress = "rto_address"

            case restorePromos = "restore_promos"

            case weight

            case bags

            case company

            case originalBagList = "original_bag_list"

            case appId = "app_id"

            case restoreCoupon = "restore_coupon"

            case shipmentStatus = "shipment_status"

            case payments

            case journeyType = "journey_type"

            case lockStatus = "lock_status"

            case comment

            case noOfBagsOrder = "no_of_bags_order"

            case orderIntegrationId = "order_integration_id"

            case cartId = "cart_id"

            case paymentMethods = "payment_methods"

            case shipmentStatusHistory = "shipment_status_history"

            case shipmentUpdateTime = "shipment_update_time"

            case tags

            case order

            case qcRequired = "qc_required"

            case orderType = "order_type"
        }

        public init(affiliateDetails: AffiliateDetails, appId: String, articleDetails: [String: Any], bags: [Bag], bagStatusHistory: [BagStatusHistory], brand: Brand, cartId: Int? = nil, comment: String? = nil, company: Company1, coupon: [String: Any]? = nil, deliveryAddress: DeliveryAddress, deliverySlot: [String: Any]? = nil, dpDetails: DpDetails1? = nil, einvoiceInfo: EinvoiceInfo? = nil, fallbackUser: [String: Any]? = nil, fulfillingStore: Store1, fyndstoreEmp: [String: Any]? = nil, invoice: ShipmentInvoice1? = nil, isProcessing: Bool, journeyType: String, lockStatus: Bool, noOfBagsOrder: Int, operationalStatus: String, order: OrderObj, orderingStore: Store1? = nil, orderIntegrationId: String? = nil, orderSource: String, orderType: String, orderValue: Double, originalBagList: [Int], payments: ShipmentPayments, paymentMethods: [String: Any], paymentType: String? = nil, prices: ShipmentPrices1? = nil, products: [ShipmentProduct]? = nil, qcRequired: [String: Any]? = nil, requestedDpConf: RequestedDPConfs? = nil, restoreCoupon: Bool, restorePromos: [String: Any]? = nil, rtoAddress: RtoAddress1, searchKey: [String: Any], shipment: ShipmentDetails1, shipmentGst: ShipmentGst1, shipmentId: String, shipmentQuantity: Int, shipmentStatus: CurrentShipmentStatus, shipmentStatusHistory: [ShipmentStatusCommon], shipmentUpdateTime: Double, shipmentValue: Double, sId: String? = nil, tags: [String], totalShipmentsInOrder: Int, totalShipmentBags: Int, transactionType: String, user: UserObj, weight: [String: Any]) {
            self.coupon = coupon

            self.deliverySlot = deliverySlot

            self.totalShipmentBags = totalShipmentBags

            self.shipmentId = shipmentId

            self.shipment = shipment

            self.orderingStore = orderingStore

            self.fyndstoreEmp = fyndstoreEmp

            self.shipmentQuantity = shipmentQuantity

            self.einvoiceInfo = einvoiceInfo

            self.transactionType = transactionType

            self.dpDetails = dpDetails

            self.searchKey = searchKey

            self.shipmentValue = shipmentValue

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.user = user

            self.fulfillingStore = fulfillingStore

            self.paymentType = paymentType

            self.deliveryAddress = deliveryAddress

            self.articleDetails = articleDetails

            self.bagStatusHistory = bagStatusHistory

            self.invoice = invoice

            self.products = products

            self.requestedDpConf = requestedDpConf

            self.fallbackUser = fallbackUser

            self.brand = brand

            self.orderValue = orderValue

            self.orderSource = orderSource

            self.prices = prices

            self.shipmentGst = shipmentGst

            self.operationalStatus = operationalStatus

            self.sId = sId

            self.affiliateDetails = affiliateDetails

            self.isProcessing = isProcessing

            self.rtoAddress = rtoAddress

            self.restorePromos = restorePromos

            self.weight = weight

            self.bags = bags

            self.company = company

            self.originalBagList = originalBagList

            self.appId = appId

            self.restoreCoupon = restoreCoupon

            self.shipmentStatus = shipmentStatus

            self.payments = payments

            self.journeyType = journeyType

            self.lockStatus = lockStatus

            self.comment = comment

            self.noOfBagsOrder = noOfBagsOrder

            self.orderIntegrationId = orderIntegrationId

            self.cartId = cartId

            self.paymentMethods = paymentMethods

            self.shipmentStatusHistory = shipmentStatusHistory

            self.shipmentUpdateTime = shipmentUpdateTime

            self.tags = tags

            self.order = order

            self.qcRequired = qcRequired

            self.orderType = orderType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            totalShipmentBags = try container.decode(Int.self, forKey: .totalShipmentBags)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            shipment = try container.decode(ShipmentDetails1.self, forKey: .shipment)

            do {
                orderingStore = try container.decode(Store1.self, forKey: .orderingStore)

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

            shipmentQuantity = try container.decode(Int.self, forKey: .shipmentQuantity)

            do {
                einvoiceInfo = try container.decode(EinvoiceInfo.self, forKey: .einvoiceInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transactionType = try container.decode(String.self, forKey: .transactionType)

            do {
                dpDetails = try container.decode(DpDetails1.self, forKey: .dpDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            searchKey = try container.decode([String: Any].self, forKey: .searchKey)

            shipmentValue = try container.decode(Double.self, forKey: .shipmentValue)

            totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            user = try container.decode(UserObj.self, forKey: .user)

            fulfillingStore = try container.decode(Store1.self, forKey: .fulfillingStore)

            do {
                paymentType = try container.decode(String.self, forKey: .paymentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            articleDetails = try container.decode([String: Any].self, forKey: .articleDetails)

            bagStatusHistory = try container.decode([BagStatusHistory].self, forKey: .bagStatusHistory)

            do {
                invoice = try container.decode(ShipmentInvoice1.self, forKey: .invoice)

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
                requestedDpConf = try container.decode(RequestedDPConfs.self, forKey: .requestedDpConf)

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

            brand = try container.decode(Brand.self, forKey: .brand)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            orderSource = try container.decode(String.self, forKey: .orderSource)

            do {
                prices = try container.decode(ShipmentPrices1.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentGst = try container.decode(ShipmentGst1.self, forKey: .shipmentGst)

            operationalStatus = try container.decode(String.self, forKey: .operationalStatus)

            do {
                sId = try container.decode(String.self, forKey: .sId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateDetails = try container.decode(AffiliateDetails.self, forKey: .affiliateDetails)

            isProcessing = try container.decode(Bool.self, forKey: .isProcessing)

            rtoAddress = try container.decode(RtoAddress1.self, forKey: .rtoAddress)

            do {
                restorePromos = try container.decode([String: Any].self, forKey: .restorePromos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            weight = try container.decode([String: Any].self, forKey: .weight)

            bags = try container.decode([Bag].self, forKey: .bags)

            company = try container.decode(Company1.self, forKey: .company)

            originalBagList = try container.decode([Int].self, forKey: .originalBagList)

            appId = try container.decode(String.self, forKey: .appId)

            restoreCoupon = try container.decode(Bool.self, forKey: .restoreCoupon)

            shipmentStatus = try container.decode(CurrentShipmentStatus.self, forKey: .shipmentStatus)

            payments = try container.decode(ShipmentPayments.self, forKey: .payments)

            journeyType = try container.decode(String.self, forKey: .journeyType)

            lockStatus = try container.decode(Bool.self, forKey: .lockStatus)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            noOfBagsOrder = try container.decode(Int.self, forKey: .noOfBagsOrder)

            do {
                orderIntegrationId = try container.decode(String.self, forKey: .orderIntegrationId)

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

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            shipmentStatusHistory = try container.decode([ShipmentStatusCommon].self, forKey: .shipmentStatusHistory)

            shipmentUpdateTime = try container.decode(Double.self, forKey: .shipmentUpdateTime)

            tags = try container.decode([String].self, forKey: .tags)

            order = try container.decode(OrderObj.self, forKey: .order)

            do {
                qcRequired = try container.decode([String: Any].self, forKey: .qcRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderType = try container.decode(String.self, forKey: .orderType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(deliverySlot, forKey: .deliverySlot)

            try? container.encodeIfPresent(totalShipmentBags, forKey: .totalShipmentBags)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)

            try? container.encodeIfPresent(fyndstoreEmp, forKey: .fyndstoreEmp)

            try? container.encodeIfPresent(shipmentQuantity, forKey: .shipmentQuantity)

            try? container.encodeIfPresent(einvoiceInfo, forKey: .einvoiceInfo)

            try? container.encodeIfPresent(transactionType, forKey: .transactionType)

            try? container.encodeIfPresent(dpDetails, forKey: .dpDetails)

            try? container.encodeIfPresent(searchKey, forKey: .searchKey)

            try? container.encodeIfPresent(shipmentValue, forKey: .shipmentValue)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encode(paymentType, forKey: .paymentType)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(articleDetails, forKey: .articleDetails)

            try? container.encodeIfPresent(bagStatusHistory, forKey: .bagStatusHistory)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(requestedDpConf, forKey: .requestedDpConf)

            try? container.encodeIfPresent(fallbackUser, forKey: .fallbackUser)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderSource, forKey: .orderSource)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(shipmentGst, forKey: .shipmentGst)

            try? container.encodeIfPresent(operationalStatus, forKey: .operationalStatus)

            try? container.encodeIfPresent(sId, forKey: .sId)

            try? container.encodeIfPresent(affiliateDetails, forKey: .affiliateDetails)

            try? container.encodeIfPresent(isProcessing, forKey: .isProcessing)

            try? container.encodeIfPresent(rtoAddress, forKey: .rtoAddress)

            try? container.encodeIfPresent(restorePromos, forKey: .restorePromos)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(originalBagList, forKey: .originalBagList)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(restoreCoupon, forKey: .restoreCoupon)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(payments, forKey: .payments)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)

            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(noOfBagsOrder, forKey: .noOfBagsOrder)

            try? container.encodeIfPresent(orderIntegrationId, forKey: .orderIntegrationId)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(shipmentStatusHistory, forKey: .shipmentStatusHistory)

            try? container.encodeIfPresent(shipmentUpdateTime, forKey: .shipmentUpdateTime)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encode(qcRequired, forKey: .qcRequired)

            try? container.encodeIfPresent(orderType, forKey: .orderType)
        }
    }
}
