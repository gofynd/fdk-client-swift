

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentOptionsResponse
        Used By: Finance
    */

    class InvoicePaymentOptionsResponse: Codable {
        
        
        public var reason: String?
        
        public var data: [InvoicePaymentOptionsResponseData]?
        
        public var totalPayableAmount: Double?
        
        public var invoiceCount: Int?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case reason = "reason"
            
            case data = "data"
            
            case totalPayableAmount = "total_payable_amount"
            
            case invoiceCount = "invoice_count"
            
            case success = "success"
            
        }

        public init(data: [InvoicePaymentOptionsResponseData]? = nil, invoiceCount: Int? = nil, reason: String? = nil, success: Bool? = nil, totalPayableAmount: Double? = nil) {
            
            self.reason = reason
            
            self.data = data
            
            self.totalPayableAmount = totalPayableAmount
            
            self.invoiceCount = invoiceCount
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([InvoicePaymentOptionsResponseData].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalPayableAmount = try container.decode(Double.self, forKey: .totalPayableAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceCount = try container.decode(Int.self, forKey: .invoiceCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(totalPayableAmount, forKey: .totalPayableAmount)
            
            
            
            
            try? container.encodeIfPresent(invoiceCount, forKey: .invoiceCount)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}




