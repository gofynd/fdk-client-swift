

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderAPI
        Used By: Order
    */

    class CreateOrderAPI: Codable {
        
        
        public var shipments: [Shipment]
        
        public var shippingInfo: ShippingInfo
        
        public var billingInfo: BillingInfo
        
        public var currencyInfo: CurrencyInfo?
        
        public var externalOrderId: String?
        
        public var charges: [Charge]?
        
        public var externalCreationDate: String?
        
        public var meta: [String: Any]?
        
        public var taxInfo: TaxInfo?
        
        public var config: Config?
        
        public var paymentInfo: PaymentInfo
        
        public var userInfo: UserInfo?
        
        public var unlockBeforeTransition: Bool?
        
        public var lockAfterTransition: Bool?
        

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
            
            case unlockBeforeTransition = "unlock_before_transition"
            
            case lockAfterTransition = "lock_after_transition"
            
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, config: Config? = nil, currencyInfo: CurrencyInfo? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, lockAfterTransition: Bool? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil, unlockBeforeTransition: Bool? = nil, userInfo: UserInfo? = nil) {
            
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
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
            self.lockAfterTransition = lockAfterTransition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipments = try container.decode([Shipment].self, forKey: .shipments)
                
            
            
            
                shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
                
            
            
            
                billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)
                
            
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
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
                
            
            
                do {
                    config = try container.decode(Config.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
                
            
            
            
                do {
                    userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unlockBeforeTransition = try container.decode(Bool.self, forKey: .unlockBeforeTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
                
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
            
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
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
        
        public var billingInfo: BillingInfo
        
        public var currencyInfo: CurrencyInfo?
        
        public var externalOrderId: String?
        
        public var charges: [Charge]?
        
        public var externalCreationDate: String?
        
        public var meta: [String: Any]?
        
        public var taxInfo: TaxInfo?
        
        public var config: Config?
        
        public var paymentInfo: PaymentInfo
        
        public var userInfo: UserInfo?
        
        public var unlockBeforeTransition: Bool?
        
        public var lockAfterTransition: Bool?
        

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
            
            case unlockBeforeTransition = "unlock_before_transition"
            
            case lockAfterTransition = "lock_after_transition"
            
        }

        public init(billingInfo: BillingInfo, charges: [Charge]? = nil, config: Config? = nil, currencyInfo: CurrencyInfo? = nil, externalCreationDate: String? = nil, externalOrderId: String? = nil, lockAfterTransition: Bool? = nil, meta: [String: Any]? = nil, paymentInfo: PaymentInfo, shipments: [Shipment], shippingInfo: ShippingInfo, taxInfo: TaxInfo? = nil, unlockBeforeTransition: Bool? = nil, userInfo: UserInfo? = nil) {
            
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
            
            self.unlockBeforeTransition = unlockBeforeTransition
            
            self.lockAfterTransition = lockAfterTransition
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipments = try container.decode([Shipment].self, forKey: .shipments)
                
            
            
            
                shippingInfo = try container.decode(ShippingInfo.self, forKey: .shippingInfo)
                
            
            
            
                billingInfo = try container.decode(BillingInfo.self, forKey: .billingInfo)
                
            
            
            
                do {
                    currencyInfo = try container.decode(CurrencyInfo.self, forKey: .currencyInfo)
                
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
                
            
            
                do {
                    config = try container.decode(Config.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                paymentInfo = try container.decode(PaymentInfo.self, forKey: .paymentInfo)
                
            
            
            
                do {
                    userInfo = try container.decode(UserInfo.self, forKey: .userInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unlockBeforeTransition = try container.decode(Bool.self, forKey: .unlockBeforeTransition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)
                
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
            
            
            
            
            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)
            
            
            
            
            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
            
            
        }
        
    }
}


