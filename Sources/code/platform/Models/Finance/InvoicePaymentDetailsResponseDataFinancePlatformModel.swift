

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentDetailsResponseData
        Used By: Finance
    */

    class InvoicePaymentDetailsResponseData: Codable {
        
        
        public var paidInvoicePaymentDetails: [PaidInvoicePaymentDetail]?
        
        public var failedAttemptsDetails: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paidInvoicePaymentDetails = "paid_invoice_payment_details"
            
            case failedAttemptsDetails = "failed_attempts_details"
            
        }

        public init(failedAttemptsDetails: [[String: Any]]? = nil, paidInvoicePaymentDetails: [PaidInvoicePaymentDetail]? = nil) {
            
            self.paidInvoicePaymentDetails = paidInvoicePaymentDetails
            
            self.failedAttemptsDetails = failedAttemptsDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paidInvoicePaymentDetails = try container.decode([PaidInvoicePaymentDetail].self, forKey: .paidInvoicePaymentDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    failedAttemptsDetails = try container.decode([[String: Any]].self, forKey: .failedAttemptsDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paidInvoicePaymentDetails, forKey: .paidInvoicePaymentDetails)
            
            
            
            
            try? container.encodeIfPresent(failedAttemptsDetails, forKey: .failedAttemptsDetails)
            
            
        }
        
    }
}




