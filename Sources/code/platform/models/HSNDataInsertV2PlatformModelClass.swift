

import Foundation
public extension PlatformClient {
    /*
        Model: HSNDataInsertV2
        Used By: Catalog
    */

    class HSNDataInsertV2: Codable {
        
        
        public var description: String
        
        public var modifiedBy: [String: Any]?
        
        public var taxes: [TaxSlab]
        
        public var countryCode: String
        
        public var modifiedOn: String?
        
        public var type: String
        
        public var hsnCode: String
        
        public var createdBy: [String: Any]?
        
        public var reportingHsn: String
        
        public var createdOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case modifiedBy = "modified_by"
            
            case taxes = "taxes"
            
            case countryCode = "country_code"
            
            case modifiedOn = "modified_on"
            
            case type = "type"
            
            case hsnCode = "hsn_code"
            
            case createdBy = "created_by"
            
            case reportingHsn = "reporting_hsn"
            
            case createdOn = "created_on"
            
        }

        public init(countryCode: String, createdBy: [String: Any]? = nil, createdOn: String? = nil, description: String, hsnCode: String, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, reportingHsn: String, taxes: [TaxSlab], type: String) {
            
            self.description = description
            
            self.modifiedBy = modifiedBy
            
            self.taxes = taxes
            
            self.countryCode = countryCode
            
            self.modifiedOn = modifiedOn
            
            self.type = type
            
            self.hsnCode = hsnCode
            
            self.createdBy = createdBy
            
            self.reportingHsn = reportingHsn
            
            self.createdOn = createdOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                taxes = try container.decode([TaxSlab].self, forKey: .taxes)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                hsnCode = try container.decode(String.self, forKey: .hsnCode)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                reportingHsn = try container.decode(String.self, forKey: .reportingHsn)
                
            
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(taxes, forKey: .taxes)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(reportingHsn, forKey: .reportingHsn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
        }
        
    }
}
