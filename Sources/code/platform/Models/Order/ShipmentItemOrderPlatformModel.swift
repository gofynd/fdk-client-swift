

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentItem
        Used By: Order
    */

    class ShipmentItem: Codable {
        
        
        public var orderDate: String?
        
        public var orderCreatedTs: String?
        
        public var shipmentStatus: ShipmentStatus?
        
        public var user: UserDataInfo?
        
        public var estimatedSlaTime: String?
        
        public var estimatedSlaTs: String?
        
        public var deliveryAddress: Address?
        
        public var billingAddress: Address?
        
        public var isActive: Bool?
        
        public var channel: ShipmentListingChannel?
        
        public var previousShipmentId: String?
        
        public var lockStatus: Bool?
        
        public var invoiceId: String?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [[String: Any]]?
        
        public var statusCreatedAt: String?
        
        public var statusCreatedTs: String?
        
        public var displayName: String?
        
        public var bags: [BagUnit]?
        
        public var fulfillingStore: ShipmentItemFulFillingStore?
        
        public var meta: [String: Any]?
        
        public var paymentMode: String?
        
        public var canProcess: Bool?
        
        public var prices: Prices?
        
        public var orderId: String
        
        public var orderingChannnel: String?
        
        public var shipmentId: String?
        
        public var customerNote: String?
        
        public var totalBags: Int
        
        public var shipmentCreatedAt: String
        
        public var modeOfPayment: String?
        
        public var shipmentCreatedTs: String?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var isLapaEnabled: Bool?
        
        public var logisticsMeta: [String: Any]?
        
        public var affiliateShipmentId: String?
        
        public var affiliateOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDate = "order_date"
            
            case orderCreatedTs = "order_created_ts"
            
            case shipmentStatus = "shipment_status"
            
            case user = "user"
            
            case estimatedSlaTime = "estimated_sla_time"
            
            case estimatedSlaTs = "estimated_sla_ts"
            
            case deliveryAddress = "delivery_address"
            
            case billingAddress = "billing_address"
            
            case isActive = "is_active"
            
            case channel = "channel"
            
            case previousShipmentId = "previous_shipment_id"
            
            case lockStatus = "lock_status"
            
            case invoiceId = "invoice_id"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case statusCreatedAt = "status_created_at"
            
            case statusCreatedTs = "status_created_ts"
            
            case displayName = "display_name"
            
            case bags = "bags"
            
            case fulfillingStore = "fulfilling_store"
            
            case meta = "meta"
            
            case paymentMode = "payment_mode"
            
            case canProcess = "can_process"
            
            case prices = "prices"
            
            case orderId = "order_id"
            
            case orderingChannnel = "ordering_channnel"
            
            case shipmentId = "shipment_id"
            
            case customerNote = "customer_note"
            
            case totalBags = "total_bags"
            
            case shipmentCreatedAt = "shipment_created_at"
            
            case modeOfPayment = "mode_of_payment"
            
            case shipmentCreatedTs = "shipment_created_ts"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case isLapaEnabled = "is_lapa_enabled"
            
            case logisticsMeta = "logistics_meta"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case affiliateOrderId = "affiliate_order_id"
            
        }

        public init(affiliateOrderId: String? = nil, affiliateShipmentId: String? = nil, bags: [BagUnit]? = nil, billingAddress: Address? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, customerNote: String? = nil, deliveryAddress: Address? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, estimatedSlaTs: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, isActive: Bool? = nil, isLapaEnabled: Bool? = nil, lockStatus: Bool? = nil, logisticsMeta: [String: Any]? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, orderingChannnel: String? = nil, orderCreatedTs: String? = nil, orderDate: String? = nil, orderId: String, paymentInfo: [[String: Any]]? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentCreatedTs: String? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, statusCreatedTs: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            
            self.orderDate = orderDate
            
            self.orderCreatedTs = orderCreatedTs
            
            self.shipmentStatus = shipmentStatus
            
            self.user = user
            
            self.estimatedSlaTime = estimatedSlaTime
            
            self.estimatedSlaTs = estimatedSlaTs
            
            self.deliveryAddress = deliveryAddress
            
            self.billingAddress = billingAddress
            
            self.isActive = isActive
            
            self.channel = channel
            
            self.previousShipmentId = previousShipmentId
            
            self.lockStatus = lockStatus
            
            self.invoiceId = invoiceId
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.statusCreatedAt = statusCreatedAt
            
            self.statusCreatedTs = statusCreatedTs
            
            self.displayName = displayName
            
            self.bags = bags
            
            self.fulfillingStore = fulfillingStore
            
            self.meta = meta
            
            self.paymentMode = paymentMode
            
            self.canProcess = canProcess
            
            self.prices = prices
            
            self.orderId = orderId
            
            self.orderingChannnel = orderingChannnel
            
            self.shipmentId = shipmentId
            
            self.customerNote = customerNote
            
            self.totalBags = totalBags
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
            self.modeOfPayment = modeOfPayment
            
            self.shipmentCreatedTs = shipmentCreatedTs
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.isLapaEnabled = isLapaEnabled
            
            self.logisticsMeta = logisticsMeta
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.affiliateOrderId = affiliateOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderDate = try container.decode(String.self, forKey: .orderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(UserDataInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTs = try container.decode(String.self, forKey: .estimatedSlaTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(Address.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(Address.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode(ShipmentListingChannel.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentInfo = try container.decode([[String: Any]].self, forKey: .paymentInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCreatedTs = try container.decode(String.self, forKey: .statusCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bags = try container.decode([BagUnit].self, forKey: .bags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canProcess = try container.decode(Bool.self, forKey: .canProcess)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    orderingChannnel = try container.decode(String.self, forKey: .orderingChannnel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerNote = try container.decode(String.self, forKey: .customerNote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalBags = try container.decode(Int.self, forKey: .totalBags)
                
            
            
            
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                
            
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedTs = try container.decode(String.self, forKey: .shipmentCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLapaEnabled = try container.decode(Bool.self, forKey: .isLapaEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logisticsMeta = try container.decode([String: Any].self, forKey: .logisticsMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTs, forKey: .estimatedSlaTs)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedTs, forKey: .statusCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(canProcess, forKey: .canProcess)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(customerNote, forKey: .customerNote)
            
            
            
            
            try? container.encodeIfPresent(totalBags, forKey: .totalBags)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedTs, forKey: .shipmentCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(isLapaEnabled, forKey: .isLapaEnabled)
            
            
            
            
            try? container.encodeIfPresent(logisticsMeta, forKey: .logisticsMeta)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentItem
        Used By: Order
    */

    class ShipmentItem: Codable {
        
        
        public var orderDate: String?
        
        public var orderCreatedTs: String?
        
        public var shipmentStatus: ShipmentStatus?
        
        public var user: UserDataInfo?
        
        public var estimatedSlaTime: String?
        
        public var estimatedSlaTs: String?
        
        public var deliveryAddress: Address?
        
        public var billingAddress: Address?
        
        public var isActive: Bool?
        
        public var channel: ShipmentListingChannel?
        
        public var previousShipmentId: String?
        
        public var lockStatus: Bool?
        
        public var invoiceId: String?
        
        public var paymentMethods: [String: Any]?
        
        public var paymentInfo: [[String: Any]]?
        
        public var statusCreatedAt: String?
        
        public var statusCreatedTs: String?
        
        public var displayName: String?
        
        public var bags: [BagUnit]?
        
        public var fulfillingStore: ShipmentItemFulFillingStore?
        
        public var meta: [String: Any]?
        
        public var paymentMode: String?
        
        public var canProcess: Bool?
        
        public var prices: Prices?
        
        public var orderId: String
        
        public var orderingChannnel: String?
        
        public var shipmentId: String?
        
        public var customerNote: String?
        
        public var totalBags: Int
        
        public var shipmentCreatedAt: String
        
        public var modeOfPayment: String?
        
        public var shipmentCreatedTs: String?
        
        public var currency: Currency?
        
        public var currencyInfo: CurrencyInfo?
        
        public var isLapaEnabled: Bool?
        
        public var logisticsMeta: [String: Any]?
        
        public var affiliateShipmentId: String?
        
        public var affiliateOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderDate = "order_date"
            
            case orderCreatedTs = "order_created_ts"
            
            case shipmentStatus = "shipment_status"
            
            case user = "user"
            
            case estimatedSlaTime = "estimated_sla_time"
            
            case estimatedSlaTs = "estimated_sla_ts"
            
            case deliveryAddress = "delivery_address"
            
            case billingAddress = "billing_address"
            
            case isActive = "is_active"
            
            case channel = "channel"
            
            case previousShipmentId = "previous_shipment_id"
            
            case lockStatus = "lock_status"
            
            case invoiceId = "invoice_id"
            
            case paymentMethods = "payment_methods"
            
            case paymentInfo = "payment_info"
            
            case statusCreatedAt = "status_created_at"
            
            case statusCreatedTs = "status_created_ts"
            
            case displayName = "display_name"
            
            case bags = "bags"
            
            case fulfillingStore = "fulfilling_store"
            
            case meta = "meta"
            
            case paymentMode = "payment_mode"
            
            case canProcess = "can_process"
            
            case prices = "prices"
            
            case orderId = "order_id"
            
            case orderingChannnel = "ordering_channnel"
            
            case shipmentId = "shipment_id"
            
            case customerNote = "customer_note"
            
            case totalBags = "total_bags"
            
            case shipmentCreatedAt = "shipment_created_at"
            
            case modeOfPayment = "mode_of_payment"
            
            case shipmentCreatedTs = "shipment_created_ts"
            
            case currency = "currency"
            
            case currencyInfo = "currency_info"
            
            case isLapaEnabled = "is_lapa_enabled"
            
            case logisticsMeta = "logistics_meta"
            
            case affiliateShipmentId = "affiliate_shipment_id"
            
            case affiliateOrderId = "affiliate_order_id"
            
        }

        public init(affiliateOrderId: String? = nil, affiliateShipmentId: String? = nil, bags: [BagUnit]? = nil, billingAddress: Address? = nil, canProcess: Bool? = nil, channel: ShipmentListingChannel? = nil, currency: Currency? = nil, currencyInfo: CurrencyInfo? = nil, customerNote: String? = nil, deliveryAddress: Address? = nil, displayName: String? = nil, estimatedSlaTime: String? = nil, estimatedSlaTs: String? = nil, fulfillingStore: ShipmentItemFulFillingStore? = nil, invoiceId: String? = nil, isActive: Bool? = nil, isLapaEnabled: Bool? = nil, lockStatus: Bool? = nil, logisticsMeta: [String: Any]? = nil, meta: [String: Any]? = nil, modeOfPayment: String? = nil, orderingChannnel: String? = nil, orderCreatedTs: String? = nil, orderDate: String? = nil, orderId: String, paymentInfo: [[String: Any]]? = nil, paymentMethods: [String: Any]? = nil, paymentMode: String? = nil, previousShipmentId: String? = nil, prices: Prices? = nil, shipmentCreatedAt: String, shipmentCreatedTs: String? = nil, shipmentId: String? = nil, shipmentStatus: ShipmentStatus? = nil, statusCreatedAt: String? = nil, statusCreatedTs: String? = nil, totalBags: Int, user: UserDataInfo? = nil) {
            
            self.orderDate = orderDate
            
            self.orderCreatedTs = orderCreatedTs
            
            self.shipmentStatus = shipmentStatus
            
            self.user = user
            
            self.estimatedSlaTime = estimatedSlaTime
            
            self.estimatedSlaTs = estimatedSlaTs
            
            self.deliveryAddress = deliveryAddress
            
            self.billingAddress = billingAddress
            
            self.isActive = isActive
            
            self.channel = channel
            
            self.previousShipmentId = previousShipmentId
            
            self.lockStatus = lockStatus
            
            self.invoiceId = invoiceId
            
            self.paymentMethods = paymentMethods
            
            self.paymentInfo = paymentInfo
            
            self.statusCreatedAt = statusCreatedAt
            
            self.statusCreatedTs = statusCreatedTs
            
            self.displayName = displayName
            
            self.bags = bags
            
            self.fulfillingStore = fulfillingStore
            
            self.meta = meta
            
            self.paymentMode = paymentMode
            
            self.canProcess = canProcess
            
            self.prices = prices
            
            self.orderId = orderId
            
            self.orderingChannnel = orderingChannnel
            
            self.shipmentId = shipmentId
            
            self.customerNote = customerNote
            
            self.totalBags = totalBags
            
            self.shipmentCreatedAt = shipmentCreatedAt
            
            self.modeOfPayment = modeOfPayment
            
            self.shipmentCreatedTs = shipmentCreatedTs
            
            self.currency = currency
            
            self.currencyInfo = currencyInfo
            
            self.isLapaEnabled = isLapaEnabled
            
            self.logisticsMeta = logisticsMeta
            
            self.affiliateShipmentId = affiliateShipmentId
            
            self.affiliateOrderId = affiliateOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderDate = try container.decode(String.self, forKey: .orderDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderCreatedTs = try container.decode(String.self, forKey: .orderCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(UserDataInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTime = try container.decode(String.self, forKey: .estimatedSlaTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    estimatedSlaTs = try container.decode(String.self, forKey: .estimatedSlaTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(Address.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(Address.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channel = try container.decode(ShipmentListingChannel.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    previousShipmentId = try container.decode(String.self, forKey: .previousShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockStatus = try container.decode(Bool.self, forKey: .lockStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentInfo = try container.decode([[String: Any]].self, forKey: .paymentInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCreatedAt = try container.decode(String.self, forKey: .statusCreatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    statusCreatedTs = try container.decode(String.self, forKey: .statusCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bags = try container.decode([BagUnit].self, forKey: .bags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillingStore = try container.decode(ShipmentItemFulFillingStore.self, forKey: .fulfillingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canProcess = try container.decode(Bool.self, forKey: .canProcess)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    prices = try container.decode(Prices.self, forKey: .prices)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                do {
                    orderingChannnel = try container.decode(String.self, forKey: .orderingChannnel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerNote = try container.decode(String.self, forKey: .customerNote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                totalBags = try container.decode(Int.self, forKey: .totalBags)
                
            
            
            
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)
                
            
            
            
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentCreatedTs = try container.decode(String.self, forKey: .shipmentCreatedTs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(Currency.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isLapaEnabled = try container.decode(Bool.self, forKey: .isLapaEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logisticsMeta = try container.decode([String: Any].self, forKey: .logisticsMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderDate, forKey: .orderDate)
            
            
            
            
            try? container.encodeIfPresent(orderCreatedTs, forKey: .orderCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTime, forKey: .estimatedSlaTime)
            
            
            
            
            try? container.encodeIfPresent(estimatedSlaTs, forKey: .estimatedSlaTs)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(channel, forKey: .channel)
            
            
            
            
            try? container.encodeIfPresent(previousShipmentId, forKey: .previousShipmentId)
            
            
            
            
            try? container.encodeIfPresent(lockStatus, forKey: .lockStatus)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedAt, forKey: .statusCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(statusCreatedTs, forKey: .statusCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(canProcess, forKey: .canProcess)
            
            
            
            
            try? container.encodeIfPresent(prices, forKey: .prices)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(orderingChannnel, forKey: .orderingChannnel)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(customerNote, forKey: .customerNote)
            
            
            
            
            try? container.encodeIfPresent(totalBags, forKey: .totalBags)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)
            
            
            
            
            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
            
            
            
            
            try? container.encodeIfPresent(shipmentCreatedTs, forKey: .shipmentCreatedTs)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(isLapaEnabled, forKey: .isLapaEnabled)
            
            
            
            
            try? container.encodeIfPresent(logisticsMeta, forKey: .logisticsMeta)
            
            
            
            
            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)
            
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
        }
        
    }
}


