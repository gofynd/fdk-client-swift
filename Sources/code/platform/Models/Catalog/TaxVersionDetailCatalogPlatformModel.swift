

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxVersionDetail
        Used By: Catalog
    */

    class TaxVersionDetail: Codable {
        
        
        public var id: String
        
        public var ruleId: String
        
        public var applicableDate: String
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var companyId: Int
        
        public var status: TaxStatusEnum?
        
        public var components: [TaxComponent]
        
        public var versionStatus: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case ruleId = "rule_id"
            
            case applicableDate = "applicable_date"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case companyId = "company_id"
            
            case status = "status"
            
            case components = "components"
            
            case versionStatus = "version_status"
            
        }

        public init(applicableDate: String, companyId: Int, components: [TaxComponent], createdOn: String, modifiedOn: String, ruleId: String, status: TaxStatusEnum? = nil, versionStatus: String, id: String) {
            
            self.id = id
            
            self.ruleId = ruleId
            
            self.applicableDate = applicableDate
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.companyId = companyId
            
            self.status = status
            
            self.components = components
            
            self.versionStatus = versionStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                ruleId = try container.decode(String.self, forKey: .ruleId)
                
            
            
            
                applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    status = try container.decode(TaxStatusEnum.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                components = try container.decode([TaxComponent].self, forKey: .components)
                
            
            
            
                versionStatus = try container.decode(String.self, forKey: .versionStatus)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(versionStatus, forKey: .versionStatus)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxVersionDetail
        Used By: Catalog
    */

    class TaxVersionDetail: Codable {
        
        
        public var id: String
        
        public var ruleId: String
        
        public var applicableDate: String
        
        public var createdOn: String
        
        public var modifiedOn: String
        
        public var companyId: Int
        
        public var status: TaxStatusEnum?
        
        public var components: [TaxComponent]
        
        public var versionStatus: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case ruleId = "rule_id"
            
            case applicableDate = "applicable_date"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case companyId = "company_id"
            
            case status = "status"
            
            case components = "components"
            
            case versionStatus = "version_status"
            
        }

        public init(applicableDate: String, companyId: Int, components: [TaxComponent], createdOn: String, modifiedOn: String, ruleId: String, status: TaxStatusEnum? = nil, versionStatus: String, id: String) {
            
            self.id = id
            
            self.ruleId = ruleId
            
            self.applicableDate = applicableDate
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.companyId = companyId
            
            self.status = status
            
            self.components = components
            
            self.versionStatus = versionStatus
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                ruleId = try container.decode(String.self, forKey: .ruleId)
                
            
            
            
                applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    status = try container.decode(TaxStatusEnum.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                components = try container.decode([TaxComponent].self, forKey: .components)
                
            
            
            
                versionStatus = try container.decode(String.self, forKey: .versionStatus)
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(versionStatus, forKey: .versionStatus)
            
            
        }
        
    }
}


