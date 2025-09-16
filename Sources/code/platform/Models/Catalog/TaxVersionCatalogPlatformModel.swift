

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxVersion
        Used By: Catalog
    */

    class TaxVersion: Codable {
        
        
        public var id: String?
        
        public var ruleId: String?
        
        public var applicableDate: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var companyId: Int?
        
        public var status: TaxStatusEnum?
        
        public var components: [TaxComponentResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case ruleId = "rule_id"
            
            case applicableDate = "applicable_date"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case companyId = "company_id"
            
            case status = "status"
            
            case components = "components"
            
        }

        public init(applicableDate: String? = nil, companyId: Int? = nil, components: [TaxComponentResponseSchema]? = nil, createdOn: String? = nil, modifiedOn: String? = nil, ruleId: String? = nil, status: TaxStatusEnum? = nil, id: String? = nil) {
            
            self.id = id
            
            self.ruleId = ruleId
            
            self.applicableDate = applicableDate
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.companyId = companyId
            
            self.status = status
            
            self.components = components
            
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
                
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(TaxStatusEnum.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    components = try container.decode([TaxComponentResponseSchema].self, forKey: .components)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(applicableDate, forKey: .applicableDate)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxVersion
        Used By: Catalog
    */

    class TaxVersion: Codable {
        
        
        public var id: String?
        
        public var ruleId: String?
        
        public var applicableDate: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var companyId: Int?
        
        public var status: TaxStatusEnum?
        
        public var components: [TaxComponentResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case ruleId = "rule_id"
            
            case applicableDate = "applicable_date"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case companyId = "company_id"
            
            case status = "status"
            
            case components = "components"
            
        }

        public init(applicableDate: String? = nil, companyId: Int? = nil, components: [TaxComponentResponseSchema]? = nil, createdOn: String? = nil, modifiedOn: String? = nil, ruleId: String? = nil, status: TaxStatusEnum? = nil, id: String? = nil) {
            
            self.id = id
            
            self.ruleId = ruleId
            
            self.applicableDate = applicableDate
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.companyId = companyId
            
            self.status = status
            
            self.components = components
            
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
                
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
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
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(TaxStatusEnum.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    components = try container.decode([TaxComponentResponseSchema].self, forKey: .components)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(applicableDate, forKey: .applicableDate)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
        }
        
    }
}


