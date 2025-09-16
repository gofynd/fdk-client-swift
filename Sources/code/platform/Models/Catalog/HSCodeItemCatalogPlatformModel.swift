

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: HSCodeItem
        Used By: Catalog
    */

    class HSCodeItem: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var type: HsTypeEnum
        
        public var companyId: Int?
        
        public var description: String?
        
        public var hsCode: String
        
        public var id: String?
        
        public var countryIso: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case type = "type"
            
            case companyId = "company_id"
            
            case description = "description"
            
            case hsCode = "hs_code"
            
            case id = "_id"
            
            case countryIso = "country_iso"
            
        }

        public init(companyId: Int? = nil, countryIso: String? = nil, createdOn: String? = nil, description: String? = nil, hsCode: String, modifiedOn: String? = nil, type: HsTypeEnum, id: String? = nil) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.type = type
            
            self.companyId = companyId
            
            self.description = description
            
            self.hsCode = hsCode
            
            self.id = id
            
            self.countryIso = countryIso
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                type = try container.decode(HsTypeEnum.self, forKey: .type)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                hsCode = try container.decode(String.self, forKey: .hsCode)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryIso = try container.decode(String.self, forKey: .countryIso)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(hsCode, forKey: .hsCode)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(countryIso, forKey: .countryIso)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: HSCodeItem
        Used By: Catalog
    */

    class HSCodeItem: Codable {
        
        
        public var createdOn: String?
        
        public var modifiedOn: String?
        
        public var type: HsTypeEnum
        
        public var companyId: Int?
        
        public var description: String?
        
        public var hsCode: String
        
        public var id: String?
        
        public var countryIso: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdOn = "created_on"
            
            case modifiedOn = "modified_on"
            
            case type = "type"
            
            case companyId = "company_id"
            
            case description = "description"
            
            case hsCode = "hs_code"
            
            case id = "_id"
            
            case countryIso = "country_iso"
            
        }

        public init(companyId: Int? = nil, countryIso: String? = nil, createdOn: String? = nil, description: String? = nil, hsCode: String, modifiedOn: String? = nil, type: HsTypeEnum, id: String? = nil) {
            
            self.createdOn = createdOn
            
            self.modifiedOn = modifiedOn
            
            self.type = type
            
            self.companyId = companyId
            
            self.description = description
            
            self.hsCode = hsCode
            
            self.id = id
            
            self.countryIso = countryIso
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                type = try container.decode(HsTypeEnum.self, forKey: .type)
                
            
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                hsCode = try container.decode(String.self, forKey: .hsCode)
                
            
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryIso = try container.decode(String.self, forKey: .countryIso)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(hsCode, forKey: .hsCode)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(countryIso, forKey: .countryIso)
            
            
        }
        
    }
}


