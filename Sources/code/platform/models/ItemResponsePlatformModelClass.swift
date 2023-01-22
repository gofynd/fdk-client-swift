

import Foundation
public extension PlatformClient {
    /*
        Model: ItemResponse
        Used By: Logistic
    */

    class ItemResponse: Codable {
        
        
        public var timing: [TimmingResponse]?
        
        public var modifiedOn: String?
        
        public var displayName: String?
        
        public var integrationType: IntegrationTypeResponse?
        
        public var logistics: LogisticsResponse?
        
        public var storeType: String?
        
        public var modifiedBy: ModifiedByResponse?
        
        public var address: AddressResponse?
        
        public var customJson: [String: Any]?
        
        public var documents: [DocumentsResponse]?
        
        public var manager: ManagerResponse?
        
        public var gstCredentials: GstCredentialsResponse?
        
        public var code: String?
        
        public var name: String?
        
        public var createdOn: String?
        
        public var subType: String?
        
        public var stage: String?
        
        public var verifiedOn: String?
        
        public var contactNumbers: [ContactNumberResponse]?
        
        public var createdBy: CreatedByResponse?
        
        public var productReturnConfig: ProductReturnConfigResponse?
        
        public var notificationEmails: [String]?
        
        public var company: Int?
        
        public var cls: String?
        
        public var uid: Int?
        
        public var verifiedBy: ModifiedByResponse?
        
        public var warnings: WarningsResponse?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case timing = "timing"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
            case integrationType = "integration_type"
            
            case logistics = "logistics"
            
            case storeType = "store_type"
            
            case modifiedBy = "modified_by"
            
            case address = "address"
            
            case customJson = "_custom_json"
            
            case documents = "documents"
            
            case manager = "manager"
            
            case gstCredentials = "gst_credentials"
            
            case code = "code"
            
            case name = "name"
            
            case createdOn = "created_on"
            
            case subType = "sub_type"
            
            case stage = "stage"
            
            case verifiedOn = "verified_on"
            
            case contactNumbers = "contact_numbers"
            
            case createdBy = "created_by"
            
            case productReturnConfig = "product_return_config"
            
            case notificationEmails = "notification_emails"
            
            case company = "company"
            
            case cls = "_cls"
            
            case uid = "uid"
            
            case verifiedBy = "verified_by"
            
            case warnings = "warnings"
            
            case companyId = "company_id"
            
        }

        public init(address: AddressResponse? = nil, code: String? = nil, company: Int? = nil, companyId: Int? = nil, contactNumbers: [ContactNumberResponse]? = nil, createdBy: CreatedByResponse? = nil, createdOn: String? = nil, displayName: String? = nil, documents: [DocumentsResponse]? = nil, gstCredentials: GstCredentialsResponse? = nil, integrationType: IntegrationTypeResponse? = nil, logistics: LogisticsResponse? = nil, manager: ManagerResponse? = nil, modifiedBy: ModifiedByResponse? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, productReturnConfig: ProductReturnConfigResponse? = nil, stage: String? = nil, storeType: String? = nil, subType: String? = nil, timing: [TimmingResponse]? = nil, uid: Int? = nil, verifiedBy: ModifiedByResponse? = nil, verifiedOn: String? = nil, warnings: WarningsResponse? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            
            self.timing = timing
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
            self.integrationType = integrationType
            
            self.logistics = logistics
            
            self.storeType = storeType
            
            self.modifiedBy = modifiedBy
            
            self.address = address
            
            self.customJson = customJson
            
            self.documents = documents
            
            self.manager = manager
            
            self.gstCredentials = gstCredentials
            
            self.code = code
            
            self.name = name
            
            self.createdOn = createdOn
            
            self.subType = subType
            
            self.stage = stage
            
            self.verifiedOn = verifiedOn
            
            self.contactNumbers = contactNumbers
            
            self.createdBy = createdBy
            
            self.productReturnConfig = productReturnConfig
            
            self.notificationEmails = notificationEmails
            
            self.company = company
            
            self.cls = cls
            
            self.uid = uid
            
            self.verifiedBy = verifiedBy
            
            self.warnings = warnings
            
            self.companyId = companyId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    timing = try container.decode([TimmingResponse].self, forKey: .timing)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integrationType = try container.decode(IntegrationTypeResponse.self, forKey: .integrationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logistics = try container.decode(LogisticsResponse.self, forKey: .logistics)
                
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
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedByResponse.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(AddressResponse.self, forKey: .address)
                
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
                    documents = try container.decode([DocumentsResponse].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manager = try container.decode(ManagerResponse.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCredentials = try container.decode(GstCredentialsResponse.self, forKey: .gstCredentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
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
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stage = try container.decode(String.self, forKey: .stage)
                
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
                    contactNumbers = try container.decode([ContactNumberResponse].self, forKey: .contactNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedByResponse.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigResponse.self, forKey: .productReturnConfig)
                
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
                    company = try container.decode(Int.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cls = try container.decode(String.self, forKey: .cls)
                
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
                    verifiedBy = try container.decode(ModifiedByResponse.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode(WarningsResponse.self, forKey: .warnings)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(integrationType, forKey: .integrationType)
            
            
            
            
            try? container.encodeIfPresent(logistics, forKey: .logistics)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(cls, forKey: .cls)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}
