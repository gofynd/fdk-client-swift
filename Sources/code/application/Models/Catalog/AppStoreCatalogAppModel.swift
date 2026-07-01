

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: AppStore
        Used By: Catalog
    */
    class AppStore: Codable {
        
        public var uid: Int?
        
        public var departments: [AppStoreDepartment]?
        
        public var company: CompanyStore?
        
        public var manager: StoreManagerSchema?
        
        public var storeCode: String?
        
        public var address: StoreAddressSchema?
        
        public var name: String?
        
        public var contactNumbers: [SellerPhoneNumber]?
        
        public var customJson: [String: Any]?
        
        public var additionalContacts: [ContactDetails]?
        
        public var companyId: Int?
        
        public var displayName: String?
        
        public var storeType: String?
        
        public var autoInvoice: Bool?
        
        public var creditNote: Bool?
        
        public var stage: String?
        
        public var gstCredentials: GSTCredentials?
        
        public var productReturnConfig: ProductReturnConfig?
        
        public var avgOrderProcessingTime: OrderProcessingTime?
        
        public var bulkShipment: Bool?
        
        public var defaultOrderAcceptanceTiming: Bool?
        
        public var orderAcceptanceTiming: [OrderTiming]?
        
        public var autoAssignCourierPartner: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case departments = "departments"
            
            case company = "company"
            
            case manager = "manager"
            
            case storeCode = "store_code"
            
            case address = "address"
            
            case name = "name"
            
            case contactNumbers = "contact_numbers"
            
            case customJson = "_custom_json"
            
            case additionalContacts = "additional_contacts"
            
            case companyId = "company_id"
            
            case displayName = "display_name"
            
            case storeType = "store_type"
            
            case autoInvoice = "auto_invoice"
            
            case creditNote = "credit_note"
            
            case stage = "stage"
            
            case gstCredentials = "gst_credentials"
            
            case productReturnConfig = "product_return_config"
            
            case avgOrderProcessingTime = "avg_order_processing_time"
            
            case bulkShipment = "bulk_shipment"
            
            case defaultOrderAcceptanceTiming = "default_order_acceptance_timing"
            
            case orderAcceptanceTiming = "order_acceptance_timing"
            
            case autoAssignCourierPartner = "auto_assign_courier_partner"
            
        }

        public init(additionalContacts: [ContactDetails]? = nil, address: StoreAddressSchema? = nil, autoAssignCourierPartner: Bool? = nil, autoInvoice: Bool? = nil, avgOrderProcessingTime: OrderProcessingTime? = nil, bulkShipment: Bool? = nil, company: CompanyStore? = nil, companyId: Int? = nil, contactNumbers: [SellerPhoneNumber]? = nil, creditNote: Bool? = nil, defaultOrderAcceptanceTiming: Bool? = nil, departments: [AppStoreDepartment]? = nil, displayName: String? = nil, gstCredentials: GSTCredentials? = nil, manager: StoreManagerSchema? = nil, name: String? = nil, orderAcceptanceTiming: [OrderTiming]? = nil, productReturnConfig: ProductReturnConfig? = nil, stage: String? = nil, storeCode: String? = nil, storeType: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.uid = uid
            
            self.departments = departments
            
            self.company = company
            
            self.manager = manager
            
            self.storeCode = storeCode
            
            self.address = address
            
            self.name = name
            
            self.contactNumbers = contactNumbers
            
            self.customJson = customJson
            
            self.additionalContacts = additionalContacts
            
            self.companyId = companyId
            
            self.displayName = displayName
            
            self.storeType = storeType
            
            self.autoInvoice = autoInvoice
            
            self.creditNote = creditNote
            
            self.stage = stage
            
            self.gstCredentials = gstCredentials
            
            self.productReturnConfig = productReturnConfig
            
            self.avgOrderProcessingTime = avgOrderProcessingTime
            
            self.bulkShipment = bulkShipment
            
            self.defaultOrderAcceptanceTiming = defaultOrderAcceptanceTiming
            
            self.orderAcceptanceTiming = orderAcceptanceTiming
            
            self.autoAssignCourierPartner = autoAssignCourierPartner
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                departments = try container.decode([AppStoreDepartment].self, forKey: .departments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                company = try container.decode(CompanyStore.self, forKey: .company)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                manager = try container.decode(StoreManagerSchema.self, forKey: .manager)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(StoreAddressSchema.self, forKey: .address)
            
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
                contactNumbers = try container.decode([SellerPhoneNumber].self, forKey: .contactNumbers)
            
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
                additionalContacts = try container.decode([ContactDetails].self, forKey: .additionalContacts)
            
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
                displayName = try container.decode(String.self, forKey: .displayName)
            
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
                autoInvoice = try container.decode(Bool.self, forKey: .autoInvoice)
            
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
                stage = try container.decode(String.self, forKey: .stage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gstCredentials = try container.decode(GSTCredentials.self, forKey: .gstCredentials)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productReturnConfig = try container.decode(ProductReturnConfig.self, forKey: .productReturnConfig)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                avgOrderProcessingTime = try container.decode(OrderProcessingTime.self, forKey: .avgOrderProcessingTime)
            
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
                defaultOrderAcceptanceTiming = try container.decode(Bool.self, forKey: .defaultOrderAcceptanceTiming)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderAcceptanceTiming = try container.decode([OrderTiming].self, forKey: .orderAcceptanceTiming)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(additionalContacts, forKey: .additionalContacts)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            try? container.encodeIfPresent(autoInvoice, forKey: .autoInvoice)
            
            
            
            try? container.encodeIfPresent(creditNote, forKey: .creditNote)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            try? container.encodeIfPresent(avgOrderProcessingTime, forKey: .avgOrderProcessingTime)
            
            
            
            try? container.encodeIfPresent(bulkShipment, forKey: .bulkShipment)
            
            
            
            try? container.encodeIfPresent(defaultOrderAcceptanceTiming, forKey: .defaultOrderAcceptanceTiming)
            
            
            
            try? container.encodeIfPresent(orderAcceptanceTiming, forKey: .orderAcceptanceTiming)
            
            
            
            try? container.encodeIfPresent(autoAssignCourierPartner, forKey: .autoAssignCourierPartner)
            
            
        }
        
    }
}
