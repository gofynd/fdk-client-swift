

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateBagsDetails
        Used By: Order
    */

    class AffiliateBagsDetails: Codable {
        
        
        public var affiliateBagId: String?
        
        public var couponCode: String?
        
        public var affiliateMeta: AffiliateMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateBagId = "affiliate_bag_id"
            
            case couponCode = "coupon_code"
            
            case affiliateMeta = "affiliate_meta"
            
        }

        public init(affiliateBagId: String? = nil, affiliateMeta: AffiliateMeta? = nil, couponCode: String? = nil) {
            
            self.affiliateBagId = affiliateBagId
            
            self.couponCode = couponCode
            
            self.affiliateMeta = affiliateMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateBagsDetails
        Used By: Order
    */

    class AffiliateBagsDetails: Codable {
        
        
        public var affiliateBagId: String?
        
        public var couponCode: String?
        
        public var affiliateMeta: AffiliateMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case affiliateBagId = "affiliate_bag_id"
            
            case couponCode = "coupon_code"
            
            case affiliateMeta = "affiliate_meta"
            
        }

        public init(affiliateBagId: String? = nil, affiliateMeta: AffiliateMeta? = nil, couponCode: String? = nil) {
            
            self.affiliateBagId = affiliateBagId
            
            self.couponCode = couponCode
            
            self.affiliateMeta = affiliateMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    couponCode = try container.decode(String.self, forKey: .couponCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)
            
            
            
            
            try? container.encodeIfPresent(couponCode, forKey: .couponCode)
            
            
            
            
            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
            
            
        }
        
    }
}


