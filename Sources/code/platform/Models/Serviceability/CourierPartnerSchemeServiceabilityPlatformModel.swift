

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerScheme
        Used By: Serviceability
    */

    class CourierPartnerScheme: Codable {
        
        
        public var schemeId: String?
        
        public var cpExtId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case schemeId = "scheme_id"
            
            case cpExtId = "cp_ext_id"
            
        }

        public init(cpExtId: String? = nil, schemeId: String? = nil) {
            
            self.schemeId = schemeId
            
            self.cpExtId = cpExtId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cpExtId = try container.decode(String.self, forKey: .cpExtId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(cpExtId, forKey: .cpExtId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerScheme
        Used By: Serviceability
    */

    class CourierPartnerScheme: Codable {
        
        
        public var schemeId: String?
        
        public var cpExtId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case schemeId = "scheme_id"
            
            case cpExtId = "cp_ext_id"
            
        }

        public init(cpExtId: String? = nil, schemeId: String? = nil) {
            
            self.schemeId = schemeId
            
            self.cpExtId = cpExtId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    schemeId = try container.decode(String.self, forKey: .schemeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cpExtId = try container.decode(String.self, forKey: .cpExtId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(schemeId, forKey: .schemeId)
            
            
            
            
            try? container.encodeIfPresent(cpExtId, forKey: .cpExtId)
            
            
        }
        
    }
}


