

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformCartMetaCreation
        Used By: Cart
    */

    class PlatformCartMetaCreation: Codable {
        
        
        public var gstin: String?
        
        public var pickUpCustomerDetails: [String: Any]?
        
        public var alternatePickupPerson: PlatformAlternatePickupPerson?
        
        public var checkoutMode: String?
        
        public var giftDetails: [String: Any]?
        
        public var panNo: String?
        
        public var comment: String?
        
        public var staffUserId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case gstin = "gstin"
            
            case pickUpCustomerDetails = "pick_up_customer_details"
            
            case alternatePickupPerson = "alternate_pickup_person"
            
            case checkoutMode = "checkout_mode"
            
            case giftDetails = "gift_details"
            
            case panNo = "pan_no"
            
            case comment = "comment"
            
            case staffUserId = "staff_user_id"
            
        }

        public init(alternatePickupPerson: PlatformAlternatePickupPerson? = nil, checkoutMode: String? = nil, comment: String? = nil, giftDetails: [String: Any]? = nil, gstin: String? = nil, panNo: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, staffUserId: String? = nil) {
            
            self.gstin = gstin
            
            self.pickUpCustomerDetails = pickUpCustomerDetails
            
            self.alternatePickupPerson = alternatePickupPerson
            
            self.checkoutMode = checkoutMode
            
            self.giftDetails = giftDetails
            
            self.panNo = panNo
            
            self.comment = comment
            
            self.staffUserId = staffUserId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gstin = try container.decode(String.self, forKey: .gstin)
                
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
                    alternatePickupPerson = try container.decode(PlatformAlternatePickupPerson.self, forKey: .alternatePickupPerson)
                
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
                    giftDetails = try container.decode([String: Any].self, forKey: .giftDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
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
                    staffUserId = try container.decode(String.self, forKey: .staffUserId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
            
            
            
            
            try? container.encodeIfPresent(alternatePickupPerson, forKey: .alternatePickupPerson)
            
            
            
            
            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
            
            
            
            
            try? container.encodeIfPresent(giftDetails, forKey: .giftDetails)
            
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(staffUserId, forKey: .staffUserId)
            
            
        }
        
    }
}


