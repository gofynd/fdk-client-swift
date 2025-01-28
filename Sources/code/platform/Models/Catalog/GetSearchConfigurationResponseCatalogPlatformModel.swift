

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetSearchConfigurationResponse
        Used By: Catalog
    */

    class GetSearchConfigurationResponse: Codable {
        
        
        public var id: String?
        
        public var applicationId: String
        
        public var companyId: Int
        
        public var createdBy: UserSerializer?
        
        public var createdOn: String?
        
        public var isProximityEnabled: Bool?
        
        public var modifiedBy: UserSerializer?
        
        public var modifiedOn: String?
        
        public var proximity: Int?
        
        public var searchableAttributes: [SearchableAttribute]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case isProximityEnabled = "is_proximity_enabled"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case proximity = "proximity"
            
            case searchableAttributes = "searchable_attributes"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: UserSerializer? = nil, createdOn: String? = nil, isProximityEnabled: Bool? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, proximity: Int? = nil, searchableAttributes: [SearchableAttribute]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.isProximityEnabled = isProximityEnabled
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.proximity = proximity
            
            self.searchableAttributes = searchableAttributes
            
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
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
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
                    isProximityEnabled = try container.decode(Bool.self, forKey: .isProximityEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
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
                    proximity = try container.decode(Int.self, forKey: .proximity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    searchableAttributes = try container.decode([SearchableAttribute].self, forKey: .searchableAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(isProximityEnabled, forKey: .isProximityEnabled)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(proximity, forKey: .proximity)
            
            
            
            
            try? container.encodeIfPresent(searchableAttributes, forKey: .searchableAttributes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetSearchConfigurationResponse
        Used By: Catalog
    */

    class GetSearchConfigurationResponse: Codable {
        
        
        public var id: String?
        
        public var applicationId: String
        
        public var companyId: Int
        
        public var createdBy: UserSerializer?
        
        public var createdOn: String?
        
        public var isProximityEnabled: Bool?
        
        public var modifiedBy: UserSerializer?
        
        public var modifiedOn: String?
        
        public var proximity: Int?
        
        public var searchableAttributes: [SearchableAttribute]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case isProximityEnabled = "is_proximity_enabled"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case proximity = "proximity"
            
            case searchableAttributes = "searchable_attributes"
            
        }

        public init(applicationId: String, companyId: Int, createdBy: UserSerializer? = nil, createdOn: String? = nil, isProximityEnabled: Bool? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, proximity: Int? = nil, searchableAttributes: [SearchableAttribute]? = nil, id: String? = nil) {
            
            self.id = id
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.isProximityEnabled = isProximityEnabled
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.proximity = proximity
            
            self.searchableAttributes = searchableAttributes
            
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
                
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    createdBy = try container.decode(UserSerializer.self, forKey: .createdBy)
                
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
                    isProximityEnabled = try container.decode(Bool.self, forKey: .isProximityEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
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
                    proximity = try container.decode(Int.self, forKey: .proximity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    searchableAttributes = try container.decode([SearchableAttribute].self, forKey: .searchableAttributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(isProximityEnabled, forKey: .isProximityEnabled)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(proximity, forKey: .proximity)
            
            
            
            
            try? container.encodeIfPresent(searchableAttributes, forKey: .searchableAttributes)
            
            
        }
        
    }
}


