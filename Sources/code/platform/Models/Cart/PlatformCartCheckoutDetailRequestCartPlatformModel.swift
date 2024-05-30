

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformCartCheckoutDetailRequest
        Used By: Cart
    */

    class PlatformCartCheckoutDetailRequest: Codable {
        
        
        public var customMeta: [CartCheckoutCustomMeta]?
        
        public var addressId: String?
        
        public var paymentIdentifier: String?
        
        public var paymentParams: [String: Any]?
        
        public var paymentAutoConfirm: Bool?
        
        public var id: String
        
        public var pos: Bool?
        
        public var billingAddressId: String?
        
        public var merchantCode: String?
        
        public var aggregator: String?
        
        public var pickAtStoreUid: Int?
        
        public var deviceId: String?
        
        public var deliveryAddress: [String: Any]?
        
        public var paymentMode: String
        
        public var checkoutMode: String?
        
        public var customerDetails: CustomerDetails?
        
        public var meta: [String: Any]?
        
        public var staff: StaffCheckout?
        
        public var employeeCode: String?
        
        public var billingAddress: [String: Any]?
        
        public var callbackUrl: String?
        
        public var userId: String
        
        public var extraMeta: [String: Any]?
        
        public var orderType: String
        
        public var files: [Files]?
        
        public var orderingStore: Int?
        
        public var paymentExtraIdentifiers: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customMeta = "custom_meta"
            
            case addressId = "address_id"
            
            case paymentIdentifier = "payment_identifier"
            
            case paymentParams = "payment_params"
            
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
            
            case staff = "staff"
            
            case employeeCode = "employee_code"
            
            case billingAddress = "billing_address"
            
            case callbackUrl = "callback_url"
            
            case userId = "user_id"
            
            case extraMeta = "extra_meta"
            
            case orderType = "order_type"
            
            case files = "files"
            
            case orderingStore = "ordering_store"
            
            case paymentExtraIdentifiers = "payment_extra_identifiers"
            
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, checkoutMode: String? = nil, customerDetails: CustomerDetails? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, deviceId: String? = nil, employeeCode: String? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentExtraIdentifiers: [String: Any]? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil, userId: String) {
            
            self.customMeta = customMeta
            
            self.addressId = addressId
            
            self.paymentIdentifier = paymentIdentifier
            
            self.paymentParams = paymentParams
            
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
            
            self.staff = staff
            
            self.employeeCode = employeeCode
            
            self.billingAddress = billingAddress
            
            self.callbackUrl = callbackUrl
            
            self.userId = userId
            
            self.extraMeta = extraMeta
            
            self.orderType = orderType
            
            self.files = files
            
            self.orderingStore = orderingStore
            
            self.paymentExtraIdentifiers = paymentExtraIdentifiers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customMeta = try container.decode([CartCheckoutCustomMeta].self, forKey: .customMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
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
                
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
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
                    paymentExtraIdentifiers = try container.decode([String: Any].self, forKey: .paymentExtraIdentifiers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            
            
            
            try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            
            try? container.encodeIfPresent(paymentExtraIdentifiers, forKey: .paymentExtraIdentifiers)
            
            
        }
        
    }
}


