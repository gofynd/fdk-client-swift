

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: PaidInvoicePaymentDetail
        Used By: Finance
    */

    class PaidInvoicePaymentDetail: Codable {
        
        
        public var paymentDetails: [PaymentDetail]?
        
        public var dateOfPayment: String?
        
        public var amount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentDetails = "payment_details"
            
            case dateOfPayment = "date_of_payment"
            
            case amount = "amount"
            
        }

        public init(amount: Double? = nil, dateOfPayment: String? = nil, paymentDetails: [PaymentDetail]? = nil) {
            
            self.paymentDetails = paymentDetails
            
            self.dateOfPayment = dateOfPayment
            
            self.amount = amount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentDetails = try container.decode([PaymentDetail].self, forKey: .paymentDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dateOfPayment = try container.decode(String.self, forKey: .dateOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Double.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentDetails, forKey: .paymentDetails)
            
            
            
            
            try? container.encodeIfPresent(dateOfPayment, forKey: .dateOfPayment)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
        }
        
    }
}




