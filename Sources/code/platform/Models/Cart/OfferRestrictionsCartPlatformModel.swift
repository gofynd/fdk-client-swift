

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferRestrictions
        Used By: Cart
    */

    class OfferRestrictions: Codable {
        
        
        public var uses: OfferUsesRestriction?
        
        public var postOrder: PostOrder?
        
        public var platforms: [String]?
        
        public var payments: PaymentModes?
        
        public var orderingStores: [Int]?
        
        public var orderQuantity: Int?
        
        public var user: OfferUser?
        
        public var multiStoreAllowed: Bool?
        
        public var fulfillmentOptions: [OfferRestrictionFulfillmentOptions]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uses = "uses"
            
            case postOrder = "post_order"
            
            case platforms = "platforms"
            
            case payments = "payments"
            
            case orderingStores = "ordering_stores"
            
            case orderQuantity = "order_quantity"
            
            case user = "user"
            
            case multiStoreAllowed = "multi_store_allowed"
            
            case fulfillmentOptions = "fulfillment_options"
            
        }

        public init(fulfillmentOptions: [OfferRestrictionFulfillmentOptions]? = nil, multiStoreAllowed: Bool? = nil, orderingStores: [Int]? = nil, orderQuantity: Int? = nil, payments: PaymentModes? = nil, platforms: [String]? = nil, postOrder: PostOrder? = nil, user: OfferUser? = nil, uses: OfferUsesRestriction? = nil) {
            
            self.uses = uses
            
            self.postOrder = postOrder
            
            self.platforms = platforms
            
            self.payments = payments
            
            self.orderingStores = orderingStores
            
            self.orderQuantity = orderQuantity
            
            self.user = user
            
            self.multiStoreAllowed = multiStoreAllowed
            
            self.fulfillmentOptions = fulfillmentOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uses = try container.decode(OfferUsesRestriction.self, forKey: .uses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    postOrder = try container.decode(PostOrder.self, forKey: .postOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    platforms = try container.decode([String].self, forKey: .platforms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    payments = try container.decode(PaymentModes.self, forKey: .payments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderingStores = try container.decode([Int].self, forKey: .orderingStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderQuantity = try container.decode(Int.self, forKey: .orderQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(OfferUser.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    multiStoreAllowed = try container.decode(Bool.self, forKey: .multiStoreAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fulfillmentOptions = try container.decode([OfferRestrictionFulfillmentOptions].self, forKey: .fulfillmentOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uses, forKey: .uses)
            
            
            
            
            try? container.encodeIfPresent(postOrder, forKey: .postOrder)
            
            
            
            
            try? container.encodeIfPresent(platforms, forKey: .platforms)
            
            
            
            
            try? container.encodeIfPresent(payments, forKey: .payments)
            
            
            
            
            try? container.encodeIfPresent(orderingStores, forKey: .orderingStores)
            
            
            
            
            try? container.encodeIfPresent(orderQuantity, forKey: .orderQuantity)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            
            try? container.encodeIfPresent(multiStoreAllowed, forKey: .multiStoreAllowed)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentOptions, forKey: .fulfillmentOptions)
            
            
        }
        
    }
}


