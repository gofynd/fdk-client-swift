

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetCountryFieldsAddressTemplate
        Used By: Logistic
    */
    class GetCountryFieldsAddressTemplate: Codable {
        
        public var checkoutForm: String
        
        public var invoiceDisplay: String
        

        public enum CodingKeys: String, CodingKey {
            
            case checkoutForm = "checkout_form"
            
            case invoiceDisplay = "invoice_display"
            
        }

        public init(checkoutForm: String, invoiceDisplay: String) {
            
            self.checkoutForm = checkoutForm
            
            self.invoiceDisplay = invoiceDisplay
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            checkoutForm = try container.decode(String.self, forKey: .checkoutForm)
            
            
            
            
            invoiceDisplay = try container.decode(String.self, forKey: .invoiceDisplay)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(checkoutForm, forKey: .checkoutForm)
            
            
            
            
            try? container.encodeIfPresent(invoiceDisplay, forKey: .invoiceDisplay)
            
            
        }
        
    }
}
