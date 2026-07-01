

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TemplateGlobalValidationData
        Used By: Catalog
    */

    class TemplateGlobalValidationData: Codable {
        
        
        public var globalValidation: GlobalValidation?
        

        public enum CodingKeys: String, CodingKey {
            
            case globalValidation = "global_validation"
            
        }

        public init(globalValidation: GlobalValidation? = nil) {
            
            self.globalValidation = globalValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    globalValidation = try container.decode(GlobalValidation.self, forKey: .globalValidation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(globalValidation, forKey: .globalValidation)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TemplateGlobalValidationData
        Used By: Catalog
    */

    class TemplateGlobalValidationData: Codable {
        
        
        public var globalValidation: GlobalValidation?
        

        public enum CodingKeys: String, CodingKey {
            
            case globalValidation = "global_validation"
            
        }

        public init(globalValidation: GlobalValidation? = nil) {
            
            self.globalValidation = globalValidation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    globalValidation = try container.decode(GlobalValidation.self, forKey: .globalValidation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(globalValidation, forKey: .globalValidation)
            
            
        }
        
    }
}


