

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppCartConfig
        Used By: Configuration
    */

    class AppCartConfig: Codable {
        
        
        public var deliveryCharges: DeliveryCharges?
        
        public var internationalDeliveryCharges: InternationalDeliveryCharges?
        
        public var enabled: Bool?
        
        public var maxCartItems: Int?
        
        public var minCartValue: Double?
        
        public var bulkCoupons: Bool?
        
        public var revenueEngineCoupon: Bool?
        
        public var panCard: PanCardConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryCharges = "delivery_charges"
            
            case internationalDeliveryCharges = "international_delivery_charges"
            
            case enabled = "enabled"
            
            case maxCartItems = "max_cart_items"
            
            case minCartValue = "min_cart_value"
            
            case bulkCoupons = "bulk_coupons"
            
            case revenueEngineCoupon = "revenue_engine_coupon"
            
            case panCard = "pan_card"
            
        }

        public init(bulkCoupons: Bool? = nil, deliveryCharges: DeliveryCharges? = nil, enabled: Bool? = nil, internationalDeliveryCharges: InternationalDeliveryCharges? = nil, maxCartItems: Int? = nil, minCartValue: Double? = nil, panCard: PanCardConfig? = nil, revenueEngineCoupon: Bool? = nil) {
            
            self.deliveryCharges = deliveryCharges
            
            self.internationalDeliveryCharges = internationalDeliveryCharges
            
            self.enabled = enabled
            
            self.maxCartItems = maxCartItems
            
            self.minCartValue = minCartValue
            
            self.bulkCoupons = bulkCoupons
            
            self.revenueEngineCoupon = revenueEngineCoupon
            
            self.panCard = panCard
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryCharges = try container.decode(DeliveryCharges.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internationalDeliveryCharges = try container.decode(InternationalDeliveryCharges.self, forKey: .internationalDeliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxCartItems = try container.decode(Int.self, forKey: .maxCartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minCartValue = try container.decode(Double.self, forKey: .minCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkCoupons = try container.decode(Bool.self, forKey: .bulkCoupons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    panCard = try container.decode(PanCardConfig.self, forKey: .panCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(internationalDeliveryCharges, forKey: .internationalDeliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(maxCartItems, forKey: .maxCartItems)
            
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            
            try? container.encodeIfPresent(bulkCoupons, forKey: .bulkCoupons)
            
            
            
            
            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
            
            
            
            
            try? container.encodeIfPresent(panCard, forKey: .panCard)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppCartConfig
        Used By: Configuration
    */

    class AppCartConfig: Codable {
        
        
        public var deliveryCharges: DeliveryCharges?
        
        public var internationalDeliveryCharges: InternationalDeliveryCharges?
        
        public var enabled: Bool?
        
        public var maxCartItems: Int?
        
        public var minCartValue: Double?
        
        public var bulkCoupons: Bool?
        
        public var revenueEngineCoupon: Bool?
        
        public var panCard: PanCardConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryCharges = "delivery_charges"
            
            case internationalDeliveryCharges = "international_delivery_charges"
            
            case enabled = "enabled"
            
            case maxCartItems = "max_cart_items"
            
            case minCartValue = "min_cart_value"
            
            case bulkCoupons = "bulk_coupons"
            
            case revenueEngineCoupon = "revenue_engine_coupon"
            
            case panCard = "pan_card"
            
        }

        public init(bulkCoupons: Bool? = nil, deliveryCharges: DeliveryCharges? = nil, enabled: Bool? = nil, internationalDeliveryCharges: InternationalDeliveryCharges? = nil, maxCartItems: Int? = nil, minCartValue: Double? = nil, panCard: PanCardConfig? = nil, revenueEngineCoupon: Bool? = nil) {
            
            self.deliveryCharges = deliveryCharges
            
            self.internationalDeliveryCharges = internationalDeliveryCharges
            
            self.enabled = enabled
            
            self.maxCartItems = maxCartItems
            
            self.minCartValue = minCartValue
            
            self.bulkCoupons = bulkCoupons
            
            self.revenueEngineCoupon = revenueEngineCoupon
            
            self.panCard = panCard
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deliveryCharges = try container.decode(DeliveryCharges.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internationalDeliveryCharges = try container.decode(InternationalDeliveryCharges.self, forKey: .internationalDeliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxCartItems = try container.decode(Int.self, forKey: .maxCartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    minCartValue = try container.decode(Double.self, forKey: .minCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkCoupons = try container.decode(Bool.self, forKey: .bulkCoupons)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    panCard = try container.decode(PanCardConfig.self, forKey: .panCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(internationalDeliveryCharges, forKey: .internationalDeliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(maxCartItems, forKey: .maxCartItems)
            
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            
            try? container.encodeIfPresent(bulkCoupons, forKey: .bulkCoupons)
            
            
            
            
            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
            
            
            
            
            try? container.encodeIfPresent(panCard, forKey: .panCard)
            
            
        }
        
    }
}


