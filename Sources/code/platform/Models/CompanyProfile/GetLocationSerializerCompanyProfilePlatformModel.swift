

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: GetLocationSerializer
        Used By: CompanyProfile
    */

    class GetLocationSerializer: Codable {
        
        
        public var code: String
        
        public var phoneNumber: String?
        
        public var contactNumbers: [SellerPhoneNumber]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var name: String
        
        public var customJson: [String: Any]?
        
        public var verifiedOn: String?
        
        public var createdBy: UserSerializer?
        
        public var createdOn: String?
        
        public var company: GetCompanySerializer?
        
        public var address: GetAddressSerializer
        
        public var warnings: [String: Any]?
        
        public var storeType: String?
        
        public var manager: LocationManagerSerializer?
        
        public var autoInvoice: Bool?
        
        public var modifiedOn: String?
        
        public var uid: Int?
        
        public var timing: [LocationDayWiseSerializer]?
        
        public var stage: String?
        
        public var documents: [Document]?
        
        public var creditNote: Bool?
        
        public var holiday: [HolidaySchemaSerializer]?
        
        public var displayName: String
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var verifiedBy: UserSerializer?
        
        public var notificationEmails: [String]?
        
        public var modifiedBy: UserSerializer?
        
        public var tags: [String]?
        
        public var defaultOrderAcceptanceTiming: Bool?
        
        public var orderAcceptanceTiming: [LocationDayWiseSerializer]?
        
        public var avgOrderProcessingTime: AverageOrderProcessingTime?
        
        public var bulkShipment: Bool?
        
        public var autoAssignCourierPartner: Bool?
        
        public var isHyperlocalActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case phoneNumber = "phone_number"
            
            case contactNumbers = "contact_numbers"
            
            case gstCredentials = "gst_credentials"
            
            case name = "name"
            
            case customJson = "_custom_json"
            
            case verifiedOn = "verified_on"
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case company = "company"
            
            case address = "address"
            
            case warnings = "warnings"
            
            case storeType = "store_type"
            
            case manager = "manager"
            
            case autoInvoice = "auto_invoice"
            
            case modifiedOn = "modified_on"
            
            case uid = "uid"
            
            case timing = "timing"
            
            case stage = "stage"
            
            case documents = "documents"
            
            case creditNote = "credit_note"
            
            case holiday = "holiday"
            
            case displayName = "display_name"
            
            case productReturnConfig = "product_return_config"
            
            case verifiedBy = "verified_by"
            
            case notificationEmails = "notification_emails"
            
            case modifiedBy = "modified_by"
            
            case tags = "tags"
            
            case defaultOrderAcceptanceTiming = "default_order_acceptance_timing"
            
            case orderAcceptanceTiming = "order_acceptance_timing"
            
            case avgOrderProcessingTime = "avg_order_processing_time"
            
            case bulkShipment = "bulk_shipment"
            
            case autoAssignCourierPartner = "auto_assign_courier_partner"
            
            case isHyperlocalActive = "is_hyperlocal_active"
            
        }

        public init(address: GetAddressSerializer, autoAssignCourierPartner: Bool? = nil, autoInvoice: Bool? = nil, avgOrderProcessingTime: AverageOrderProcessingTime? = nil, bulkShipment: Bool? = nil, code: String, company: GetCompanySerializer? = nil, contactNumbers: [SellerPhoneNumber]? = nil, createdBy: UserSerializer? = nil, createdOn: String? = nil, creditNote: Bool? = nil, defaultOrderAcceptanceTiming: Bool? = nil, displayName: String, documents: [Document]? = nil, gstCredentials: InvoiceDetailsSerializer? = nil, holiday: [HolidaySchemaSerializer]? = nil, isHyperlocalActive: Bool? = nil, manager: LocationManagerSerializer? = nil, modifiedBy: UserSerializer? = nil, modifiedOn: String? = nil, name: String, notificationEmails: [String]? = nil, orderAcceptanceTiming: [LocationDayWiseSerializer]? = nil, phoneNumber: String? = nil, productReturnConfig: ProductReturnConfigSerializer? = nil, stage: String? = nil, storeType: String? = nil, tags: [String]? = nil, timing: [LocationDayWiseSerializer]? = nil, uid: Int? = nil, verifiedBy: UserSerializer? = nil, verifiedOn: String? = nil, warnings: [String: Any]? = nil, customJson: [String: Any]? = nil) {
            
            self.code = code
            
            self.phoneNumber = phoneNumber
            
            self.contactNumbers = contactNumbers
            
            self.gstCredentials = gstCredentials
            
            self.name = name
            
            self.customJson = customJson
            
            self.verifiedOn = verifiedOn
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.company = company
            
            self.address = address
            
            self.warnings = warnings
            
            self.storeType = storeType
            
            self.manager = manager
            
            self.autoInvoice = autoInvoice
            
            self.modifiedOn = modifiedOn
            
            self.uid = uid
            
            self.timing = timing
            
            self.stage = stage
            
            self.documents = documents
            
            self.creditNote = creditNote
            
            self.holiday = holiday
            
            self.displayName = displayName
            
            self.productReturnConfig = productReturnConfig
            
            self.verifiedBy = verifiedBy
            
            self.notificationEmails = notificationEmails
            
            self.modifiedBy = modifiedBy
            
            self.tags = tags
            
            self.defaultOrderAcceptanceTiming = defaultOrderAcceptanceTiming
            
            self.orderAcceptanceTiming = orderAcceptanceTiming
            
            self.avgOrderProcessingTime = avgOrderProcessingTime
            
            self.bulkShipment = bulkShipment
            
            self.autoAssignCourierPartner = autoAssignCourierPartner
            
            self.isHyperlocalActive = isHyperlocalActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                do {
                    phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstCredentials = try container.decode(InvoiceDetailsSerializer.self, forKey: .gstCredentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
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
                    company = try container.decode(GetCompanySerializer.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(GetAddressSerializer.self, forKey: .address)
                
            
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
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
                    manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timing = try container.decode([LocationDayWiseSerializer].self, forKey: .timing)
                
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
                    documents = try container.decode([Document].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNote = try container.decode(Bool.self, forKey: .creditNote)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    holiday = try container.decode([HolidaySchemaSerializer].self, forKey: .holiday)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)
                
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
                    modifiedBy = try container.decode(UserSerializer.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    defaultOrderAcceptanceTiming = try container.decode(Bool.self, forKey: .defaultOrderAcceptanceTiming)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderAcceptanceTiming = try container.decode([LocationDayWiseSerializer].self, forKey: .orderAcceptanceTiming)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    avgOrderProcessingTime = try container.decode(AverageOrderProcessingTime.self, forKey: .avgOrderProcessingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bulkShipment = try container.decode(Bool.self, forKey: .bulkShipment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoAssignCourierPartner = try container.decode(Bool.self, forKey: .autoAssignCourierPartner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isHyperlocalActive = try container.decode(Bool.self, forKey: .isHyperlocalActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            
            
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(creditNote, forKey: .creditNote)
            
            
            
            
            try? container.encodeIfPresent(holiday, forKey: .holiday)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(defaultOrderAcceptanceTiming, forKey: .defaultOrderAcceptanceTiming)
            
            
            
            
            try? container.encodeIfPresent(orderAcceptanceTiming, forKey: .orderAcceptanceTiming)
            
            
            
            
            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)
            
            
            
            
            try? container.encodeIfPresent(bulkShipment, forKey: .bulkShipment)
            
            
            
            
            try? container.encodeIfPresent(autoAssignCourierPartner, forKey: .autoAssignCourierPartner)
            
            
            
            
            try? container.encodeIfPresent(isHyperlocalActive, forKey: .isHyperlocalActive)
            
            
        }
        
    }
}




