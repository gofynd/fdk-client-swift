

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartMetaCreation
        Used By: Cart
    */
    class CartMetaCreation: Codable {
        
        public var deliverySlots: [String: Any]?
        
        public var giftDetails: ArticleGiftDetail?
        
        public var pickUpCustomerDetails: [String: Any]?
        
        public var alternatePickupPerson: AlternatePickupPerson?
        
        public var checkoutMode: String?
        
        public var comment: String?
        
        public var gstin: String?
        
        public var customCartMeta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case deliverySlots = "delivery_slots"
            
            case giftDetails = "gift_details"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case alternatePickupPerson = "alternate_pickup_person"
            
            case checkoutMode = "checkout_mode"
            
            case comment = "comment"
            
            case gstin = "gstin"
            
            case customCartMeta = "custom_cart_meta"
            
        }

        public init(alternatePickupPerson: AlternatePickupPerson? = nil, checkoutMode: String? = nil, comment: String? = nil, customCartMeta: [String: Any]? = nil, deliverySlots: [String: Any]? = nil, giftDetails: ArticleGiftDetail? = nil, gstin: String? = nil, pickUpCustomerDetails: [String: Any]? = nil) {
            
            self.deliverySlots = deliverySlots
            
            self.giftDetails = giftDetails
            
            self.pickUpCustomerDetails = pickUpCustomerDetails
            
            self.alternatePickupPerson = alternatePickupPerson
            
            self.checkoutMode = checkoutMode
            
            self.comment = comment
            
            self.gstin = gstin
            
            self.customCartMeta = customCartMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                deliverySlots = try container.decode([String: Any].self, forKey: .deliverySlots)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                giftDetails = try container.decode(ArticleGiftDetail.self, forKey: .giftDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                alternatePickupPerson = try container.decode(AlternatePickupPerson.self, forKey: .alternatePickupPerson)
            
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
                comment = try container.decode(String.self, forKey: .comment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstin = try container.decode(String.self, forKey: .gstin)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customCartMeta = try container.decode([String: Any].self, forKey: .customCartMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
            
            try? container.encodeIfPresent(giftDetails, forKey: .giftDetails)
            
            
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            
            
            try? container.encodeIfPresent(alternatePickupPerson, forKey: .alternatePickupPerson)
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            try? container.encodeIfPresent(customCartMeta, forKey: .customCartMeta)
            
            
        }
        
    }
}
