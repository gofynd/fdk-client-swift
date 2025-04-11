

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CompanyDRIResponseSchema
        Used By: Catalog
    */

    class CompanyDRIResponseSchema: Codable {
        
        
        public var tags: [String]?
        
        public var responsibilities: [String]?
        
        public var responsibilitiesDisplayName: [String]?
        
        public var uid: Int?
        
        public var companyId: Int?
        
        public var status: Bool?
        
        public var contact: [String: Any]?
        
        public var contactDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case responsibilities = "responsibilities"
            
            case responsibilitiesDisplayName = "responsibilities_display_name"
            
            case uid = "uid"
            
            case companyId = "company_id"
            
            case status = "status"
            
            case contact = "contact"
            
            case contactDetails = "contact_details"
            
        }

        public init(companyId: Int? = nil, contact: [String: Any]? = nil, contactDetails: [String: Any]? = nil, responsibilities: [String]? = nil, responsibilitiesDisplayName: [String]? = nil, status: Bool? = nil, tags: [String]? = nil, uid: Int? = nil) {
            
            self.tags = tags
            
            self.responsibilities = responsibilities
            
            self.responsibilitiesDisplayName = responsibilitiesDisplayName
            
            self.uid = uid
            
            self.companyId = companyId
            
            self.status = status
            
            self.contact = contact
            
            self.contactDetails = contactDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responsibilities = try container.decode([String].self, forKey: .responsibilities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responsibilitiesDisplayName = try container.decode([String].self, forKey: .responsibilitiesDisplayName)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode([String: Any].self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(responsibilities, forKey: .responsibilities)
            
            
            
            
            try? container.encodeIfPresent(responsibilitiesDisplayName, forKey: .responsibilitiesDisplayName)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CompanyDRIResponseSchema
        Used By: Catalog
    */

    class CompanyDRIResponseSchema: Codable {
        
        
        public var tags: [String]?
        
        public var responsibilities: [String]?
        
        public var responsibilitiesDisplayName: [String]?
        
        public var uid: Int?
        
        public var companyId: Int?
        
        public var status: Bool?
        
        public var contact: [String: Any]?
        
        public var contactDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case responsibilities = "responsibilities"
            
            case responsibilitiesDisplayName = "responsibilities_display_name"
            
            case uid = "uid"
            
            case companyId = "company_id"
            
            case status = "status"
            
            case contact = "contact"
            
            case contactDetails = "contact_details"
            
        }

        public init(companyId: Int? = nil, contact: [String: Any]? = nil, contactDetails: [String: Any]? = nil, responsibilities: [String]? = nil, responsibilitiesDisplayName: [String]? = nil, status: Bool? = nil, tags: [String]? = nil, uid: Int? = nil) {
            
            self.tags = tags
            
            self.responsibilities = responsibilities
            
            self.responsibilitiesDisplayName = responsibilitiesDisplayName
            
            self.uid = uid
            
            self.companyId = companyId
            
            self.status = status
            
            self.contact = contact
            
            self.contactDetails = contactDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responsibilities = try container.decode([String].self, forKey: .responsibilities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    responsibilitiesDisplayName = try container.decode([String].self, forKey: .responsibilitiesDisplayName)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode([String: Any].self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactDetails = try container.decode([String: Any].self, forKey: .contactDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(responsibilities, forKey: .responsibilities)
            
            
            
            
            try? container.encodeIfPresent(responsibilitiesDisplayName, forKey: .responsibilitiesDisplayName)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
        }
        
    }
}


