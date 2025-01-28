

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartConfigDetailObj
        Used By: Cart
    */
    class CartConfigDetailObj: Codable {
        
        public var id: String?
        
        public var appId: String?
        
        public var companyId: Int?
        
        public var createdOn: String?
        
        public var updatedOn: String?
        
        public var lastModifiedBy: String?
        
        public var minCartValue: Int?
        
        public var maxCartValue: Int?
        
        public var bulkCoupons: Bool?
        
        public var maxCartItems: Int?
        
        public var giftDisplayText: String?
        
        public var deliveryCharges: DeliveryChargesConfig?
        
        public var revenueEngineCoupon: Bool?
        
        public var giftPricing: Double?
        
        public var enabled: Bool?
        
        public var isActive: Bool?
        
        public var orderPlacing: OrderPlacing?
        
        public var name: String?
        
        public var articleTags: [String]?
        
        public var allowCouponWithRewards: Bool?
        
        public var gstInput: Bool?
        
        public var staffSelection: Bool?
        
        public var placingForCustomer: Bool?
        
        public var hideOnStorefront: Bool?
        
        public var panCard: PanCard?
        
        public var slug: String?
        
        public var isUniversal: Bool?
        
        public var internationalDeliveryCharges: DeliveryChargesConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case appId = "app_id"
            
            case companyId = "company_id"
            
            case createdOn = "created_on"
            
            case updatedOn = "updated_on"
            
            case lastModifiedBy = "last_modified_by"
            
            case minCartValue = "min_cart_value"
            
            case maxCartValue = "max_cart_value"
            
            case bulkCoupons = "bulk_coupons"
            
            case maxCartItems = "max_cart_items"
            
            case giftDisplayText = "gift_display_text"
            
            case deliveryCharges = "delivery_charges"
            
            case revenueEngineCoupon = "revenue_engine_coupon"
            
            case giftPricing = "gift_pricing"
            
            case enabled = "enabled"
            
            case isActive = "is_active"
            
            case orderPlacing = "order_placing"
            
            case name = "name"
            
            case articleTags = "article_tags"
            
            case allowCouponWithRewards = "allow_coupon_with_rewards"
            
            case gstInput = "gst_input"
            
            case staffSelection = "staff_selection"
            
            case placingForCustomer = "placing_for_customer"
            
            case hideOnStorefront = "hide_on_storefront"
            
            case panCard = "pan_card"
            
            case slug = "slug"
            
            case isUniversal = "is_universal"
            
            case internationalDeliveryCharges = "international_delivery_charges"
            
        }

        public init(allowCouponWithRewards: Bool? = nil, appId: String? = nil, articleTags: [String]? = nil, bulkCoupons: Bool? = nil, companyId: Int? = nil, createdOn: String? = nil, deliveryCharges: DeliveryChargesConfig? = nil, enabled: Bool? = nil, giftDisplayText: String? = nil, giftPricing: Double? = nil, gstInput: Bool? = nil, hideOnStorefront: Bool? = nil, id: String? = nil, internationalDeliveryCharges: DeliveryChargesConfig? = nil, isActive: Bool? = nil, isUniversal: Bool? = nil, lastModifiedBy: String? = nil, maxCartItems: Int? = nil, maxCartValue: Int? = nil, minCartValue: Int? = nil, name: String? = nil, orderPlacing: OrderPlacing? = nil, panCard: PanCard? = nil, placingForCustomer: Bool? = nil, revenueEngineCoupon: Bool? = nil, slug: String? = nil, staffSelection: Bool? = nil, updatedOn: String? = nil) {
            
            self.id = id
            
            self.appId = appId
            
            self.companyId = companyId
            
            self.createdOn = createdOn
            
            self.updatedOn = updatedOn
            
            self.lastModifiedBy = lastModifiedBy
            
            self.minCartValue = minCartValue
            
            self.maxCartValue = maxCartValue
            
            self.bulkCoupons = bulkCoupons
            
            self.maxCartItems = maxCartItems
            
            self.giftDisplayText = giftDisplayText
            
            self.deliveryCharges = deliveryCharges
            
            self.revenueEngineCoupon = revenueEngineCoupon
            
            self.giftPricing = giftPricing
            
            self.enabled = enabled
            
            self.isActive = isActive
            
            self.orderPlacing = orderPlacing
            
            self.name = name
            
            self.articleTags = articleTags
            
            self.allowCouponWithRewards = allowCouponWithRewards
            
            self.gstInput = gstInput
            
            self.staffSelection = staffSelection
            
            self.placingForCustomer = placingForCustomer
            
            self.hideOnStorefront = hideOnStorefront
            
            self.panCard = panCard
            
            self.slug = slug
            
            self.isUniversal = isUniversal
            
            self.internationalDeliveryCharges = internationalDeliveryCharges
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
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
            
            
            
            do {
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)
            
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
                deliveryCharges = try container.decode(DeliveryChargesConfig.self, forKey: .deliveryCharges)
            
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
                name = try container.decode(String.self, forKey: .name)
            
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
                hideOnStorefront = try container.decode(Bool.self, forKey: .hideOnStorefront)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isUniversal = try container.decode(Bool.self, forKey: .isUniversal)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                internationalDeliveryCharges = try container.decode(DeliveryChargesConfig.self, forKey: .internationalDeliveryCharges)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(updatedOn, forKey: .updatedOn)
            
            
            
            try? container.encodeIfPresent(lastModifiedBy, forKey: .lastModifiedBy)
            
            
            
            try? container.encodeIfPresent(minCartValue, forKey: .minCartValue)
            
            
            
            try? container.encodeIfPresent(maxCartValue, forKey: .maxCartValue)
            
            
            
            try? container.encodeIfPresent(bulkCoupons, forKey: .bulkCoupons)
            
            
            
            try? container.encodeIfPresent(maxCartItems, forKey: .maxCartItems)
            
            
            
            try? container.encodeIfPresent(giftDisplayText, forKey: .giftDisplayText)
            
            
            
            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)
            
            
            
            try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
            
            
            
            try? container.encodeIfPresent(giftPricing, forKey: .giftPricing)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(orderPlacing, forKey: .orderPlacing)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(articleTags, forKey: .articleTags)
            
            
            
            try? container.encodeIfPresent(allowCouponWithRewards, forKey: .allowCouponWithRewards)
            
            
            
            try? container.encodeIfPresent(gstInput, forKey: .gstInput)
            
            
            
            try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)
            
            
            
            try? container.encodeIfPresent(placingForCustomer, forKey: .placingForCustomer)
            
            
            
            try? container.encodeIfPresent(hideOnStorefront, forKey: .hideOnStorefront)
            
            
            
            try? container.encodeIfPresent(panCard, forKey: .panCard)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(isUniversal, forKey: .isUniversal)
            
            
            
            try? container.encodeIfPresent(internationalDeliveryCharges, forKey: .internationalDeliveryCharges)
            
            
        }
        
    }
}
