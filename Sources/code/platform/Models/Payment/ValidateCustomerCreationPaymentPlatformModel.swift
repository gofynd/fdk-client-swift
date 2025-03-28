

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ValidateCustomerCreation
        Used By: Payment
    */

    class ValidateCustomerCreation: Codable {
        
        
        public var phoneNumber: String
        
        public var aggregator: String
        
        public var payload: String?
        
        public var deliveryAddress: AddressDetail?
        
        public var transactionAmountInPaise: Int
        
        public var orderItems: [OrderItems]?
        
        public var merchantParams: MerchantParams?
        
        public var billingAddress: AddressDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case phoneNumber = "phone_number"
            
            case aggregator = "aggregator"
            
            case payload = "payload"
            
            case deliveryAddress = "delivery_address"
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
            case orderItems = "order_items"
            
            case merchantParams = "merchant_params"
            
            case billingAddress = "billing_address"
            
        }

        public init(aggregator: String, billingAddress: AddressDetail? = nil, deliveryAddress: AddressDetail? = nil, merchantParams: MerchantParams? = nil, orderItems: [OrderItems]? = nil, payload: String? = nil, phoneNumber: String, transactionAmountInPaise: Int) {
            
            self.phoneNumber = phoneNumber
            
            self.aggregator = aggregator
            
            self.payload = payload
            
            self.deliveryAddress = deliveryAddress
            
            self.transactionAmountInPaise = transactionAmountInPaise
            
            self.orderItems = orderItems
            
            self.merchantParams = merchantParams
            
            self.billingAddress = billingAddress
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                do {
                    payload = try container.decode(String.self, forKey: .payload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(AddressDetail.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
            
            
            
                do {
                    orderItems = try container.decode([OrderItems].self, forKey: .orderItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantParams = try container.decode(MerchantParams.self, forKey: .merchantParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
            
            
            
            try? container.encodeIfPresent(orderItems, forKey: .orderItems)
            
            
            
            
            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ValidateCustomerCreation
        Used By: Payment
    */

    class ValidateCustomerCreation: Codable {
        
        
        public var phoneNumber: String
        
        public var aggregator: String
        
        public var payload: String?
        
        public var deliveryAddress: AddressDetail?
        
        public var transactionAmountInPaise: Int
        
        public var orderItems: [OrderItems]?
        
        public var merchantParams: MerchantParams?
        
        public var billingAddress: AddressDetail?
        

        public enum CodingKeys: String, CodingKey {
            
            case phoneNumber = "phone_number"
            
            case aggregator = "aggregator"
            
            case payload = "payload"
            
            case deliveryAddress = "delivery_address"
            
            case transactionAmountInPaise = "transaction_amount_in_paise"
            
            case orderItems = "order_items"
            
            case merchantParams = "merchant_params"
            
            case billingAddress = "billing_address"
            
        }

        public init(aggregator: String, billingAddress: AddressDetail? = nil, deliveryAddress: AddressDetail? = nil, merchantParams: MerchantParams? = nil, orderItems: [OrderItems]? = nil, payload: String? = nil, phoneNumber: String, transactionAmountInPaise: Int) {
            
            self.phoneNumber = phoneNumber
            
            self.aggregator = aggregator
            
            self.payload = payload
            
            self.deliveryAddress = deliveryAddress
            
            self.transactionAmountInPaise = transactionAmountInPaise
            
            self.orderItems = orderItems
            
            self.merchantParams = merchantParams
            
            self.billingAddress = billingAddress
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
            
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                do {
                    payload = try container.decode(String.self, forKey: .payload)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryAddress = try container.decode(AddressDetail.self, forKey: .deliveryAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                transactionAmountInPaise = try container.decode(Int.self, forKey: .transactionAmountInPaise)
                
            
            
            
                do {
                    orderItems = try container.decode([OrderItems].self, forKey: .orderItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchantParams = try container.decode(MerchantParams.self, forKey: .merchantParams)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(payload, forKey: .payload)
            
            
            
            
            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)
            
            
            
            
            try? container.encodeIfPresent(transactionAmountInPaise, forKey: .transactionAmountInPaise)
            
            
            
            
            try? container.encodeIfPresent(orderItems, forKey: .orderItems)
            
            
            
            
            try? container.encodeIfPresent(merchantParams, forKey: .merchantParams)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
        }
        
    }
}


