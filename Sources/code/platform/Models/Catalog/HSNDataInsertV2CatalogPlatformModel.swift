

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: HSNDataInsertV2
        Used By: Catalog
    */

    class HSNDataInsertV2: Codable {
        
        
        public var countryCode: String
        
        public var taxes: [TaxSlab]
        
        public var hsnCodeId: String?
        
        public var type: String
        
        public var description: String
        
        public var modifiedOn: String?
        
        public var reportingHsn: String
        
        public var modifiedBy: [String: Any]?
        
        public var createdOn: String?
        
        public var hsnCode: String
        
        public var createdBy: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case taxes = "taxes"
            
            case hsnCodeId = "hsn_code_id"
            
            case type = "type"
            
            case description = "description"
            
            case modifiedOn = "modified_on"
            
            case reportingHsn = "reporting_hsn"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case hsnCode = "hsn_code"
            
            case createdBy = "created_by"
            
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            
            self.countryCode = countryCode
            
            self.taxes = taxes
            
            self.hsnCodeId = hsnCodeId
            
            self.type = type
            
            self.description = description
            
            self.modifiedOn = modifiedOn
            
            self.reportingHsn = reportingHsn
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.hsnCode = hsnCode
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                taxes = try container.decode([TaxSlab].self, forKey: .taxes)
                
            
            
            
                do {
                    hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
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
                
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: HSNDataInsertV2
        Used By: Catalog
    */

    class HSNDataInsertV2: Codable {
        
        
        public var countryCode: String
        
        public var taxes: [TaxSlab]
        
        public var hsnCodeId: String?
        
        public var type: String
        
        public var description: String
        
        public var modifiedOn: String?
        
        public var reportingHsn: String
        
        public var modifiedBy: [String: Any]?
        
        public var createdOn: String?
        
        public var hsnCode: String
        
        public var createdBy: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case taxes = "taxes"
            
            case hsnCodeId = "hsn_code_id"
            
            case type = "type"
            
            case description = "description"
            
            case modifiedOn = "modified_on"
            
            case reportingHsn = "reporting_hsn"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case hsnCode = "hsn_code"
            
            case createdBy = "created_by"
            
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            
            self.countryCode = countryCode
            
            self.taxes = taxes
            
            self.hsnCodeId = hsnCodeId
            
            self.type = type
            
            self.description = description
            
            self.modifiedOn = modifiedOn
            
            self.reportingHsn = reportingHsn
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.hsnCode = hsnCode
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                taxes = try container.decode([TaxSlab].self, forKey: .taxes)
                
            
            
            
                do {
                    hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
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
                
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}


