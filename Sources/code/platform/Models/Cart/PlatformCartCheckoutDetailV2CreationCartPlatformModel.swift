

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformCartCheckoutDetailV2Creation
        Used By: Cart
    */

    class PlatformCartCheckoutDetailV2Creation: Codable {
        
        
        public var addressId: String?
        
        public var paymentIdentifier: String?
        
        public var paymentParams: [String: Any]?
        
        public var customMeta: [CartCheckoutCustomMeta]?
        
        public var paymentAutoConfirm: Bool?
        
        public var id: String
        
        public var pos: Bool?
        
        public var billingAddressId: String?
        
        public var merchantCode: String?
        
        public var aggregator: String?
        
        public var pickAtStoreUid: Int?
        
        public var deviceId: String?
        
        public var deliveryAddress: [String: Any]?
        
        public var paymentMode: String?
        
        public var checkoutMode: String?
        
        public var customerDetails: CustomerDetails?
        
        public var meta: [String: Any]?
        
        public var paymentMethods: [PaymentMethod]
        
        public var staff: StaffCheckout?
        
        public var employeeCode: String?
        
        public var billingAddress: [String: Any]?
        
        public var callbackUrl: String?
        
        public var userId: String?
        
        public var extraMeta: [String: Any]?
        
        public var orderType: String
        
        public var files: [Files]?
        
        public var orderingStore: Int?
        
        public var iin: String?
        
        public var network: String?
        
        public var type: String?
        
        public var cardId: String?
        
        public var successCallbackUrl: String?
        
        public var failureCallbackUrl: String?
        
        public var orderTags: [OrderTag]?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressId = "address_id"
            
            case paymentIdentifier = "payment_identifier"
            
            case paymentParams = "payment_params"
            
            case customMeta = "custom_meta"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case id = "id"
            
            case pos = "pos"
            
            case billingAddressId = "billing_address_id"
            
            case merchantCode = "merchant_code"
            
            case aggregator = "aggregator"
            
            case pickAtStoreUid = "pick_at_store_uid"
            
            case deviceId = "device_id"
            
            case deliveryAddress = "delivery_address"
            
            case paymentMode = "payment_mode"
            
            case checkoutMode = "checkout_mode"
            
            case customerDetails = "customer_details"
            
            case meta = "meta"
            
            case paymentMethods = "payment_methods"
            
            case staff = "staff"
            
            case employeeCode = "employee_code"
            
            case billingAddress = "billing_address"
            
            case callbackUrl = "callback_url"
            
            case userId = "user_id"
            
            case extraMeta = "extra_meta"
            
            case orderType = "order_type"
            
            case files = "files"
            
            case orderingStore = "ordering_store"
            
            case iin = "iin"
            
            case network = "network"
            
            case type = "type"
            
            case cardId = "card_id"
            
            case successCallbackUrl = "success_callback_url"
            
            case failureCallbackUrl = "failure_callback_url"
            
            case orderTags = "order_tags"
            
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, cardId: String? = nil, checkoutMode: String? = nil, customerDetails: CustomerDetails? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, failureCallbackUrl: String? = nil, files: [Files]? = nil, id: String, iin: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, network: String? = nil, orderingStore: Int? = nil, orderTags: [OrderTag]? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMethods: [PaymentMethod], paymentMode: String? = nil, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, successCallbackUrl: String? = nil, type: String? = nil, userId: String? = nil) {
            
            self.addressId = addressId
            
            self.paymentIdentifier = paymentIdentifier
            
            self.paymentParams = paymentParams
            
            self.customMeta = customMeta
            
            self.paymentAutoConfirm = paymentAutoConfirm
            
            self.id = id
            
            self.pos = pos
            
            self.billingAddressId = billingAddressId
            
            self.merchantCode = merchantCode
            
            self.aggregator = aggregator
            
            self.pickAtStoreUid = pickAtStoreUid
            
            self.deviceId = deviceId
            
            self.deliveryAddress = deliveryAddress
            
            self.paymentMode = paymentMode
            
            self.checkoutMode = checkoutMode
            
            self.customerDetails = customerDetails
            
            self.meta = meta
            
            self.paymentMethods = paymentMethods
            
            self.staff = staff
            
            self.employeeCode = employeeCode
            
            self.billingAddress = billingAddress
            
            self.callbackUrl = callbackUrl
            
            self.userId = userId
            
            self.extraMeta = extraMeta
            
            self.orderType = orderType
            
            self.files = files
            
            self.orderingStore = orderingStore
            
            self.iin = iin
            
            self.network = network
            
            self.type = type
            
            self.cardId = cardId
            
            self.successCallbackUrl = successCallbackUrl
            
            self.failureCallbackUrl = failureCallbackUrl
            
            self.orderTags = orderTags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addressId = try container.decode(String.self, forKey: .addressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentParams = try container.decode([String: Any].self, forKey: .paymentParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([CartCheckoutCustomMeta].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentAutoConfirm = try container.decode(Bool.self, forKey: .paymentAutoConfirm)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    pos = try container.decode(Bool.self, forKey: .pos)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantCode = try container.decode(String.self, forKey: .merchantCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickAtStoreUid = try container.decode(Int.self, forKey: .pickAtStoreUid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode([String: Any].self, forKey: .deliveryAddress)
                
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
                    checkoutMode = try container.decode(String.self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)
                
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
                
            
            
                paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)
                
            
            
            
                do {
                    staff = try container.decode(StaffCheckout.self, forKey: .staff)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    employeeCode = try container.decode(String.self, forKey: .employeeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extraMeta = try container.decode([String: Any].self, forKey: .extraMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderType = try container.decode(String.self, forKey: .orderType)
                
            
            
            
                do {
                    files = try container.decode([Files].self, forKey: .files)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStore = try container.decode(Int.self, forKey: .orderingStore)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    iin = try container.decode(String.self, forKey: .iin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    network = try container.decode(String.self, forKey: .network)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cardId = try container.decode(String.self, forKey: .cardId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderTags = try container.decode([OrderTag].self, forKey: .orderTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            
            
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(pickAtStoreUid, forKey: .pickAtStoreUid)
            
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            
            
            
            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(iin, forKey: .iin)
            
            
            
            
            try? container.encodeIfPresent(network, forKey: .network)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(cardId, forKey: .cardId)
            
            
            
            
            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)
            
            
            
            
            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)
            
            
            
            
            try? container.encodeIfPresent(orderTags, forKey: .orderTags)
            
            
        }
        
    }
}


