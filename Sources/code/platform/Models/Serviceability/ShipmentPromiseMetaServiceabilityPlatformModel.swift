

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentPromiseMeta
        Used By: Serviceability
    */

    class ShipmentPromiseMeta: Codable {
        
        
        public var sellerPromise: SellerPromise?
        
        public var courierPartnerPromise: CourierPartnerPromise?
        
        public var customerInitialPromise: CustomerInitialPromise?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerPromise = "seller_promise"
            
            case courierPartnerPromise = "courier_partner_promise"
            
            case customerInitialPromise = "customer_initial_promise"
            
        }

        public init(courierPartnerPromise: CourierPartnerPromise? = nil, customerInitialPromise: CustomerInitialPromise? = nil, sellerPromise: SellerPromise? = nil) {
            
            self.sellerPromise = sellerPromise
            
            self.courierPartnerPromise = courierPartnerPromise
            
            self.customerInitialPromise = customerInitialPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerPromise = try container.decode(SellerPromise.self, forKey: .sellerPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerPromise = try container.decode(CourierPartnerPromise.self, forKey: .courierPartnerPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerInitialPromise = try container.decode(CustomerInitialPromise.self, forKey: .customerInitialPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerPromise, forKey: .sellerPromise)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerPromise, forKey: .courierPartnerPromise)
            
            
            
            
            try? container.encodeIfPresent(customerInitialPromise, forKey: .customerInitialPromise)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentPromiseMeta
        Used By: Serviceability
    */

    class ShipmentPromiseMeta: Codable {
        
        
        public var sellerPromise: SellerPromise?
        
        public var courierPartnerPromise: CourierPartnerPromise?
        
        public var customerInitialPromise: CustomerInitialPromise?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerPromise = "seller_promise"
            
            case courierPartnerPromise = "courier_partner_promise"
            
            case customerInitialPromise = "customer_initial_promise"
            
        }

        public init(courierPartnerPromise: CourierPartnerPromise? = nil, customerInitialPromise: CustomerInitialPromise? = nil, sellerPromise: SellerPromise? = nil) {
            
            self.sellerPromise = sellerPromise
            
            self.courierPartnerPromise = courierPartnerPromise
            
            self.customerInitialPromise = customerInitialPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerPromise = try container.decode(SellerPromise.self, forKey: .sellerPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerPromise = try container.decode(CourierPartnerPromise.self, forKey: .courierPartnerPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerInitialPromise = try container.decode(CustomerInitialPromise.self, forKey: .customerInitialPromise)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerPromise, forKey: .sellerPromise)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerPromise, forKey: .courierPartnerPromise)
            
            
            
            
            try? container.encodeIfPresent(customerInitialPromise, forKey: .customerInitialPromise)
            
            
        }
        
    }
}


