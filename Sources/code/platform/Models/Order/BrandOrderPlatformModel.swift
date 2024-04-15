

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Brand
        Used By: Order
    */

    class Brand: Codable {
        
        
        public var creditNoteExpiryDays: Int?
        
        public var logo: String?
        
        public var invoicePrefix: String?
        
        public var creditNoteAllowed: Bool?
        
        public var startDate: String?
        
        public var company: String?
        
        public var isVirtualInvoice: Bool?
        
        public var scriptLastRan: String?
        
        public var pickupLocation: String?
        
        public var createdOn: String?
        
        public var brandName: String
        
        public var brandId: Int?
        
        public var modifiedOn: String?
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case creditNoteExpiryDays = "credit_note_expiry_days"
            
            case logo = "logo"
            
            case invoicePrefix = "invoice_prefix"
            
            case creditNoteAllowed = "credit_note_allowed"
            
            case startDate = "start_date"
            
            case company = "company"
            
            case isVirtualInvoice = "is_virtual_invoice"
            
            case scriptLastRan = "script_last_ran"
            
            case pickupLocation = "pickup_location"
            
            case createdOn = "created_on"
            
            case brandName = "brand_name"
            
            case brandId = "brand_id"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
        }

        public init(brandId: Int? = nil, brandName: String, company: String? = nil, createdOn: String? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, id: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: String? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            
            self.creditNoteExpiryDays = creditNoteExpiryDays
            
            self.logo = logo
            
            self.invoicePrefix = invoicePrefix
            
            self.creditNoteAllowed = creditNoteAllowed
            
            self.startDate = startDate
            
            self.company = company
            
            self.isVirtualInvoice = isVirtualInvoice
            
            self.scriptLastRan = scriptLastRan
            
            self.pickupLocation = pickupLocation
            
            self.createdOn = createdOn
            
            self.brandName = brandName
            
            self.brandId = brandId
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(String.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scriptLastRan = try container.decode(String.self, forKey: .scriptLastRan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickupLocation = try container.decode(String.self, forKey: .pickupLocation)
                
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
                
            
            
                brandName = try container.decode(String.self, forKey: .brandName)
                
            
            
            
                do {
                    brandId = try container.decode(Int.self, forKey: .brandId)
                
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
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(invoicePrefix, forKey: .invoicePrefix)
            
            
            
            
            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(isVirtualInvoice, forKey: .isVirtualInvoice)
            
            
            
            
            try? container.encodeIfPresent(scriptLastRan, forKey: .scriptLastRan)
            
            
            
            
            try? container.encodeIfPresent(pickupLocation, forKey: .pickupLocation)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Brand
        Used By: Order
    */

    class Brand: Codable {
        
        
        public var creditNoteExpiryDays: Int?
        
        public var logo: String?
        
        public var invoicePrefix: String?
        
        public var creditNoteAllowed: Bool?
        
        public var startDate: String?
        
        public var company: String?
        
        public var isVirtualInvoice: Bool?
        
        public var scriptLastRan: String?
        
        public var pickupLocation: String?
        
        public var createdOn: String?
        
        public var brandName: String
        
        public var brandId: Int?
        
        public var modifiedOn: String?
        
        public var id: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case creditNoteExpiryDays = "credit_note_expiry_days"
            
            case logo = "logo"
            
            case invoicePrefix = "invoice_prefix"
            
            case creditNoteAllowed = "credit_note_allowed"
            
            case startDate = "start_date"
            
            case company = "company"
            
            case isVirtualInvoice = "is_virtual_invoice"
            
            case scriptLastRan = "script_last_ran"
            
            case pickupLocation = "pickup_location"
            
            case createdOn = "created_on"
            
            case brandName = "brand_name"
            
            case brandId = "brand_id"
            
            case modifiedOn = "modified_on"
            
            case id = "id"
            
        }

        public init(brandId: Int? = nil, brandName: String, company: String? = nil, createdOn: String? = nil, creditNoteAllowed: Bool? = nil, creditNoteExpiryDays: Int? = nil, id: Int? = nil, invoicePrefix: String? = nil, isVirtualInvoice: Bool? = nil, logo: String? = nil, modifiedOn: String? = nil, pickupLocation: String? = nil, scriptLastRan: String? = nil, startDate: String? = nil) {
            
            self.creditNoteExpiryDays = creditNoteExpiryDays
            
            self.logo = logo
            
            self.invoicePrefix = invoicePrefix
            
            self.creditNoteAllowed = creditNoteAllowed
            
            self.startDate = startDate
            
            self.company = company
            
            self.isVirtualInvoice = isVirtualInvoice
            
            self.scriptLastRan = scriptLastRan
            
            self.pickupLocation = pickupLocation
            
            self.createdOn = createdOn
            
            self.brandName = brandName
            
            self.brandId = brandId
            
            self.modifiedOn = modifiedOn
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    creditNoteExpiryDays = try container.decode(Int.self, forKey: .creditNoteExpiryDays)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoicePrefix = try container.decode(String.self, forKey: .invoicePrefix)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditNoteAllowed = try container.decode(Bool.self, forKey: .creditNoteAllowed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(String.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isVirtualInvoice = try container.decode(Bool.self, forKey: .isVirtualInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scriptLastRan = try container.decode(String.self, forKey: .scriptLastRan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pickupLocation = try container.decode(String.self, forKey: .pickupLocation)
                
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
                
            
            
                brandName = try container.decode(String.self, forKey: .brandName)
                
            
            
            
                do {
                    brandId = try container.decode(Int.self, forKey: .brandId)
                
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
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(creditNoteExpiryDays, forKey: .creditNoteExpiryDays)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(invoicePrefix, forKey: .invoicePrefix)
            
            
            
            
            try? container.encodeIfPresent(creditNoteAllowed, forKey: .creditNoteAllowed)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(isVirtualInvoice, forKey: .isVirtualInvoice)
            
            
            
            
            try? container.encodeIfPresent(scriptLastRan, forKey: .scriptLastRan)
            
            
            
            
            try? container.encodeIfPresent(pickupLocation, forKey: .pickupLocation)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


