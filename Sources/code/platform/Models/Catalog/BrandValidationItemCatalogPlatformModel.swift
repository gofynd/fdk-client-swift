

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: BrandValidationItem
        Used By: Catalog
    */

    class BrandValidationItem: Codable {
        
        
        public var stage: String?
        
        public var consentDocRequired: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case consentDocRequired = "consent_doc_required"
            
        }

        public init(consentDocRequired: Bool? = nil, stage: String? = nil) {
            
            self.stage = stage
            
            self.consentDocRequired = consentDocRequired
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    consentDocRequired = try container.decode(Bool.self, forKey: .consentDocRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(consentDocRequired, forKey: .consentDocRequired)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: BrandValidationItem
        Used By: Catalog
    */

    class BrandValidationItem: Codable {
        
        
        public var stage: String?
        
        public var consentDocRequired: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case consentDocRequired = "consent_doc_required"
            
        }

        public init(consentDocRequired: Bool? = nil, stage: String? = nil) {
            
            self.stage = stage
            
            self.consentDocRequired = consentDocRequired
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    consentDocRequired = try container.decode(Bool.self, forKey: .consentDocRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(consentDocRequired, forKey: .consentDocRequired)
            
            
        }
        
    }
}


