

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PromiseMeta
        Used By: Logistic
    */
    class PromiseMeta: Codable {
        
        public var sellerPromise: PromiseData?
        
        public var courierPartnerPromise: CourierPartnerPromiseData?
        
        public var customerInitialPromise: PromiseData?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerPromise = "seller_promise"
            
            case courierPartnerPromise = "courier_partner_promise"
            
            case customerInitialPromise = "customer_initial_promise"
            
        }

        public init(courierPartnerPromise: CourierPartnerPromiseData? = nil, customerInitialPromise: PromiseData? = nil, sellerPromise: PromiseData? = nil) {
            
            self.sellerPromise = sellerPromise
            
            self.courierPartnerPromise = courierPartnerPromise
            
            self.customerInitialPromise = customerInitialPromise
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                sellerPromise = try container.decode(PromiseData.self, forKey: .sellerPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                courierPartnerPromise = try container.decode(CourierPartnerPromiseData.self, forKey: .courierPartnerPromise)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customerInitialPromise = try container.decode(PromiseData.self, forKey: .customerInitialPromise)
            
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
