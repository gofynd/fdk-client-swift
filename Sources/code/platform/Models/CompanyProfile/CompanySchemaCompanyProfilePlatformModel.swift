

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: CompanySchema
        Used By: CompanyProfile
    */

    class CompanySchema: Codable {
        
        
        public var stage: String?
        
        public var customJson: [String: Any]?
        
        public var verifiedOn: String?
        
        public var verifiedBy: UserSchema?
        
        public var createdOn: String?
        
        public var createdBy: UserSchema?
        
        public var companyType: String
        
        public var modifiedOn: String?
        
        public var marketChannels: [String]?
        
        public var businessType: String
        
        public var addresses: [GetAddressSchema]?
        
        public var notificationEmails: [String]?
        
        public var details: CompanyDetails?
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var uid: Int?
        
        public var rejectReason: String?
        
        public var name: String?
        
        public var modifiedBy: UserSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case stage = "stage"
            
            case customJson = "_custom_json"
            
            case verifiedOn = "verified_on"
            
            case verifiedBy = "verified_by"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case companyType = "company_type"
            
            case modifiedOn = "modified_on"
            
            case marketChannels = "market_channels"
            
            case businessType = "business_type"
            
            case addresses = "addresses"
            
            case notificationEmails = "notification_emails"
            
            case details = "details"
            
            case businessCountryInfo = "business_country_info"
            
            case uid = "uid"
            
            case rejectReason = "reject_reason"
            
            case name = "name"
            
            case modifiedBy = "modified_by"
            
        }

        public init(addresses: [GetAddressSchema]? = nil, businessCountryInfo: BusinessCountryInfo? = nil, businessType: String, companyType: String, createdBy: UserSchema? = nil, createdOn: String? = nil, details: CompanyDetails? = nil, marketChannels: [String]? = nil, modifiedBy: UserSchema? = nil, modifiedOn: String? = nil, name: String? = nil, notificationEmails: [String]? = nil, rejectReason: String? = nil, stage: String? = nil, uid: Int? = nil, verifiedBy: UserSchema? = nil, verifiedOn: String? = nil, customJson: [String: Any]? = nil) {
            
            self.stage = stage
            
            self.customJson = customJson
            
            self.verifiedOn = verifiedOn
            
            self.verifiedBy = verifiedBy
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.companyType = companyType
            
            self.modifiedOn = modifiedOn
            
            self.marketChannels = marketChannels
            
            self.businessType = businessType
            
            self.addresses = addresses
            
            self.notificationEmails = notificationEmails
            
            self.details = details
            
            self.businessCountryInfo = businessCountryInfo
            
            self.uid = uid
            
            self.rejectReason = rejectReason
            
            self.name = name
            
            self.modifiedBy = modifiedBy
            
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
                    verifiedBy = try container.decode(UserSchema.self, forKey: .verifiedBy)
                
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
                    createdBy = try container.decode(UserSchema.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                companyType = try container.decode(String.self, forKey: .companyType)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    marketChannels = try container.decode([String].self, forKey: .marketChannels)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                businessType = try container.decode(String.self, forKey: .businessType)
                
            
            
            
                do {
                    addresses = try container.decode([GetAddressSchema].self, forKey: .addresses)
                
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
                    details = try container.decode(CompanyDetails.self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
                
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
                    rejectReason = try container.decode(String.self, forKey: .rejectReason)
                
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
                    modifiedBy = try container.decode(UserSchema.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(marketChannels, forKey: .marketChannels)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
        }
        
    }
}




