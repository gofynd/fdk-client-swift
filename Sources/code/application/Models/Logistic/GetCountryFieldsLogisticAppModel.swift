

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetCountryFields
        Used By: Logistic
    */
    class GetCountryFields: Codable {
        
        public var address: [GetCountryFieldsAddress]
        
        public var serviceabilityFields: [String]
        
        public var addressTemplate: GetCountryFieldsAddressTemplate
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case serviceabilityFields = "serviceability_fields"
            
            case addressTemplate = "address_template"
            
        }

        public init(address: [GetCountryFieldsAddress], addressTemplate: GetCountryFieldsAddressTemplate, serviceabilityFields: [String]) {
            
            self.address = address
            
            self.serviceabilityFields = serviceabilityFields
            
            self.addressTemplate = addressTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            address = try container.decode([GetCountryFieldsAddress].self, forKey: .address)
            
            
            
            
            serviceabilityFields = try container.decode([String].self, forKey: .serviceabilityFields)
            
            
            
            
            addressTemplate = try container.decode(GetCountryFieldsAddressTemplate.self, forKey: .addressTemplate)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityFields, forKey: .serviceabilityFields)
            
            
            
            
            try? container.encodeIfPresent(addressTemplate, forKey: .addressTemplate)
            
            
        }
        
    }
}
