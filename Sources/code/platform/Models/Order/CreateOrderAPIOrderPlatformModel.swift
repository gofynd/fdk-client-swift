

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderAPI
        Used By: Order
    */

    class CreateOrderAPI: Codable {
        
        
        public var shipments: [Shipment]
        
        public var shippingInfo: ShippingInfo
        
        public var billingInfo: ShippingInfo
        
        public var currencyInfo: [String: Any]?
        
        public var externalOrderId: String?
        
        public var charges: [Charge]?
        
        public var externalCreationDate: String?
        
        public var meta: [String: Any]?
        
        public var taxInfo: TaxInfo?
        
        public var config: CreateOrderConfig
        
        public var paymentInfo: PaymentInfo
        
        public var userInfo: UserInfo?
        
        public var orderingStoreId: Int?
        
        public var orderPlatform: String?
        
        public var orderType: String?
        
        public var fyndOrderId: String?
        
        public var applicationId: String?
        
        public var externalShipmentId: String?
        
        public var customJson: [String: Any]?
        
        public var dynamicCharges: [DynamicChargeSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case shippingInfo = "shipping_info"
            
            case billingInfo = "billing_info"
            
            case currencyInfo = "currency_info"
            
            case externalOrderId = "external_order_id"
            
            case charges = "charges"
            
            case externalCreationDate = "external_creation_date"
            
            case meta = "meta"
            
            case taxInfo = "tax_info"
            
            case config = "config"
            
            case paymentInfo = "payment_info"
            
            case userInfo = "user_info"
            
            case orderingStoreId = "ordering_store_id"
            
            case orderPlatform = "order_platform"
            
            case orderType = "order_type"
            
            case fyndOrderId = "fynd_order_id"
            
            case applicationId = "application_id"
            
            case externalShipmentId = "external_shipment_id"
            
            case customJson = "custom_json"
            
            case dynamicCharges = "dynamic_charges"
            
        }

        public init(applicationId: String? = nil, billingInfo: ShippingInfo, charges: [Charge]? = nil, config: CreateOrderConfig, currencyInfo: [String: Any]? = nil, customJson: [String: Any]? = nil, dynamicCharges: [DynamicChargeSchema]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, externalShipmentId: String? = nil, fyndOrderId: String? = nil, meta: [String: Any]? = nil, orderingStoreId: Int? = nil, orderPlatform: String? = nil, orderType: String? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil, userInfo: UserInfo? = nil) {
            
            self.shipments = shipments
            
            self.shippingInfo = shippingInfo
            
            self.billingInfo = billingInfo
            
            self.currencyInfo = currencyInfo
            
            self.externalOrderId = externalOrderId
            
            self.charges = charges
            
            self.externalCreationDate = externalCreationDate
            
            self.meta = meta
            
            self.taxInfo = taxInfo
            
            self.config = config
            
            self.paymentInfo = paymentInfo
            
            self.userInfo = userInfo
            
            self.orderingStoreId = orderingStoreId
            
            self.orderPlatform = orderPlatform
            
            self.orderType = orderType
            
            self.fyndOrderId = fyndOrderId
            
            self.applicationId = applicationId
            
            self.externalShipmentId = externalShipmentId
            
            self.customJson = customJson
            
            self.dynamicCharges = dynamicCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipments = try container.decode([Shipment].self, forKey: .shipments)
                
            
            
            
                shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
                
            
            
            
                billingInfo = try container.decode(ShippingInfo.self, forKey: .billingInfo)
                
            
            
            
                do {
                    currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode([Charge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)
                
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
                    taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                config = try container.decode(CreateOrderConfig.self, forKey: .config)
                
            
            
            
                paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
                
            
            
            
                do {
                    userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dynamicCharges = try container.decode([DynamicChargeSchema].self, forKey: .dynamicCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)
            
            
            
            
            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)
            
            
            
            
            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(dynamicCharges, forKey: .dynamicCharges)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderAPI
        Used By: Order
    */

    class CreateOrderAPI: Codable {
        
        
        public var shipments: [Shipment]
        
        public var shippingInfo: ShippingInfo
        
        public var billingInfo: ShippingInfo
        
        public var currencyInfo: [String: Any]?
        
        public var externalOrderId: String?
        
        public var charges: [Charge]?
        
        public var externalCreationDate: String?
        
        public var meta: [String: Any]?
        
        public var taxInfo: TaxInfo?
        
        public var config: CreateOrderConfig
        
        public var paymentInfo: PaymentInfo
        
        public var userInfo: UserInfo?
        
        public var orderingStoreId: Int?
        
        public var orderPlatform: String?
        
        public var orderType: String?
        
        public var fyndOrderId: String?
        
        public var applicationId: String?
        
        public var externalShipmentId: String?
        
        public var customJson: [String: Any]?
        
        public var dynamicCharges: [DynamicChargeSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case shippingInfo = "shipping_info"
            
            case billingInfo = "billing_info"
            
            case currencyInfo = "currency_info"
            
            case externalOrderId = "external_order_id"
            
            case charges = "charges"
            
            case externalCreationDate = "external_creation_date"
            
            case meta = "meta"
            
            case taxInfo = "tax_info"
            
            case config = "config"
            
            case paymentInfo = "payment_info"
            
            case userInfo = "user_info"
            
            case orderingStoreId = "ordering_store_id"
            
            case orderPlatform = "order_platform"
            
            case orderType = "order_type"
            
            case fyndOrderId = "fynd_order_id"
            
            case applicationId = "application_id"
            
            case externalShipmentId = "external_shipment_id"
            
            case customJson = "custom_json"
            
            case dynamicCharges = "dynamic_charges"
            
        }

        public init(applicationId: String? = nil, billingInfo: ShippingInfo, charges: [Charge]? = nil, config: CreateOrderConfig, currencyInfo: [String: Any]? = nil, customJson: [String: Any]? = nil, dynamicCharges: [DynamicChargeSchema]? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, externalShipmentId: String? = nil, fyndOrderId: String? = nil, meta: [String: Any]? = nil, orderingStoreId: Int? = nil, orderPlatform: String? = nil, orderType: String? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil, userInfo: UserInfo? = nil) {
            
            self.shipments = shipments
            
            self.shippingInfo = shippingInfo
            
            self.billingInfo = billingInfo
            
            self.currencyInfo = currencyInfo
            
            self.externalOrderId = externalOrderId
            
            self.charges = charges
            
            self.externalCreationDate = externalCreationDate
            
            self.meta = meta
            
            self.taxInfo = taxInfo
            
            self.config = config
            
            self.paymentInfo = paymentInfo
            
            self.userInfo = userInfo
            
            self.orderingStoreId = orderingStoreId
            
            self.orderPlatform = orderPlatform
            
            self.orderType = orderType
            
            self.fyndOrderId = fyndOrderId
            
            self.applicationId = applicationId
            
            self.externalShipmentId = externalShipmentId
            
            self.customJson = customJson
            
            self.dynamicCharges = dynamicCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipments = try container.decode([Shipment].self, forKey: .shipments)
                
            
            
            
                shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
                
            
            
            
                billingInfo = try container.decode(ShippingInfo.self, forKey: .billingInfo)
                
            
            
            
                do {
                    currencyInfo = try container.decode([String: Any].self, forKey: .currencyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    charges = try container.decode([Charge].self, forKey: .charges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)
                
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
                    taxInfo = try container.decode(TaxInfo.self, forKey: .taxInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                config = try container.decode(CreateOrderConfig.self, forKey: .config)
                
            
            
            
                paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
                
            
            
            
                do {
                    userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlatform = try container.decode(String.self, forKey: .orderPlatform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderType = try container.decode(String.self, forKey: .orderType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalShipmentId = try container.decode(String.self, forKey: .externalShipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dynamicCharges = try container.decode([DynamicChargeSchema].self, forKey: .dynamicCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(shippingInfo, forKey: .shippingInfo)
            
            
            
            
            try? container.encodeIfPresent(billingInfo, forKey: .billingInfo)
            
            
            
            
            try? container.encodeIfPresent(currencyInfo, forKey: .currencyInfo)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(charges, forKey: .charges)
            
            
            
            
            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(taxInfo, forKey: .taxInfo)
            
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(paymentInfo, forKey: .paymentInfo)
            
            
            
            
            try? container.encodeIfPresent(userInfo, forKey: .userInfo)
            
            
            
            
            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)
            
            
            
            
            try? container.encodeIfPresent(orderPlatform, forKey: .orderPlatform)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(externalShipmentId, forKey: .externalShipmentId)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(dynamicCharges, forKey: .dynamicCharges)
            
            
        }
        
    }
}


