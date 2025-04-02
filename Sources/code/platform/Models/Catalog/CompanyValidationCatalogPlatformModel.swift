

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CompanyValidation
        Used By: Catalog
    */

    class CompanyValidation: Codable {
        
        
        public var bankAcRequired: Bool?
        
        public var gstRequired: Bool?
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case bankAcRequired = "bank_ac_required"
            
            case gstRequired = "gst_required"
            
            case verified = "verified"
            
        }

        public init(bankAcRequired: Bool? = nil, gstRequired: Bool? = nil, verified: Bool? = nil) {
            
            self.bankAcRequired = bankAcRequired
            
            self.gstRequired = gstRequired
            
            self.verified = verified
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bankAcRequired = try container.decode(Bool.self, forKey: .bankAcRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstRequired = try container.decode(Bool.self, forKey: .gstRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bankAcRequired, forKey: .bankAcRequired)
            
            
            
            
            try? container.encodeIfPresent(gstRequired, forKey: .gstRequired)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CompanyValidation
        Used By: Catalog
    */

    class CompanyValidation: Codable {
        
        
        public var bankAcRequired: Bool?
        
        public var gstRequired: Bool?
        
        public var verified: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case bankAcRequired = "bank_ac_required"
            
            case gstRequired = "gst_required"
            
            case verified = "verified"
            
        }

        public init(bankAcRequired: Bool? = nil, gstRequired: Bool? = nil, verified: Bool? = nil) {
            
            self.bankAcRequired = bankAcRequired
            
            self.gstRequired = gstRequired
            
            self.verified = verified
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bankAcRequired = try container.decode(Bool.self, forKey: .bankAcRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstRequired = try container.decode(Bool.self, forKey: .gstRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bankAcRequired, forKey: .bankAcRequired)
            
            
            
            
            try? container.encodeIfPresent(gstRequired, forKey: .gstRequired)
            
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
        }
        
    }
}


