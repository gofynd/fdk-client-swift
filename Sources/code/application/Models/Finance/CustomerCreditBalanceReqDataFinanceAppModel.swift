

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: CustomerCreditBalanceReqData
        Used By: Finance
    */
    class CustomerCreditBalanceReqData: Codable {
        
        public var sellerId: Int
        
        public var affiliateId: String
        
        public var customerMobileNumber: String?
        
        public var customerEmail: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerId = "seller_id"
            
            case affiliateId = "affiliate_id"
            
            case customerMobileNumber = "customer_mobile_number"
            
            case customerEmail = "customer_email"
            
        }

        public init(affiliateId: String, customerEmail: String? = nil, customerMobileNumber: String? = nil, sellerId: Int) {
            
            self.sellerId = sellerId
            
            self.affiliateId = affiliateId
            
            self.customerMobileNumber = customerMobileNumber
            
            self.customerEmail = customerEmail
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            sellerId = try container.decode(Int.self, forKey: .sellerId)
            
            
            
            
            affiliateId = try container.decode(String.self, forKey: .affiliateId)
            
            
            
            
            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customerEmail = try container.decode(String.self, forKey: .customerEmail)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(sellerId, forKey: .sellerId)
            
            
            
            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            try? container.encodeIfPresent(customerEmail, forKey: .customerEmail)
            
            
        }
        
    }
}
