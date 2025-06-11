

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: HSNDataInsertV2
        Used By: Catalog
    */

    class HSNDataInsertV2: Codable {
        
        
        public var id: String?
        
        public var countryCode: String
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: CreatedBy?
        
        public var createdOn: String?
        
        public var description: String
        
        public var hsnCode: String
        
        public var hsnCodeId: String?
        
        public var modifiedOn: String?
        
        public var reportingHsn: String
        
        public var taxes: [TaxSlab]
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case countryCode = "country_code"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case description = "description"
            
            case hsnCode = "hsn_code"
            
            case hsnCodeId = "hsn_code_id"
            
            case modifiedOn = "modified_on"
            
            case reportingHsn = "reporting_hsn"
            
            case taxes = "taxes"
            
            case type = "type"
            
        }

        public init(countryCode: String, createdBy: CreatedBy? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, id: String? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            
            self.id = id
            
            self.countryCode = countryCode
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.description = description
            
            self.hsnCode = hsnCode
            
            self.hsnCodeId = hsnCodeId
            
            self.modifiedOn = modifiedOn
            
            self.reportingHsn = reportingHsn
            
            self.taxes = taxes
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
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
                
            
            
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)
                
            
            
            
                taxes = try container.decode([TaxSlab].self, forKey: .taxes)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: HSNDataInsertV2
        Used By: Catalog
    */

    class HSNDataInsertV2: Codable {
        
        
        public var id: String?
        
        public var countryCode: String
        
        public var createdBy: CreatedBy?
        
        public var modifiedBy: CreatedBy?
        
        public var createdOn: String?
        
        public var description: String
        
        public var hsnCode: String
        
        public var hsnCodeId: String?
        
        public var modifiedOn: String?
        
        public var reportingHsn: String
        
        public var taxes: [TaxSlab]
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case countryCode = "country_code"
            
            case createdBy = "created_by"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case description = "description"
            
            case hsnCode = "hsn_code"
            
            case hsnCodeId = "hsn_code_id"
            
            case modifiedOn = "modified_on"
            
            case reportingHsn = "reporting_hsn"
            
            case taxes = "taxes"
            
            case type = "type"
            
        }

        public init(countryCode: String, createdBy: CreatedBy? = nil, createdOn: String? = nil, description: String, hsnCode: String, hsnCodeId: String? = nil, id: String? = nil, modifiedBy: CreatedBy? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            
            self.id = id
            
            self.countryCode = countryCode
            
            self.createdBy = createdBy
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.description = description
            
            self.hsnCode = hsnCode
            
            self.hsnCodeId = hsnCodeId
            
            self.modifiedOn = modifiedOn
            
            self.reportingHsn = reportingHsn
            
            self.taxes = taxes
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(CreatedBy.self, forKey: .modifiedBy)
                
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
                
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
                
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
                
            
            
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)
                
            
            
            
                taxes = try container.decode([TaxSlab].self, forKey: .taxes)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


