

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartCheckoutDetailV2Creation
        Used By: Cart
    */
    class CartCheckoutDetailV2Creation: Codable {
        
        public var customMeta: [CartCheckoutCustomMeta]?
        
        public var customerDetails: CustomerDetails?
        
        public var merchantCode: String?
        
        public var cartId: String?
        
        public var id: String?
        
        public var paymentAutoConfirm: Bool?
        
        public var paymentMethods: [PaymentMethod]
        
        public var paymentMode: String
        
        public var aggregator: String?
        
        public var addressId: String?
        
        public var callbackUrl: String?
        
        public var deliveryAddress: [String: Any]?
        
        public var staff: StaffCheckout?
        
        public var orderType: String?
        
        public var orderingStore: Int?
        
        public var extraMeta: [String: Any]?
        
        public var paymentIdentifier: String?
        
        public var billingAddress: [String: Any]?
        
        public var paymentParams: [String: Any]?
        
        public var billingAddressId: String?
        
        public var meta: [String: Any]?
        
        public var iin: String?
        
        public var network: String?
        
        public var type: String?
        
        public var cardId: String?
        
        public var successCallbackUrl: String?
        
        public var failureCallbackUrl: String?
        
        public var orderTags: [OrderTag]?
        

        public enum CodingKeys: String, CodingKey {
            
            case customMeta = "custom_meta"
            
            case customerDetails = "customer_details"
            
            case merchantCode = "merchant_code"
            
            case cartId = "cart_id"
            
            case id = "id"
            
            case paymentAutoConfirm = "payment_auto_confirm"
            
            case paymentMethods = "payment_methods"
            
            case paymentMode = "payment_mode"
            
            case aggregator = "aggregator"
            
            case addressId = "address_id"
            
            case callbackUrl = "callback_url"
            
            case deliveryAddress = "delivery_address"
            
            case staff = "staff"
            
            case orderType = "order_type"
            
            case orderingStore = "ordering_store"
            
            case extraMeta = "extra_meta"
            
            case paymentIdentifier = "payment_identifier"
            
            case billingAddress = "billing_address"
            
            case paymentParams = "payment_params"
            
            case billingAddressId = "billing_address_id"
            
            case meta = "meta"
            
            case iin = "iin"
            
            case network = "network"
            
            case type = "type"
            
            case cardId = "card_id"
            
            case successCallbackUrl = "success_callback_url"
            
            case failureCallbackUrl = "failure_callback_url"
            
            case orderTags = "order_tags"
            
        }

        public init(addressId: String? = nil, aggregator: String? = nil, billingAddress: [String: Any]? = nil, billingAddressId: String? = nil, callbackUrl: String? = nil, cardId: String? = nil, cartId: String? = nil, customerDetails: CustomerDetails? = nil, customMeta: [CartCheckoutCustomMeta]? = nil, deliveryAddress: [String: Any]? = nil, extraMeta: [String: Any]? = nil, failureCallbackUrl: String? = nil, id: String? = nil, iin: String? = nil, merchantCode: String? = nil, meta: [String: Any]? = nil, network: String? = nil, orderingStore: Int? = nil, orderTags: [OrderTag]? = nil, orderType: String? = nil, paymentAutoConfirm: Bool? = nil, paymentIdentifier: String? = nil, paymentMethods: [PaymentMethod], paymentMode: String, paymentParams: [String: Any]? = nil, staff: StaffCheckout? = nil, successCallbackUrl: String? = nil, type: String? = nil) {
            
            self.customMeta = customMeta
            
            self.customerDetails = customerDetails
            
            self.merchantCode = merchantCode
            
            self.cartId = cartId
            
            self.id = id
            
            self.paymentAutoConfirm = paymentAutoConfirm
            
            self.paymentMethods = paymentMethods
            
            self.paymentMode = paymentMode
            
            self.aggregator = aggregator
            
            self.addressId = addressId
            
            self.callbackUrl = callbackUrl
            
            self.deliveryAddress = deliveryAddress
            
            self.staff = staff
            
            self.orderType = orderType
            
            self.orderingStore = orderingStore
            
            self.extraMeta = extraMeta
            
            self.paymentIdentifier = paymentIdentifier
            
            self.billingAddress = billingAddress
            
            self.paymentParams = paymentParams
            
            self.billingAddressId = billingAddressId
            
            self.meta = meta
            
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
                customMeta = try container.decode([CartCheckoutCustomMeta].self, forKey: .customMeta)
            
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
                merchantCode = try container.decode(String.self, forKey: .merchantCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartId = try container.decode(String.self, forKey: .cartId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
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
            
            
            
            paymentMethods = try container.decode([PaymentMethod].self, forKey: .paymentMethods)
            
            
            
            
            paymentMode = try container.decode(String.self, forKey: .paymentMode)
            
            
            
            
            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)
            
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
                staff = try container.decode(StaffCheckout.self, forKey: .staff)
            
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
                orderingStore = try container.decode(Int.self, forKey: .orderingStore)
            
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
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)
            
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
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
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
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            try? container.encodeIfPresent(customerDetails, forKey: .customerDetails)
            
            
            
            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(paymentAutoConfirm, forKey: .paymentAutoConfirm)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(addressId, forKey: .addressId)
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            try? container.encodeIfPresent(staff, forKey: .staff)
            
            
            
            try? container.encodeIfPresent(orderType, forKey: .orderType)
            
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
            
            try? container.encodeIfPresent(extraMeta, forKey: .extraMeta)
            
            
            
            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            try? container.encodeIfPresent(paymentParams, forKey: .paymentParams)
            
            
            
            try? container.encodeIfPresent(billingAddressId, forKey: .billingAddressId)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
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
