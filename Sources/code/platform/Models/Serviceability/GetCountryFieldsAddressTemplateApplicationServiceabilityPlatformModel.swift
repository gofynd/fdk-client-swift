

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetCountryFieldsAddressTemplateApplication
        Used By: Serviceability
    */

    class GetCountryFieldsAddressTemplateApplication: Codable {
        
        
        public var checkoutForm: String
        
        public var storeOsForm: String
        
        public var defaultDisplay: String
        

        public enum CodingKeys: String, CodingKey {
            
            case checkoutForm = "checkout_form"
            
            case storeOsForm = "store_os_form"
            
            case defaultDisplay = "default_display"
            
        }

        public init(checkoutForm: String, defaultDisplay: String, storeOsForm: String) {
            
            self.checkoutForm = checkoutForm
            
            self.storeOsForm = storeOsForm
            
            self.defaultDisplay = defaultDisplay
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                checkoutForm = try container.decode(String.self, forKey: .checkoutForm)
                
            
            
            
                storeOsForm = try container.decode(String.self, forKey: .storeOsForm)
                
            
            
            
                defaultDisplay = try container.decode(String.self, forKey: .defaultDisplay)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(checkoutForm, forKey: .checkoutForm)
            
            
            
            
            try? container.encodeIfPresent(storeOsForm, forKey: .storeOsForm)
            
            
            
            
            try? container.encodeIfPresent(defaultDisplay, forKey: .defaultDisplay)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetCountryFieldsAddressTemplateApplication
        Used By: Serviceability
    */

    class GetCountryFieldsAddressTemplateApplication: Codable {
        
        
        public var checkoutForm: String
        
        public var storeOsForm: String
        
        public var defaultDisplay: String
        

        public enum CodingKeys: String, CodingKey {
            
            case checkoutForm = "checkout_form"
            
            case storeOsForm = "store_os_form"
            
            case defaultDisplay = "default_display"
            
        }

        public init(checkoutForm: String, defaultDisplay: String, storeOsForm: String) {
            
            self.checkoutForm = checkoutForm
            
            self.storeOsForm = storeOsForm
            
            self.defaultDisplay = defaultDisplay
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                checkoutForm = try container.decode(String.self, forKey: .checkoutForm)
                
            
            
            
                storeOsForm = try container.decode(String.self, forKey: .storeOsForm)
                
            
            
            
                defaultDisplay = try container.decode(String.self, forKey: .defaultDisplay)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(checkoutForm, forKey: .checkoutForm)
            
            
            
            
            try? container.encodeIfPresent(storeOsForm, forKey: .storeOsForm)
            
            
            
            
            try? container.encodeIfPresent(defaultDisplay, forKey: .defaultDisplay)
            
            
        }
        
    }
}


