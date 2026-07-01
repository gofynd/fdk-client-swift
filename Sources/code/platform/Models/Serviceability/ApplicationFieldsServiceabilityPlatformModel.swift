

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationFields
        Used By: Serviceability
    */

    class ApplicationFields: Codable {
        
        
        public var address: [GetCountryFieldsAddress]?
        
        public var serviceabilityFields: [String]?
        
        public var addressTemplate: GetCountryFieldsAddressTemplateApplication?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case serviceabilityFields = "serviceability_fields"
            
            case addressTemplate = "address_template"
            
        }

        public init(address: [GetCountryFieldsAddress]? = nil, addressTemplate: GetCountryFieldsAddressTemplateApplication? = nil, serviceabilityFields: [String]? = nil) {
            
            self.address = address
            
            self.serviceabilityFields = serviceabilityFields
            
            self.addressTemplate = addressTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address = try container.decode([GetCountryFieldsAddress].self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    serviceabilityFields = try container.decode([String].self, forKey: .serviceabilityFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressTemplate = try container.decode(GetCountryFieldsAddressTemplateApplication.self, forKey: .addressTemplate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityFields, forKey: .serviceabilityFields)
            
            
            
            
            try? container.encodeIfPresent(addressTemplate, forKey: .addressTemplate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationFields
        Used By: Serviceability
    */

    class ApplicationFields: Codable {
        
        
        public var address: [GetCountryFieldsAddress]?
        
        public var serviceabilityFields: [String]?
        
        public var addressTemplate: GetCountryFieldsAddressTemplateApplication?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case serviceabilityFields = "serviceability_fields"
            
            case addressTemplate = "address_template"
            
        }

        public init(address: [GetCountryFieldsAddress]? = nil, addressTemplate: GetCountryFieldsAddressTemplateApplication? = nil, serviceabilityFields: [String]? = nil) {
            
            self.address = address
            
            self.serviceabilityFields = serviceabilityFields
            
            self.addressTemplate = addressTemplate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    address = try container.decode([GetCountryFieldsAddress].self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    serviceabilityFields = try container.decode([String].self, forKey: .serviceabilityFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressTemplate = try container.decode(GetCountryFieldsAddressTemplateApplication.self, forKey: .addressTemplate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityFields, forKey: .serviceabilityFields)
            
            
            
            
            try? container.encodeIfPresent(addressTemplate, forKey: .addressTemplate)
            
            
        }
        
    }
}


