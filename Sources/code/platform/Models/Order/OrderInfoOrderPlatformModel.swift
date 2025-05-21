

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderInfo
        Used By: Order
    */

    class OrderInfo: Codable {
        
        
        public var affiliateOrderId: String?
        
        public var codCharges: Double
        
        public var items: [String: Any]
        
        public var discount: Double
        
        public var billingAddress: OrderUser
        
        public var payment: [String: Any]?
        
        public var orderPriority: OrderPriority?
        
        public var shipment: ShipmentData?
        
        public var deliveryCharges: Double
        
        public var shippingAddress: OrderUser
        
        public var orderValue: Double
        
        public var paymentMode: String
        
        public var bags: [AffiliateBag]
        
        public var user: UserData
        
        public var coupon: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateOrderId = "affiliate_order_id"
            
            case codCharges = "cod_charges"
            
            case items = "items"
            
            case discount = "discount"
            
            case billingAddress = "billing_address"
            
            case payment = "payment"
            
            case orderPriority = "order_priority"
            
            case shipment = "shipment"
            
            case deliveryCharges = "delivery_charges"
            
            case shippingAddress = "shipping_address"
            
            case orderValue = "order_value"
            
            case paymentMode = "payment_mode"
            
            case bags = "bags"
            
            case user = "user"
            
            case coupon = "coupon"
            
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            
            self.affiliateOrderId = affiliateOrderId
            
            self.codCharges = codCharges
            
            self.items = items
            
            self.discount = discount
            
            self.billingAddress = billingAddress
            
            self.payment = payment
            
            self.orderPriority = orderPriority
            
            self.shipment = shipment
            
            self.deliveryCharges = deliveryCharges
            
            self.shippingAddress = shippingAddress
            
            self.orderValue = orderValue
            
            self.paymentMode = paymentMode
            
            self.bags = bags
            
            self.user = user
            
            self.coupon = coupon
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                items = try container.decode([String: Any].self, forKey: .items)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)
                
            
            
            
                do {
                    payment = try container.decode([String: Any].self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipment = try container.decode(ShipmentData.self, forKey: .shipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)
                
            
            
            
                orderValue = try container.decode(Double.self, forKey: .orderValue)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                bags = try container.decode([AffiliateBag].self, forKey: .bags)
                
            
            
            
                user = try container.decode(UserData.self, forKey: .user)
                
            
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
            
            
            
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderInfo
        Used By: Order
    */

    class OrderInfo: Codable {
        
        
        public var affiliateOrderId: String?
        
        public var codCharges: Double
        
        public var items: [String: Any]
        
        public var discount: Double
        
        public var billingAddress: OrderUser
        
        public var payment: [String: Any]?
        
        public var orderPriority: OrderPriority?
        
        public var shipment: ShipmentData?
        
        public var deliveryCharges: Double
        
        public var shippingAddress: OrderUser
        
        public var orderValue: Double
        
        public var paymentMode: String
        
        public var bags: [AffiliateBag]
        
        public var user: UserData
        
        public var coupon: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateOrderId = "affiliate_order_id"
            
            case codCharges = "cod_charges"
            
            case items = "items"
            
            case discount = "discount"
            
            case billingAddress = "billing_address"
            
            case payment = "payment"
            
            case orderPriority = "order_priority"
            
            case shipment = "shipment"
            
            case deliveryCharges = "delivery_charges"
            
            case shippingAddress = "shipping_address"
            
            case orderValue = "order_value"
            
            case paymentMode = "payment_mode"
            
            case bags = "bags"
            
            case user = "user"
            
            case coupon = "coupon"
            
        }

        public init(affiliateOrderId: String? = nil, bags: [AffiliateBag], billingAddress: OrderUser, codCharges: Double, coupon: String? = nil, deliveryCharges: Double, discount: Double, items: [String: Any], orderPriority: OrderPriority? = nil, orderValue: Double, payment: [String: Any]? = nil, paymentMode: String, shipment: ShipmentData? = nil, shippingAddress: OrderUser, user: UserData) {
            
            self.affiliateOrderId = affiliateOrderId
            
            self.codCharges = codCharges
            
            self.items = items
            
            self.discount = discount
            
            self.billingAddress = billingAddress
            
            self.payment = payment
            
            self.orderPriority = orderPriority
            
            self.shipment = shipment
            
            self.deliveryCharges = deliveryCharges
            
            self.shippingAddress = shippingAddress
            
            self.orderValue = orderValue
            
            self.paymentMode = paymentMode
            
            self.bags = bags
            
            self.user = user
            
            self.coupon = coupon
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                codCharges = try container.decode(Double.self, forKey: .codCharges)
                
            
            
            
                items = try container.decode([String: Any].self, forKey: .items)
                
            
            
            
                discount = try container.decode(Double.self, forKey: .discount)
                
            
            
            
                billingAddress = try container.decode(OrderUser.self, forKey: .billingAddress)
                
            
            
            
                do {
                    payment = try container.decode([String: Any].self, forKey: .payment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPriority = try container.decode(OrderPriority.self, forKey: .orderPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipment = try container.decode(ShipmentData.self, forKey: .shipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)
                
            
            
            
                shippingAddress = try container.decode(OrderUser.self, forKey: .shippingAddress)
                
            
            
            
                orderValue = try container.decode(Double.self, forKey: .orderValue)
                
            
            
            
                paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
            
            
            
                bags = try container.decode([AffiliateBag].self, forKey: .bags)
                
            
            
            
                user = try container.decode(UserData.self, forKey: .user)
                
            
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)
            
            
            
            
            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(discount, forKey: .discount)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(payment, forKey: .payment)
            
            
            
            
            try? container.encodeIfPresent(orderPriority, forKey: .orderPriority)
            
            
            
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)
            
            
            
            
            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(bags, forKey: .bags)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
        }
        
    }
}


