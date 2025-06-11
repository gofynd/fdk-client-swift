

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartMetaConfigAdd
        Used By: Cart
    */

    class CartMetaConfigAdd: Codable {
        
        
        public var minCartValue: Int?
        
        public var maxCartValue: Int?
        
        public var bulkCoupons: Bool?
        
        public var maxCartItems: Int?
        
        public var giftDisplayText: String?
        
        public var deliveryCharges: DeliveryCharges?
        
        public var internationalDeliveryCharges: DeliveryCharges?
        
        public var revenueEngineCoupon: Bool?
        
        public var giftPricing: Double?
        
        public var enabled: Bool?
        
        public var appId: String?
        
        public var slug: String
        
        public var isUniversal: Bool?
        
        public var companyId: Double?
        
        public var updatedOn: String?
        
        public var lastModifiedBy: String?
        
        public var id: String?
        
        public var name: String
        
        public var isActive: Bool?
        
        public var orderPlacing: OrderPlacing?
        
        public var articleTags: [String]?
        
        public var allowCouponWithRewards: Bool?
        
        public var gstInput: Bool?
        
        public var staffSelection: Bool?
        
        public var placingForCustomer: Bool?
        
        public var panCard: PanCard?
        
        public var emptyCart: Bool?
        
        public var hideOnStorefront: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case minCartValue = "min_cart_value"
            
            case maxCartValue = "max_cart_value"
            
            case bulkCoupons = "bulk_coupons"
            
            case maxCartItems = "max_cart_items"
            
            case giftDisplayText = "gift_display_text"
            
            case deliveryCharges = "delivery_charges"
            
            case internationalDeliveryCharges = "international_delivery_charges"
            
            case revenueEngineCoupon = "revenue_engine_coupon"
            
            case giftPricing = "gift_pricing"
            
            case enabled = "enabled"
            
            case appId = "app_id"
            
            case slug = "slug"
            
            case isUniversal = "is_universal"
            
            case companyId = "company_id"
            
            case updatedOn = "updated_on"
            
            case lastModifiedBy = "last_modified_by"
            
            case id = "id"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case orderPlacing = "order_placing"
            
            case articleTags = "article_tags"
            
            case allowCouponWithRewards = "allow_coupon_with_rewards"
            
            case gstInput = "gst_input"
            
            case staffSelection = "staff_selection"
            
            case placingForCustomer = "placing_for_customer"
            
            case panCard = "pan_card"
            
            case emptyCart = "empty_cart"
            
            case hideOnStorefront = "hide_on_storefront"
            
        }

        public init(allowCouponWithRewards: Bool? = nil, appId: String? = nil, articleTags: [String]? = nil, bulkCoupons: Bool? = nil, companyId: Double? = nil, deliveryCharges: DeliveryCharges? = nil, emptyCart: Bool? = nil, enabled: Bool? = nil, giftDisplayText: String? = nil, giftPricing: Double? = nil, gstInput: Bool? = nil, hideOnStorefront: Bool? = nil, id: String? = nil, internationalDeliveryCharges: DeliveryCharges? = nil, isActive: Bool? = nil, isUniversal: Bool? = nil, lastModifiedBy: String? = nil, maxCartItems: Int? = nil, maxCartValue: Int? = nil, minCartValue: Int? = nil, name: String, orderPlacing: OrderPlacing? = nil, panCard: PanCard? = nil, placingForCustomer: Bool? = nil, revenueEngineCoupon: Bool? = nil, slug: String, staffSelection: Bool? = nil, updatedOn: String? = nil) {
            
            self.minCartValue = minCartValue
            
            self.maxCartValue = maxCartValue
            
            self.bulkCoupons = bulkCoupons
            
            self.maxCartItems = maxCartItems
            
            self.giftDisplayText = giftDisplayText
            
            self.deliveryCharges = deliveryCharges
            
            self.internationalDeliveryCharges = internationalDeliveryCharges
            
            self.revenueEngineCoupon = revenueEngineCoupon
            
            self.giftPricing = giftPricing
            
            self.enabled = enabled
            
            self.appId = appId
            
            self.slug = slug
            
            self.isUniversal = isUniversal
            
            self.companyId = companyId
            
            self.updatedOn = updatedOn
            
            self.lastModifiedBy = lastModifiedBy
            
            self.id = id
            
            self.name = name
            
            self.isActive = isActive
            
            self.orderPlacing = orderPlacing
            
            self.articleTags = articleTags
            
            self.allowCouponWithRewards = allowCouponWithRewards
            
            self.gstInput = gstInput
            
            self.staffSelection = staffSelection
            
            self.placingForCustomer = placingForCustomer
            
            self.panCard = panCard
            
            self.emptyCart = emptyCart
            
            self.hideOnStorefront = hideOnStorefront
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    minCartValue = try container.decode(Int.self, forKey: .minCartValue)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    maxCartValue = try container.decode(Int.self, forKey: .maxCartValue)
                
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
                    maxCartItems = try container.decode(Int.self, forKey: .maxCartItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftDisplayText = try container.decode(String.self, forKey: .giftDisplayText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryCharges = try container.decode(DeliveryCharges.self, forKey: .deliveryCharges)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    internationalDeliveryCharges = try container.decode(DeliveryCharges.self, forKey: .internationalDeliveryCharges)
                
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
                    giftPricing = try container.decode(Double.self, forKey: .giftPricing)
                
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
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    isUniversal = try container.decode(Bool.self, forKey: .isUniversal)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedOn = try container.decode(String.self, forKey: .updatedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastModifiedBy = try container.decode(String.self, forKey: .lastModifiedBy)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderPlacing = try container.decode(OrderPlacing.self, forKey: .orderPlacing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    articleTags = try container.decode([String].self, forKey: .articleTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowCouponWithRewards = try container.decode(Bool.self, forKey: .allowCouponWithRewards)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstInput = try container.decode(Bool.self, forKey: .gstInput)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staffSelection = try container.decode(Bool.self, forKey: .staffSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    placingForCustomer = try container.decode(Bool.self, forKey: .placingForCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    panCard = try container.decode(PanCard.self, forKey: .panCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emptyCart = try container.decode(Bool.self, forKey: .emptyCart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hideOnStorefront = try container.decode(Bool.self, forKey: .hideOnStorefront)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            
            try? container.encodeIfPresent(maxCartValue, forKey: .maxCartValue)
            
            
            
            
            try? container.encodeIfPresent(bulkCoupons, forKey: .bulkCoupons)
            
            
            
            
            try? container.encodeIfPresent(maxCartItems, forKey: .maxCartItems)
            
            
            
            
            try? container.encodeIfPresent(giftDisplayText, forKey: .giftDisplayText)
            
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(internationalDeliveryCharges, forKey: .internationalDeliveryCharges)
            
            
            
            
            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
            
            
            
            
            try? container.encodeIfPresent(giftPricing, forKey: .giftPricing)
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(isUniversal, forKey: .isUniversal)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            
            try? container.encodeIfPresent(lastModifiedBy, forKey: .lastModifiedBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(orderPlacing, forKey: .orderPlacing)
            
            
            
            
            try? container.encodeIfPresent(articleTags, forKey: .articleTags)
            
            
            
            
            try? container.encodeIfPresent(allowCouponWithRewards, forKey: .allowCouponWithRewards)
            
            
            
            
            try? container.encodeIfPresent(gstInput, forKey: .gstInput)
            
            
            
            
            try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)
            
            
            
            
            try? container.encodeIfPresent(placingForCustomer, forKey: .placingForCustomer)
            
            
            
            
            try? container.encodeIfPresent(panCard, forKey: .panCard)
            
            
            
            
            try? container.encodeIfPresent(emptyCart, forKey: .emptyCart)
            
            
            
            
            try? container.encodeIfPresent(hideOnStorefront, forKey: .hideOnStorefront)
            
            
        }
        
    }
}


