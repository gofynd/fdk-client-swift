

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreateOrderRequestSchema
        Used By: Order
    */

    class CreateOrderRequestSchema: Codable {
        
        
        public var shipments: [CreateOrderShipmentSchema]?
        
        public var tags: [String]?
        
        public var currencyDetails: CurrencySchema
        
        public var externalCreationDate: String?
        
        public var couponDetails: CouponSchema?
        
        public var billingDetails: BillingDetailsSchema
        
        public var primaryPaymentMode: String
        
        public var cpConfiguration: CPConfigurationSchema?
        
        public var orderingLocationId: Int?
        
        public var allowLocationReassignment: Bool?
        
        public var shippingDetails: ShippingDetailsSchema
        
        public var externalOrderId: String?
        
        public var userDetails: UserDetailsSchema?
        
        public var orderLifecycleMessages: [LifecycleMessageSchema]?
        
        public var channelApplicationId: String?
        
        public var b2BGstinNumber: String?
        
        public var channelCompanyId: String?
        
        public var isDraft: Bool?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case tags = "tags"
            
            case currencyDetails = "currency_details"
            
            case externalCreationDate = "external_creation_date"
            
            case couponDetails = "coupon_details"
            
            case billingDetails = "billing_details"
            
            case primaryPaymentMode = "primary_payment_mode"
            
            case cpConfiguration = "cp_configuration"
            
            case orderingLocationId = "ordering_location_id"
            
            case allowLocationReassignment = "allow_location_reassignment"
            
            case shippingDetails = "shipping_details"
            
            case externalOrderId = "external_order_id"
            
            case userDetails = "user_details"
            
            case orderLifecycleMessages = "order_lifecycle_messages"
            
            case channelApplicationId = "channel_application_id"
            
            case b2BGstinNumber = "b2b_gstin_number"
            
            case channelCompanyId = "channel_company_id"
            
            case isDraft = "is_draft"
            
            case meta = "meta"
            
        }

        public init(allowLocationReassignment: Bool? = nil, b2BGstinNumber: String? = nil, billingDetails: BillingDetailsSchema, channelApplicationId: String? = nil, channelCompanyId: String? = nil, couponDetails: CouponSchema? = nil, cpConfiguration: CPConfigurationSchema? = nil, currencyDetails: CurrencySchema, externalCreationDate: String? = nil, externalOrderId: String? = nil, isDraft: Bool? = nil, meta: [String: Any]? = nil, orderingLocationId: Int? = nil, orderLifecycleMessages: [LifecycleMessageSchema]? = nil, primaryPaymentMode: String, shipments: [CreateOrderShipmentSchema]? = nil, shippingDetails: ShippingDetailsSchema, tags: [String]? = nil, userDetails: UserDetailsSchema? = nil) {
            
            self.shipments = shipments
            
            self.tags = tags
            
            self.currencyDetails = currencyDetails
            
            self.externalCreationDate = externalCreationDate
            
            self.couponDetails = couponDetails
            
            self.billingDetails = billingDetails
            
            self.primaryPaymentMode = primaryPaymentMode
            
            self.cpConfiguration = cpConfiguration
            
            self.orderingLocationId = orderingLocationId
            
            self.allowLocationReassignment = allowLocationReassignment
            
            self.shippingDetails = shippingDetails
            
            self.externalOrderId = externalOrderId
            
            self.userDetails = userDetails
            
            self.orderLifecycleMessages = orderLifecycleMessages
            
            self.channelApplicationId = channelApplicationId
            
            self.b2BGstinNumber = b2BGstinNumber
            
            self.channelCompanyId = channelCompanyId
            
            self.isDraft = isDraft
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipments = try container.decode([CreateOrderShipmentSchema].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currencyDetails = try container.decode(CurrencySchema.self, forKey: .currencyDetails)
                
            
            
            
                do {
                    externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponDetails = try container.decode(CouponSchema.self, forKey: .couponDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                billingDetails = try container.decode(BillingDetailsSchema.self, forKey: .billingDetails)
                
            
            
            
                primaryPaymentMode = try container.decode(String.self, forKey: .primaryPaymentMode)
                
            
            
            
                do {
                    cpConfiguration = try container.decode(CPConfigurationSchema.self, forKey: .cpConfiguration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingLocationId = try container.decode(Int.self, forKey: .orderingLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowLocationReassignment = try container.decode(Bool.self, forKey: .allowLocationReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shippingDetails = try container.decode(ShippingDetailsSchema.self, forKey: .shippingDetails)
                
            
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userDetails = try container.decode(UserDetailsSchema.self, forKey: .userDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderLifecycleMessages = try container.decode([LifecycleMessageSchema].self, forKey: .orderLifecycleMessages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelApplicationId = try container.decode(String.self, forKey: .channelApplicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    b2BGstinNumber = try container.decode(String.self, forKey: .b2BGstinNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelCompanyId = try container.decode(String.self, forKey: .channelCompanyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDraft = try container.decode(Bool.self, forKey: .isDraft)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(currencyDetails, forKey: .currencyDetails)
            
            
            
            
            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
            
            
            
            
            try? container.encodeIfPresent(couponDetails, forKey: .couponDetails)
            
            
            
            
            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)
            
            
            
            
            try? container.encodeIfPresent(primaryPaymentMode, forKey: .primaryPaymentMode)
            
            
            
            
            try? container.encodeIfPresent(cpConfiguration, forKey: .cpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(orderingLocationId, forKey: .orderingLocationId)
            
            
            
            
            try? container.encodeIfPresent(allowLocationReassignment, forKey: .allowLocationReassignment)
            
            
            
            
            try? container.encodeIfPresent(shippingDetails, forKey: .shippingDetails)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(userDetails, forKey: .userDetails)
            
            
            
            
            try? container.encodeIfPresent(orderLifecycleMessages, forKey: .orderLifecycleMessages)
            
            
            
            
            try? container.encodeIfPresent(channelApplicationId, forKey: .channelApplicationId)
            
            
            
            
            try? container.encodeIfPresent(b2BGstinNumber, forKey: .b2BGstinNumber)
            
            
            
            
            try? container.encodeIfPresent(channelCompanyId, forKey: .channelCompanyId)
            
            
            
            
            try? container.encodeIfPresent(isDraft, forKey: .isDraft)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreateOrderRequestSchema
        Used By: Order
    */

    class CreateOrderRequestSchema: Codable {
        
        
        public var shipments: [CreateOrderShipmentSchema]?
        
        public var tags: [String]?
        
        public var currencyDetails: CurrencySchema
        
        public var externalCreationDate: String?
        
        public var couponDetails: CouponSchema?
        
        public var billingDetails: BillingDetailsSchema
        
        public var primaryPaymentMode: String
        
        public var cpConfiguration: CPConfigurationSchema?
        
        public var orderingLocationId: Int?
        
        public var allowLocationReassignment: Bool?
        
        public var shippingDetails: ShippingDetailsSchema
        
        public var externalOrderId: String?
        
        public var userDetails: UserDetailsSchema?
        
        public var orderLifecycleMessages: [LifecycleMessageSchema]?
        
        public var channelApplicationId: String?
        
        public var b2BGstinNumber: String?
        
        public var channelCompanyId: String?
        
        public var isDraft: Bool?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case tags = "tags"
            
            case currencyDetails = "currency_details"
            
            case externalCreationDate = "external_creation_date"
            
            case couponDetails = "coupon_details"
            
            case billingDetails = "billing_details"
            
            case primaryPaymentMode = "primary_payment_mode"
            
            case cpConfiguration = "cp_configuration"
            
            case orderingLocationId = "ordering_location_id"
            
            case allowLocationReassignment = "allow_location_reassignment"
            
            case shippingDetails = "shipping_details"
            
            case externalOrderId = "external_order_id"
            
            case userDetails = "user_details"
            
            case orderLifecycleMessages = "order_lifecycle_messages"
            
            case channelApplicationId = "channel_application_id"
            
            case b2BGstinNumber = "b2b_gstin_number"
            
            case channelCompanyId = "channel_company_id"
            
            case isDraft = "is_draft"
            
            case meta = "meta"
            
        }

        public init(allowLocationReassignment: Bool? = nil, b2BGstinNumber: String? = nil, billingDetails: BillingDetailsSchema, channelApplicationId: String? = nil, channelCompanyId: String? = nil, couponDetails: CouponSchema? = nil, cpConfiguration: CPConfigurationSchema? = nil, currencyDetails: CurrencySchema, externalCreationDate: String? = nil, externalOrderId: String? = nil, isDraft: Bool? = nil, meta: [String: Any]? = nil, orderingLocationId: Int? = nil, orderLifecycleMessages: [LifecycleMessageSchema]? = nil, primaryPaymentMode: String, shipments: [CreateOrderShipmentSchema]? = nil, shippingDetails: ShippingDetailsSchema, tags: [String]? = nil, userDetails: UserDetailsSchema? = nil) {
            
            self.shipments = shipments
            
            self.tags = tags
            
            self.currencyDetails = currencyDetails
            
            self.externalCreationDate = externalCreationDate
            
            self.couponDetails = couponDetails
            
            self.billingDetails = billingDetails
            
            self.primaryPaymentMode = primaryPaymentMode
            
            self.cpConfiguration = cpConfiguration
            
            self.orderingLocationId = orderingLocationId
            
            self.allowLocationReassignment = allowLocationReassignment
            
            self.shippingDetails = shippingDetails
            
            self.externalOrderId = externalOrderId
            
            self.userDetails = userDetails
            
            self.orderLifecycleMessages = orderLifecycleMessages
            
            self.channelApplicationId = channelApplicationId
            
            self.b2BGstinNumber = b2BGstinNumber
            
            self.channelCompanyId = channelCompanyId
            
            self.isDraft = isDraft
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    shipments = try container.decode([CreateOrderShipmentSchema].self, forKey: .shipments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                currencyDetails = try container.decode(CurrencySchema.self, forKey: .currencyDetails)
                
            
            
            
                do {
                    externalCreationDate = try container.decode(String.self, forKey: .externalCreationDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponDetails = try container.decode(CouponSchema.self, forKey: .couponDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                billingDetails = try container.decode(BillingDetailsSchema.self, forKey: .billingDetails)
                
            
            
            
                primaryPaymentMode = try container.decode(String.self, forKey: .primaryPaymentMode)
                
            
            
            
                do {
                    cpConfiguration = try container.decode(CPConfigurationSchema.self, forKey: .cpConfiguration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingLocationId = try container.decode(Int.self, forKey: .orderingLocationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowLocationReassignment = try container.decode(Bool.self, forKey: .allowLocationReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                shippingDetails = try container.decode(ShippingDetailsSchema.self, forKey: .shippingDetails)
                
            
            
            
                do {
                    externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userDetails = try container.decode(UserDetailsSchema.self, forKey: .userDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderLifecycleMessages = try container.decode([LifecycleMessageSchema].self, forKey: .orderLifecycleMessages)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelApplicationId = try container.decode(String.self, forKey: .channelApplicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    b2BGstinNumber = try container.decode(String.self, forKey: .b2BGstinNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    channelCompanyId = try container.decode(String.self, forKey: .channelCompanyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isDraft = try container.decode(Bool.self, forKey: .isDraft)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(currencyDetails, forKey: .currencyDetails)
            
            
            
            
            try? container.encodeIfPresent(externalCreationDate, forKey: .externalCreationDate)
            
            
            
            
            try? container.encodeIfPresent(couponDetails, forKey: .couponDetails)
            
            
            
            
            try? container.encodeIfPresent(billingDetails, forKey: .billingDetails)
            
            
            
            
            try? container.encodeIfPresent(primaryPaymentMode, forKey: .primaryPaymentMode)
            
            
            
            
            try? container.encodeIfPresent(cpConfiguration, forKey: .cpConfiguration)
            
            
            
            
            try? container.encodeIfPresent(orderingLocationId, forKey: .orderingLocationId)
            
            
            
            
            try? container.encodeIfPresent(allowLocationReassignment, forKey: .allowLocationReassignment)
            
            
            
            
            try? container.encodeIfPresent(shippingDetails, forKey: .shippingDetails)
            
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
            
            
            try? container.encodeIfPresent(userDetails, forKey: .userDetails)
            
            
            
            
            try? container.encodeIfPresent(orderLifecycleMessages, forKey: .orderLifecycleMessages)
            
            
            
            
            try? container.encodeIfPresent(channelApplicationId, forKey: .channelApplicationId)
            
            
            
            
            try? container.encodeIfPresent(b2BGstinNumber, forKey: .b2BGstinNumber)
            
            
            
            
            try? container.encodeIfPresent(channelCompanyId, forKey: .channelCompanyId)
            
            
            
            
            try? container.encodeIfPresent(isDraft, forKey: .isDraft)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


