

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: CartPosCheckoutDetailRequest
        Used By: PosCart
    */
    class CartPosCheckoutDetailRequest: Codable {
        
        public var meta: [String: Any]?
        
        public var pickAtStoreUid: Int?
        
        public var billingAddress: [String: Any]?
        
        public var paymentAutoConfirm: Bool?
        
        public var callbackUrl: String?
        
        public var deliveryAddress: [String: Any]?
        
        public var merchantCode: String?
        
        public var orderType: String
        
        public var id: String?
        
        public var staff: StaffCheckout?
        
        public var customerDetails: CustomerDetails?
        
        public var addressId: String?
        
        public var aggregator: String?
        
        public var paymentParams: [String: Any]?
        
        public var billingAddressId: String?
        
        public var paymentMode: String
        
        public var pos: Bool?
        
        public var extraMeta: [String: Any]?
        
        public var customMeta: [CartCheckoutCustomMeta]?
        
        public var paymentIdentifier: String?
        
        public var orderingStore: Int?
        
        public var files: [Files]?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case pickAtStoreUid = "pick_at_store_uid"
            
            case billingAddress = "billing_address"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case callbackUrl = "callback_url"
            
            case deliveryAddress = "delivery_address"
            
            case merchantCode = "merchant_code"
            
            case orderType = "order_type"
            
            case id = "id"
            
            case staff = "staff"
            
            case customerDetails = "customer_details"
            
            case addressId = "address_id"
            
            case aggregator = "aggregator"
            
            case paymentParams = "payment_params"
            
            case billingAddressId = "billing_address_id"
            
            case paymentMode = "payment_mode"
            
            case pos = "pos"
            
            case extraMeta = "extra_meta"
            
            case customMeta = "custom_meta"
            
            case paymentIdentifier = "payment_identifier"
            
            case orderingStore = "ordering_store"
            
            case files = "files"
            
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, customerDetails: CustomerDetails? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, files: [Files]? = nil, id: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, orderingStore: Int? = nil, orderType: String, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMode: String, paymentParams: [String: Any]? = nil, pickAtStoreUid: Int? = nil, pos: Bool? = nil, staff: StaffCheckout? = nil) {
            
            self.meta = meta
            
            self.pickAtStoreUid = pickAtStoreUid
            
            self.billingAddress = billingAddress
            
            self.paymentAutoConfirm = paymentAutoConfirm
            
            self.callbackUrl = callbackUrl
            
            self.deliveryAddress = deliveryAddress
            
            self.merchantCode = merchantCode
            
            self.orderType = orderType
            
            self.id = id
            
            self.staff = staff
            
            self.customerDetails = customerDetails
            
            self.addressId = addressId
            
            self.aggregator = aggregator
            
            self.paymentParams = paymentParams
            
            self.billingAddressId = billingAddressId
            
            self.paymentMode = paymentMode
            
            self.pos = pos
            
            self.extraMeta = extraMeta
            
            self.customMeta = customMeta
            
            self.paymentIdentifier = paymentIdentifier
            
            self.orderingStore = orderingStore
            
            self.files = files
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
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
                billingAddress = try container.decode([String: Any].self, forKey: .billingAddress)
            
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
            
            
            
            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
            
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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            orderType = try container.decode(String.self, forKey: .orderType)
            
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
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
                customerDetails = try container.decode(CustomerDetails.self, forKey: .customerDetails)
            
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
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
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
                billingAddressId = try container.decode(String.self, forKey: .billingAddressId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            
            
            
            do {
                pos = try container.decode(Bool.self, forKey: .pos)
            
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
            
            
            
            do {
                customMeta = try container.decode([CartCheckoutCustomMeta].self, forKey: .customMeta)
            
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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                files = try container.decode([Files].self, forKey: .files)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(pickAtStoreUid, forKey: .pickAtStoreUid)
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            
            
            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
            
            
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            try? container.encodeIfPresent(pos, forKey: .pos)
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            try? container.encodeIfPresent(files, forKey: .files)
            
            
        }
        
    }
}
