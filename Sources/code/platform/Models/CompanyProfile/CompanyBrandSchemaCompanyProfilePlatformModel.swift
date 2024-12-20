

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: CompanyBrandSchema
        Used By: CompanyProfile
    */

    class CompanyBrandSchema: Codable {
        
        
        public var stage: String?
        
        public var verifiedOn: String?
        
        public var verifiedBy: UserSchema?
        
        public var createdOn: String?
        
        public var createdBy: UserSchema?
        
        public var company: CompanySchema?
        
        public var warnings: [String: Any]?
        
        public var modifiedOn: String?
        
        public var uid: Int?
        
        public var rejectReason: String?
        
        public var brand: GetBrandResponseSchema?
        
        public var modifiedBy: UserSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case verifiedOn = "verified_on"
            
            case verifiedBy = "verified_by"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case company = "company"
            
            case warnings = "warnings"
            
            case modifiedOn = "modified_on"
            
            case uid = "uid"
            
            case rejectReason = "reject_reason"
            
            case brand = "brand"
            
            case modifiedBy = "modified_by"
            
        }

        public init(brand: GetBrandResponseSchema? = nil, company: CompanySchema? = nil, createdBy: UserSchema? = nil, createdOn: String? = nil, modifiedBy: UserSchema? = nil, modifiedOn: String? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, verifiedBy: UserSchema? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil) {
            
            self.stage = stage
            
            self.verifiedOn = verifiedOn
            
            self.verifiedBy = verifiedBy
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.company = company
            
            self.warnings = warnings
            
            self.modifiedOn = modifiedOn
            
            self.uid = uid
            
            self.rejectReason = rejectReason
            
            self.brand = brand
            
            self.modifiedBy = modifiedBy
            
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
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSchema.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(CompanySchema.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(GetBrandResponseSchema.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSchema.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}




