

import Foundation


public extension PlatformClient.Order {
    /*
        Model: Company
        Used By: Order
    */

    class Company: Codable {
        
        
        public var panNo: String?
        
        public var createdOn: String?
        
        public var id: Int?
        
        public var companyName: String?
        
        public var gstNumber: String?
        
        public var companyType: String?
        
        public var modifiedOn: String?
        
        public var meta: [String: Any]?
        
        public var businessType: String?
        
        public var agreementStartDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
            case createdOn = "created_on"
            
            case id = "id"
            
            case companyName = "company_name"
            
            case gstNumber = "gst_number"
            
            case companyType = "company_type"
            
            case modifiedOn = "modified_on"
            
            case meta = "meta"
            
            case businessType = "business_type"
            
            case agreementStartDate = "agreement_start_date"
            
        }

        public init(agreementStartDate: String? = nil, businessType: String? = nil, companyName: String? = nil, companyType: String? = nil, createdOn: String? = nil, gstNumber: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, modifiedOn: String? = nil, panNo: String? = nil) {
            
            self.panNo = panNo
            
            self.createdOn = createdOn
            
            self.id = id
            
            self.companyName = companyName
            
            self.gstNumber = gstNumber
            
            self.companyType = companyType
            
            self.modifiedOn = modifiedOn
            
            self.meta = meta
            
            self.businessType = businessType
            
            self.agreementStartDate = agreementStartDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
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
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstNumber = try container.decode(String.self, forKey: .gstNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    agreementStartDate = try container.decode(String.self, forKey: .agreementStartDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(agreementStartDate, forKey: .agreementStartDate)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: Company
        Used By: Order
    */

    class Company: Codable {
        
        
        public var panNo: String?
        
        public var createdOn: String?
        
        public var id: Int?
        
        public var companyName: String?
        
        public var gstNumber: String?
        
        public var companyType: String?
        
        public var modifiedOn: String?
        
        public var meta: [String: Any]?
        
        public var businessType: String?
        
        public var agreementStartDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case panNo = "pan_no"
            
            case createdOn = "created_on"
            
            case id = "id"
            
            case companyName = "company_name"
            
            case gstNumber = "gst_number"
            
            case companyType = "company_type"
            
            case modifiedOn = "modified_on"
            
            case meta = "meta"
            
            case businessType = "business_type"
            
            case agreementStartDate = "agreement_start_date"
            
        }

        public init(agreementStartDate: String? = nil, businessType: String? = nil, companyName: String? = nil, companyType: String? = nil, createdOn: String? = nil, gstNumber: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, modifiedOn: String? = nil, panNo: String? = nil) {
            
            self.panNo = panNo
            
            self.createdOn = createdOn
            
            self.id = id
            
            self.companyName = companyName
            
            self.gstNumber = gstNumber
            
            self.companyType = companyType
            
            self.modifiedOn = modifiedOn
            
            self.meta = meta
            
            self.businessType = businessType
            
            self.agreementStartDate = agreementStartDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    panNo = try container.decode(String.self, forKey: .panNo)
                
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
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gstNumber = try container.decode(String.self, forKey: .gstNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessType = try container.decode(String.self, forKey: .businessType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    agreementStartDate = try container.decode(String.self, forKey: .agreementStartDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(panNo, forKey: .panNo)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(gstNumber, forKey: .gstNumber)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(agreementStartDate, forKey: .agreementStartDate)
            
            
        }
        
    }
}


