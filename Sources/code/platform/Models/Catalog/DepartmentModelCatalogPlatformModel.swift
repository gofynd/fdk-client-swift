

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DepartmentModel
        Used By: Catalog
    */

    class DepartmentModel: Codable {
        
        
        public var cls: String?
        
        public var customJson: [String: Any]?
        
        public var id: String?
        
        public var createdBy: UserDetail?
        
        public var isActive: Bool?
        
        public var logo: String
        
        public var modifiedBy: UserDetail?
        
        public var name: String
        
        public var priorityOrder: Int
        
        public var slug: String?
        
        public var synonyms: [String]?
        
        public var uid: Int
        
        public var verifiedBy: UserDetail?
        
        public var verifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cls = "_cls"
            
            case customJson = "_custom_json"
            
            case id = "_id"
            
            case createdBy = "created_by"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case priorityOrder = "priority_order"
            
            case slug = "slug"
            
            case synonyms = "synonyms"
            
            case uid = "uid"
            
            case verifiedBy = "verified_by"
            
            case verifiedOn = "verified_on"
            
        }

        public init(createdBy: UserDetail? = nil, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, name: String, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: String? = nil) {
            
            self.cls = cls
            
            self.customJson = customJson
            
            self.id = id
            
            self.createdBy = createdBy
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.priorityOrder = priorityOrder
            
            self.slug = slug
            
            self.synonyms = synonyms
            
            self.uid = uid
            
            self.verifiedBy = verifiedBy
            
            self.verifiedOn = verifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cls = try container.decode(String.self, forKey: .cls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserDetail.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                logo = try container.decode(String.self, forKey: .logo)
                
            
            
            
                do {
                    modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cls, forKey: .cls)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DepartmentModel
        Used By: Catalog
    */

    class DepartmentModel: Codable {
        
        
        public var cls: String?
        
        public var customJson: [String: Any]?
        
        public var id: String?
        
        public var createdBy: UserDetail?
        
        public var isActive: Bool?
        
        public var logo: String
        
        public var modifiedBy: UserDetail?
        
        public var name: String
        
        public var priorityOrder: Int
        
        public var slug: String?
        
        public var synonyms: [String]?
        
        public var uid: Int
        
        public var verifiedBy: UserDetail?
        
        public var verifiedOn: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cls = "_cls"
            
            case customJson = "_custom_json"
            
            case id = "_id"
            
            case createdBy = "created_by"
            
            case isActive = "is_active"
            
            case logo = "logo"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case priorityOrder = "priority_order"
            
            case slug = "slug"
            
            case synonyms = "synonyms"
            
            case uid = "uid"
            
            case verifiedBy = "verified_by"
            
            case verifiedOn = "verified_on"
            
        }

        public init(createdBy: UserDetail? = nil, isActive: Bool? = nil, logo: String, modifiedBy: UserDetail? = nil, name: String, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, uid: Int, verifiedBy: UserDetail? = nil, verifiedOn: String? = nil, cls: String? = nil, customJson: [String: Any]? = nil, id: String? = nil) {
            
            self.cls = cls
            
            self.customJson = customJson
            
            self.id = id
            
            self.createdBy = createdBy
            
            self.isActive = isActive
            
            self.logo = logo
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.priorityOrder = priorityOrder
            
            self.slug = slug
            
            self.synonyms = synonyms
            
            self.uid = uid
            
            self.verifiedBy = verifiedBy
            
            self.verifiedOn = verifiedOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cls = try container.decode(String.self, forKey: .cls)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserDetail.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                logo = try container.decode(String.self, forKey: .logo)
                
            
            
            
                do {
                    modifiedBy = try container.decode(UserDetail.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    verifiedBy = try container.decode(UserDetail.self, forKey: .verifiedBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cls, forKey: .cls)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
        }
        
    }
}


