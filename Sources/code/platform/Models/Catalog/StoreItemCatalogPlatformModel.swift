

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: StoreItem
        Used By: Catalog
    */

    class StoreItem: Codable {
        
        
        public var stage: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var modifiedOn: String?
        
        public var modifiedBy: UserSchemaCustom?
        
        public var manager: Manager?
        
        public var notificationEmails: [String]?
        
        public var verifiedOn: String?
        
        public var verifiedBy: UserSchemaCustom?
        
        public var integrationType: IntegrationType?
        
        public var companyId: Int?
        
        public var documents: [Document]?
        
        public var createdOn: String?
        
        public var address: Address?
        
        public var createdBy: UserSchemaCustom?
        
        public var customJson: [String: Any]?
        
        public var uid: Int?
        
        public var timing: [Timing]?
        
        public var storeType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case modifiedOn = "modified_on"
            
            case modifiedBy = "modified_by"
            
            case manager = "manager"
            
            case notificationEmails = "notification_emails"
            
            case verifiedOn = "verified_on"
            
            case verifiedBy = "verified_by"
            
            case integrationType = "integration_type"
            
            case companyId = "company_id"
            
            case documents = "documents"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case createdBy = "created_by"
            
            case customJson = "_custom_json"
            
            case uid = "uid"
            
            case timing = "timing"
            
            case storeType = "store_type"
            
        }

        public init(address: Address? = nil, companyId: Int? = nil, createdBy: UserSchemaCustom? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [Document]? = nil, integrationType: IntegrationType? = nil, manager: Manager? = nil, modifiedBy: UserSchemaCustom? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, stage: String? = nil, storeType: String? = nil, timing: [Timing]? = nil, uid: Int? = nil, verifiedBy: UserSchemaCustom? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            
            self.stage = stage
            
            self.name = name
            
            self.displayName = displayName
            
            self.modifiedOn = modifiedOn
            
            self.modifiedBy = modifiedBy
            
            self.manager = manager
            
            self.notificationEmails = notificationEmails
            
            self.verifiedOn = verifiedOn
            
            self.verifiedBy = verifiedBy
            
            self.integrationType = integrationType
            
            self.companyId = companyId
            
            self.documents = documents
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.createdBy = createdBy
            
            self.customJson = customJson
            
            self.uid = uid
            
            self.timing = timing
            
            self.storeType = storeType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    modifiedBy = try container.decode(UserSchemaCustom.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manager = try container.decode(Manager.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                
            
            
                do {
                    verifiedBy = try container.decode(UserSchemaCustom.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(IntegrationType.self, forKey: .integrationType)
                
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
                    documents = try container.decode([Document].self, forKey: .documents)
                
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
                    address = try container.decode(Address.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSchemaCustom.self, forKey: .createdBy)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode([Timing].self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: StoreItem
        Used By: Catalog
    */

    class StoreItem: Codable {
        
        
        public var stage: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var modifiedOn: String?
        
        public var modifiedBy: UserSchemaCustom?
        
        public var manager: Manager?
        
        public var notificationEmails: [String]?
        
        public var verifiedOn: String?
        
        public var verifiedBy: UserSchemaCustom?
        
        public var integrationType: IntegrationType?
        
        public var companyId: Int?
        
        public var documents: [Document]?
        
        public var createdOn: String?
        
        public var address: Address?
        
        public var createdBy: UserSchemaCustom?
        
        public var customJson: [String: Any]?
        
        public var uid: Int?
        
        public var timing: [Timing]?
        
        public var storeType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case modifiedOn = "modified_on"
            
            case modifiedBy = "modified_by"
            
            case manager = "manager"
            
            case notificationEmails = "notification_emails"
            
            case verifiedOn = "verified_on"
            
            case verifiedBy = "verified_by"
            
            case integrationType = "integration_type"
            
            case companyId = "company_id"
            
            case documents = "documents"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case createdBy = "created_by"
            
            case customJson = "_custom_json"
            
            case uid = "uid"
            
            case timing = "timing"
            
            case storeType = "store_type"
            
        }

        public init(address: Address? = nil, companyId: Int? = nil, createdBy: UserSchemaCustom? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [Document]? = nil, integrationType: IntegrationType? = nil, manager: Manager? = nil, modifiedBy: UserSchemaCustom? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, stage: String? = nil, storeType: String? = nil, timing: [Timing]? = nil, uid: Int? = nil, verifiedBy: UserSchemaCustom? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            
            self.stage = stage
            
            self.name = name
            
            self.displayName = displayName
            
            self.modifiedOn = modifiedOn
            
            self.modifiedBy = modifiedBy
            
            self.manager = manager
            
            self.notificationEmails = notificationEmails
            
            self.verifiedOn = verifiedOn
            
            self.verifiedBy = verifiedBy
            
            self.integrationType = integrationType
            
            self.companyId = companyId
            
            self.documents = documents
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.createdBy = createdBy
            
            self.customJson = customJson
            
            self.uid = uid
            
            self.timing = timing
            
            self.storeType = storeType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayName = try container.decode(String.self, forKey: .displayName)
                
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
                    modifiedBy = try container.decode(UserSchemaCustom.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manager = try container.decode(Manager.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                
            
            
                do {
                    verifiedBy = try container.decode(UserSchemaCustom.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(IntegrationType.self, forKey: .integrationType)
                
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
                    documents = try container.decode([Document].self, forKey: .documents)
                
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
                    address = try container.decode(Address.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSchemaCustom.self, forKey: .createdBy)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode([Timing].self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
        }
        
    }
}


