

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetCustomerCreditBalanceResponseData
        Used By: Finance
    */

    class GetCustomerCreditBalanceResponseData: Codable {
        
        
        public var customerMobileNumber: String?
        
        public var totalCreditedBalance: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerMobileNumber = "customer_mobile_number"
            
            case totalCreditedBalance = "total_credited_balance"
            
        }

        public init(customerMobileNumber: String? = nil, totalCreditedBalance: Int? = nil) {
            
            self.customerMobileNumber = customerMobileNumber
            
            self.totalCreditedBalance = totalCreditedBalance
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCreditedBalance = try container.decode(Int.self, forKey: .totalCreditedBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)
            
            
        }
        
    }
}




