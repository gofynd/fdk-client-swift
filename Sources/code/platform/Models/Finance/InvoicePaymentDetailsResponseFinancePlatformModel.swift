

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: InvoicePaymentDetailsResponse
        Used By: Finance
    */

    class InvoicePaymentDetailsResponse: Codable {
        
        
        public var reason: String?
        
        public var data: InvoicePaymentDetailsResponseData?
        
        public var success: Bool?
        
        public var paymentDetailsVisible: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case reason = "reason"
            
            case data = "data"
            
            case success = "success"
            
            case paymentDetailsVisible = "payment_details_visible"
            
        }

        public init(data: InvoicePaymentDetailsResponseData? = nil, paymentDetailsVisible: Bool? = nil, reason: String? = nil, success: Bool? = nil) {
            
            self.reason = reason
            
            self.data = data
            
            self.success = success
            
            self.paymentDetailsVisible = paymentDetailsVisible
            
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
                    data = try container.decode(InvoicePaymentDetailsResponseData.self, forKey: .data)
                
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
                
            
            
                do {
                    paymentDetailsVisible = try container.decode(Bool.self, forKey: .paymentDetailsVisible)
                
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
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentDetailsVisible, forKey: .paymentDetailsVisible)
            
            
        }
        
    }
}




