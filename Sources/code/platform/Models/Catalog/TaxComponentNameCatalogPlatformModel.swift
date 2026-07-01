

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: TaxComponentName
        Used By: Catalog
    */

    class TaxComponentName: Codable {
        
        
        public var id: String
        
        public var companyId: Int
        
        public var name: String
        
        public var description: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case companyId = "company_id"
            
            case name = "name"
            
            case description = "description"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(companyId: Int, createdOn: String? = nil, description: String? = nil, modifiedOn: String? = nil, name: String, id: String) {
            
            self.id = id
            
            self.companyId = companyId
            
            self.name = name
            
            self.description = description
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: TaxComponentName
        Used By: Catalog
    */

    class TaxComponentName: Codable {
        
        
        public var id: String
        
        public var companyId: Int
        
        public var name: String
        
        public var description: String?
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case companyId = "company_id"
            
            case name = "name"
            
            case description = "description"
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
        }

        public init(companyId: Int, createdOn: String? = nil, description: String? = nil, modifiedOn: String? = nil, name: String, id: String) {
            
            self.id = id
            
            self.companyId = companyId
            
            self.name = name
            
            self.description = description
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
        }
        
    }
}


