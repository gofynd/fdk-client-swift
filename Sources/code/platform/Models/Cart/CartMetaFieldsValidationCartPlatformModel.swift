

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartMetaFieldsValidation
        Used By: Cart
    */

    class CartMetaFieldsValidation: Codable {
        
        
        public var panNo: [String]?
        
        public var gstin: [String]?
        
        public var checkoutMode: [String]?
        
        public var comment: [String]?
        
        public var pickUpCustomerDetails: [String]?
        
        public var giftDetails: [String]?
        
        public var staffUserId: [String]?
        
        public var deliverySlots: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
            case gstin = "gstin"
            
            case checkoutMode = "checkout_mode"
            
            case comment = "comment"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case giftDetails = "gift_details"
            
            case staffUserId = "staff_user_id"
            
            case deliverySlots = "delivery_slots"
            
        }

        public init(checkoutMode: [String]? = nil, comment: [String]? = nil, deliverySlots: [String]? = nil, giftDetails: [String]? = nil, gstin: [String]? = nil, panNo: [String]? = nil, pickUpCustomerDetails: [String]? = nil, staffUserId: [String]? = nil) {
            
            self.panNo = panNo
            
            self.gstin = gstin
            
            self.checkoutMode = checkoutMode
            
            self.comment = comment
            
            self.pickUpCustomerDetails = pickUpCustomerDetails
            
            self.giftDetails = giftDetails
            
            self.staffUserId = staffUserId
            
            self.deliverySlots = deliverySlots
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    panNo = try container.decode([String].self, forKey: .panNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstin = try container.decode([String].self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkoutMode = try container.decode([String].self, forKey: .checkoutMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comment = try container.decode([String].self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickUpCustomerDetails = try container.decode([String].self, forKey: .pickUpCustomerDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    giftDetails = try container.decode([String].self, forKey: .giftDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    staffUserId = try container.decode([String].self, forKey: .staffUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliverySlots = try container.decode([String].self, forKey: .deliverySlots)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            
            
            
            try? container.encodeIfPresent(giftDetails, forKey: .giftDetails)
            
            
            
            
            try? container.encodeIfPresent(staffUserId, forKey: .staffUserId)
            
            
            
            
            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
            
            
        }
        
    }
}


