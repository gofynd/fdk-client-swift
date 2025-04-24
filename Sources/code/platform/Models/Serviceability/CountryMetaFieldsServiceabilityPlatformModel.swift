

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CountryMetaFields
        Used By: Serviceability
    */

    class CountryMetaFields: Codable {
        
        
        public var applicationFields: ApplicationFields?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationFields = "application_fields"
            
        }

        public init(applicationFields: ApplicationFields? = nil) {
            
            self.applicationFields = applicationFields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationFields = try container.decode(ApplicationFields.self, forKey: .applicationFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationFields, forKey: .applicationFields)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CountryMetaFields
        Used By: Serviceability
    */

    class CountryMetaFields: Codable {
        
        
        public var applicationFields: ApplicationFields?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationFields = "application_fields"
            
        }

        public init(applicationFields: ApplicationFields? = nil) {
            
            self.applicationFields = applicationFields
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationFields = try container.decode(ApplicationFields.self, forKey: .applicationFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationFields, forKey: .applicationFields)
            
            
        }
        
    }
}


