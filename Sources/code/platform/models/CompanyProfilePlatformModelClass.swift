import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: Website
        Used By: CompanyProfile
    */

    class Website: Codable {
        
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
        }

        public init(url: String?) {
            
            self.url = url
            
        }

        public func duplicate() -> Website {
            let dict = self.dictionary!
            let copy = Website(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
    
    /*
        Model: BusinessDetails
        Used By: CompanyProfile
    */

    class BusinessDetails: Codable {
        
        
        public var website: Website?
        

        public enum CodingKeys: String, CodingKey {
            
            case website = "website"
            
        }

        public init(website: Website?) {
            
            self.website = website
            
        }

        public func duplicate() -> BusinessDetails {
            let dict = self.dictionary!
            let copy = BusinessDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    website = try container.decode(Website.self, forKey: .website)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(website, forKey: .website)
            
            
        }
        
    }
    
    /*
        Model: ContactDetails
        Used By: CompanyProfile
    */

    class ContactDetails: Codable {
        
        
        public var emails: [String]?
        
        public var phone: [SellerPhoneNumber]?
        

        public enum CodingKeys: String, CodingKey {
            
            case emails = "emails"
            
            case phone = "phone"
            
        }

        public init(emails: [String]?, phone: [SellerPhoneNumber]?) {
            
            self.emails = emails
            
            self.phone = phone
            
        }

        public func duplicate() -> ContactDetails {
            let dict = self.dictionary!
            let copy = ContactDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    emails = try container.decode([String].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode([SellerPhoneNumber].self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
    
    /*
        Model: BusinessCountryInfo
        Used By: CompanyProfile
    */

    class BusinessCountryInfo: Codable {
        
        
        public var countryCode: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case countryCode = "country_code"
            
            case country = "country"
            
        }

        public init(country: String?, countryCode: String?) {
            
            self.countryCode = countryCode
            
            self.country = country
            
        }

        public func duplicate() -> BusinessCountryInfo {
            let dict = self.dictionary!
            let copy = BusinessCountryInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
    
    /*
        Model: GetCompanyProfileSerializerResponse
        Used By: CompanyProfile
    */

    class GetCompanyProfileSerializerResponse: Codable {
        
        
        public var companyType: String
        
        public var warnings: [String: Any]?
        
        public var mode: String?
        
        public var businessInfo: String?
        
        public var addresses: [GetAddressSerializer]?
        
        public var modifiedOn: String?
        
        public var documents: [Document]?
        
        public var createdBy: UserSerializer?
        
        public var uid: Int
        
        public var notificationEmails: [String]?
        
        public var businessDetails: BusinessDetails?
        
        public var modifiedBy: UserSerializer?
        
        public var name: String?
        
        public var contactDetails: ContactDetails?
        
        public var franchiseEnabled: Bool?
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var stage: String?
        
        public var businessType: String
        
        public var verifiedOn: String?
        
        public var createdOn: String?
        
        public var verifiedBy: UserSerializer?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyType = "company_type"
            
            case warnings = "warnings"
            
            case mode = "mode"
            
            case businessInfo = "business_info"
            
            case addresses = "addresses"
            
            case modifiedOn = "modified_on"
            
            case documents = "documents"
            
            case createdBy = "created_by"
            
            case uid = "uid"
            
            case notificationEmails = "notification_emails"
            
            case businessDetails = "business_details"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case contactDetails = "contact_details"
            
            case franchiseEnabled = "franchise_enabled"
            
            case businessCountryInfo = "business_country_info"
            
            case stage = "stage"
            
            case businessType = "business_type"
            
            case verifiedOn = "verified_on"
            
            case createdOn = "created_on"
            
            case verifiedBy = "verified_by"
            
        }

        public init(addresses: [GetAddressSerializer]?, businessCountryInfo: BusinessCountryInfo?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String, companyType: String, contactDetails: ContactDetails?, createdBy: UserSerializer?, createdOn: String?, documents: [Document]?, franchiseEnabled: Bool?, mode: String?, modifiedBy: UserSerializer?, modifiedOn: String?, name: String?, notificationEmails: [String]?, stage: String?, uid: Int, verifiedBy: UserSerializer?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.companyType = companyType
            
            self.warnings = warnings
            
            self.mode = mode
            
            self.businessInfo = businessInfo
            
            self.addresses = addresses
            
            self.modifiedOn = modifiedOn
            
            self.documents = documents
            
            self.createdBy = createdBy
            
            self.uid = uid
            
            self.notificationEmails = notificationEmails
            
            self.businessDetails = businessDetails
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.contactDetails = contactDetails
            
            self.franchiseEnabled = franchiseEnabled
            
            self.businessCountryInfo = businessCountryInfo
            
            self.stage = stage
            
            self.businessType = businessType
            
            self.verifiedOn = verifiedOn
            
            self.createdOn = createdOn
            
            self.verifiedBy = verifiedBy
            
        }

        public func duplicate() -> GetCompanyProfileSerializerResponse {
            let dict = self.dictionary!
            let copy = GetCompanyProfileSerializerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                companyType = try container.decode(String.self, forKey: .companyType)
                
            
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addresses = try container.decode([GetAddressSerializer].self, forKey: .addresses)
                
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
                    documents = try container.decode([Document].self, forKey: .documents)
                
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
                
            
            
                uid = try container.decode(Int.self, forKey: .uid)
                
            
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)
                
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
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
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
                    stage = try container.decode(String.self, forKey: .stage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                businessType = try container.decode(String.self, forKey: .businessType)
                
            
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                
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
                    verifiedBy = try container.decode(UserSerializer.self, forKey: .verifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
        }
        
    }
    
    /*
        Model: CreateUpdateAddressSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateAddressSerializer: Codable {
        
        
        public var city: String
        
        public var latitude: Double
        
        public var country: String
        
        public var address2: String?
        
        public var addressType: String
        
        public var longitude: Double
        
        public var landmark: String?
        
        public var address1: String
        
        public var countryCode: String?
        
        public var state: String
        
        public var pincode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case latitude = "latitude"
            
            case country = "country"
            
            case address2 = "address2"
            
            case addressType = "address_type"
            
            case longitude = "longitude"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case pincode = "pincode"
            
        }

        public init(address1: String, address2: String?, addressType: String, city: String, country: String, countryCode: String?, landmark: String?, latitude: Double, longitude: Double, pincode: Int, state: String) {
            
            self.city = city
            
            self.latitude = latitude
            
            self.country = country
            
            self.address2 = address2
            
            self.addressType = addressType
            
            self.longitude = longitude
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.countryCode = countryCode
            
            self.state = state
            
            self.pincode = pincode
            
        }

        public func duplicate() -> CreateUpdateAddressSerializer {
            let dict = self.dictionary!
            let copy = CreateUpdateAddressSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
    
    /*
        Model: UpdateCompany
        Used By: CompanyProfile
    */

    class UpdateCompany: Codable {
        
        
        public var companyType: String?
        
        public var warnings: [String: Any]?
        
        public var rejectReason: String?
        
        public var customJson: [String: Any]?
        
        public var businessInfo: String?
        
        public var addresses: [CreateUpdateAddressSerializer]?
        
        public var name: String?
        
        public var contactDetails: ContactDetails?
        
        public var documents: [Document]?
        
        public var franchiseEnabled: Bool?
        
        public var notificationEmails: [String]?
        
        public var businessDetails: BusinessDetails?
        
        public var businessType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyType = "company_type"
            
            case warnings = "warnings"
            
            case rejectReason = "reject_reason"
            
            case customJson = "_custom_json"
            
            case businessInfo = "business_info"
            
            case addresses = "addresses"
            
            case name = "name"
            
            case contactDetails = "contact_details"
            
            case documents = "documents"
            
            case franchiseEnabled = "franchise_enabled"
            
            case notificationEmails = "notification_emails"
            
            case businessDetails = "business_details"
            
            case businessType = "business_type"
            
        }

        public init(addresses: [CreateUpdateAddressSerializer]?, businessDetails: BusinessDetails?, businessInfo: String?, businessType: String?, companyType: String?, contactDetails: ContactDetails?, documents: [Document]?, franchiseEnabled: Bool?, name: String?, notificationEmails: [String]?, rejectReason: String?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.companyType = companyType
            
            self.warnings = warnings
            
            self.rejectReason = rejectReason
            
            self.customJson = customJson
            
            self.businessInfo = businessInfo
            
            self.addresses = addresses
            
            self.name = name
            
            self.contactDetails = contactDetails
            
            self.documents = documents
            
            self.franchiseEnabled = franchiseEnabled
            
            self.notificationEmails = notificationEmails
            
            self.businessDetails = businessDetails
            
            self.businessType = businessType
            
        }

        public func duplicate() -> UpdateCompany {
            let dict = self.dictionary!
            let copy = UpdateCompany(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyType = try container.decode(String.self, forKey: .companyType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessInfo = try container.decode(String.self, forKey: .businessInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addresses = try container.decode([CreateUpdateAddressSerializer].self, forKey: .addresses)
                
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
                    contactDetails = try container.decode(ContactDetails.self, forKey: .contactDetails)
                
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
                    franchiseEnabled = try container.decode(Bool.self, forKey: .franchiseEnabled)
                
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
                    businessDetails = try container.decode(BusinessDetails.self, forKey: .businessDetails)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyType, forKey: .companyType)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(businessInfo, forKey: .businessInfo)
            
            
            
            
            try? container.encodeIfPresent(addresses, forKey: .addresses)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(contactDetails, forKey: .contactDetails)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(franchiseEnabled, forKey: .franchiseEnabled)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(businessDetails, forKey: .businessDetails)
            
            
            
            
            try? container.encodeIfPresent(businessType, forKey: .businessType)
            
            
        }
        
    }
    
    /*
        Model: DocumentsObj
        Used By: CompanyProfile
    */

    class DocumentsObj: Codable {
        
        
        public var verified: Int?
        
        public var pending: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case verified = "verified"
            
            case pending = "pending"
            
        }

        public init(pending: Int?, verified: Int?) {
            
            self.verified = verified
            
            self.pending = pending
            
        }

        public func duplicate() -> DocumentsObj {
            let dict = self.dictionary!
            let copy = DocumentsObj(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    verified = try container.decode(Int.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pending = try container.decode(Int.self, forKey: .pending)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(verified, forKey: .verified)
            
            
            
            
            try? container.encodeIfPresent(pending, forKey: .pending)
            
            
        }
        
    }
    
    /*
        Model: MetricsSerializer
        Used By: CompanyProfile
    */

    class MetricsSerializer: Codable {
        
        
        public var brand: DocumentsObj?
        
        public var uid: Int?
        
        public var product: DocumentsObj?
        
        public var companyDocuments: DocumentsObj?
        
        public var storeDocuments: DocumentsObj?
        
        public var store: DocumentsObj?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case uid = "uid"
            
            case product = "product"
            
            case companyDocuments = "company_documents"
            
            case storeDocuments = "store_documents"
            
            case store = "store"
            
            case stage = "stage"
            
        }

        public init(brand: DocumentsObj?, companyDocuments: DocumentsObj?, product: DocumentsObj?, stage: String?, store: DocumentsObj?, storeDocuments: DocumentsObj?, uid: Int?) {
            
            self.brand = brand
            
            self.uid = uid
            
            self.product = product
            
            self.companyDocuments = companyDocuments
            
            self.storeDocuments = storeDocuments
            
            self.store = store
            
            self.stage = stage
            
        }

        public func duplicate() -> MetricsSerializer {
            let dict = self.dictionary!
            let copy = MetricsSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(DocumentsObj.self, forKey: .brand)
                
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
                    product = try container.decode(DocumentsObj.self, forKey: .product)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyDocuments = try container.decode(DocumentsObj.self, forKey: .companyDocuments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeDocuments = try container.decode(DocumentsObj.self, forKey: .storeDocuments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    store = try container.decode(DocumentsObj.self, forKey: .store)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)
            
            
            
            
            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)
            
            
            
            
            try? container.encodeIfPresent(store, forKey: .store)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
    
    /*
        Model: BrandBannerSerializer
        Used By: CompanyProfile
    */

    class BrandBannerSerializer: Codable {
        
        
        public var portrait: String?
        
        public var landscape: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case portrait = "portrait"
            
            case landscape = "landscape"
            
        }

        public init(landscape: String?, portrait: String?) {
            
            self.portrait = portrait
            
            self.landscape = landscape
            
        }

        public func duplicate() -> BrandBannerSerializer {
            let dict = self.dictionary!
            let copy = BrandBannerSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    portrait = try container.decode(String.self, forKey: .portrait)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landscape = try container.decode(String.self, forKey: .landscape)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(portrait, forKey: .portrait)
            
            
            
            
            try? container.encodeIfPresent(landscape, forKey: .landscape)
            
            
        }
        
    }
    
    /*
        Model: CreateUpdateBrandRequestSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateBrandRequestSerializer: Codable {
        
        
        public var synonyms: [String]?
        
        public var companyId: Int?
        
        public var description: String?
        
        public var uid: Int?
        
        public var name: String
        
        public var logo: String
        
        public var banner: BrandBannerSerializer?
        
        public var brandTier: String?
        
        public var localeLanguage: [String: Any]?
        
        public var customJson: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case synonyms = "synonyms"
            
            case companyId = "company_id"
            
            case description = "description"
            
            case uid = "uid"
            
            case name = "name"
            
            case logo = "logo"
            
            case banner = "banner"
            
            case brandTier = "brand_tier"
            
            case localeLanguage = "_locale_language"
            
            case customJson = "_custom_json"
            
        }

        public init(banner: BrandBannerSerializer?, brandTier: String?, companyId: Int?, description: String?, logo: String, name: String, synonyms: [String]?, uid: Int?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.synonyms = synonyms
            
            self.companyId = companyId
            
            self.description = description
            
            self.uid = uid
            
            self.name = name
            
            self.logo = logo
            
            self.banner = banner
            
            self.brandTier = brandTier
            
            self.localeLanguage = localeLanguage
            
            self.customJson = customJson
            
        }

        public func duplicate() -> CreateUpdateBrandRequestSerializer {
            let dict = self.dictionary!
            let copy = CreateUpdateBrandRequestSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                logo = try container.decode(String.self, forKey: .logo)
                
            
            
            
                do {
                    banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandTier = try container.decode(String.self, forKey: .brandTier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            
            try? container.encodeIfPresent(brandTier, forKey: .brandTier)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
        }
        
    }
    
    /*
        Model: GetBrandResponseSerializer
        Used By: CompanyProfile
    */

    class GetBrandResponseSerializer: Codable {
        
        
        public var warnings: [String: Any]?
        
        public var mode: String?
        
        public var modifiedOn: String?
        
        public var customJson: [String: Any]?
        
        public var createdBy: UserSerializer1?
        
        public var rejectReason: String?
        
        public var description: String?
        
        public var uid: Int?
        
        public var localeLanguage: [String: Any]?
        
        public var modifiedBy: UserSerializer1?
        
        public var name: String
        
        public var banner: BrandBannerSerializer?
        
        public var stage: String?
        
        public var verifiedOn: String?
        
        public var synonyms: [String]?
        
        public var createdOn: String?
        
        public var slugKey: String?
        
        public var verifiedBy: UserSerializer1?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case warnings = "warnings"
            
            case mode = "mode"
            
            case modifiedOn = "modified_on"
            
            case customJson = "_custom_json"
            
            case createdBy = "created_by"
            
            case rejectReason = "reject_reason"
            
            case description = "description"
            
            case uid = "uid"
            
            case localeLanguage = "_locale_language"
            
            case modifiedBy = "modified_by"
            
            case name = "name"
            
            case banner = "banner"
            
            case stage = "stage"
            
            case verifiedOn = "verified_on"
            
            case synonyms = "synonyms"
            
            case createdOn = "created_on"
            
            case slugKey = "slug_key"
            
            case verifiedBy = "verified_by"
            
            case logo = "logo"
            
        }

        public init(banner: BrandBannerSerializer?, createdBy: UserSerializer1?, createdOn: String?, description: String?, logo: String?, mode: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, name: String, rejectReason: String?, slugKey: String?, stage: String?, synonyms: [String]?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?, customJson: [String: Any]?, localeLanguage: [String: Any]?) {
            
            self.warnings = warnings
            
            self.mode = mode
            
            self.modifiedOn = modifiedOn
            
            self.customJson = customJson
            
            self.createdBy = createdBy
            
            self.rejectReason = rejectReason
            
            self.description = description
            
            self.uid = uid
            
            self.localeLanguage = localeLanguage
            
            self.modifiedBy = modifiedBy
            
            self.name = name
            
            self.banner = banner
            
            self.stage = stage
            
            self.verifiedOn = verifiedOn
            
            self.synonyms = synonyms
            
            self.createdOn = createdOn
            
            self.slugKey = slugKey
            
            self.verifiedBy = verifiedBy
            
            self.logo = logo
            
        }

        public func duplicate() -> GetBrandResponseSerializer {
            let dict = self.dictionary!
            let copy = GetBrandResponseSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode(String.self, forKey: .mode)
                
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
                    customJson = try container.decode([String: Any].self, forKey: .customJson)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
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
                    localeLanguage = try container.decode([String: Any].self, forKey: .localeLanguage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    banner = try container.decode(BrandBannerSerializer.self, forKey: .banner)
                
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
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
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
                    slugKey = try container.decode(String.self, forKey: .slugKey)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(banner, forKey: .banner)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandSerializer: Codable {
        
        
        public var verifiedOn: String?
        
        public var createdOn: String?
        
        public var createdBy: UserSerializer1?
        
        public var brand: GetBrandResponseSerializer?
        
        public var rejectReason: String?
        
        public var warnings: [String: Any]?
        
        public var uid: Int?
        
        public var modifiedBy: UserSerializer1?
        
        public var verifiedBy: UserSerializer1?
        
        public var modifiedOn: String?
        
        public var company: GetCompanySerializer?
        
        public var stage: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifiedOn = "verified_on"
            
            case createdOn = "created_on"
            
            case createdBy = "created_by"
            
            case brand = "brand"
            
            case rejectReason = "reject_reason"
            
            case warnings = "warnings"
            
            case uid = "uid"
            
            case modifiedBy = "modified_by"
            
            case verifiedBy = "verified_by"
            
            case modifiedOn = "modified_on"
            
            case company = "company"
            
            case stage = "stage"
            
        }

        public init(brand: GetBrandResponseSerializer?, company: GetCompanySerializer?, createdBy: UserSerializer1?, createdOn: String?, modifiedBy: UserSerializer1?, modifiedOn: String?, rejectReason: String?, stage: String?, uid: Int?, verifiedBy: UserSerializer1?, verifiedOn: String?, warnings: [String: Any]?) {
            
            self.verifiedOn = verifiedOn
            
            self.createdOn = createdOn
            
            self.createdBy = createdBy
            
            self.brand = brand
            
            self.rejectReason = rejectReason
            
            self.warnings = warnings
            
            self.uid = uid
            
            self.modifiedBy = modifiedBy
            
            self.verifiedBy = verifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.company = company
            
            self.stage = stage
            
        }

        public func duplicate() -> CompanyBrandSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    verifiedOn = try container.decode(String.self, forKey: .verifiedOn)
                
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
                    createdBy = try container.decode(UserSerializer1.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brand = try container.decode(GetBrandResponseSerializer.self, forKey: .brand)
                
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
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
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
                    modifiedBy = try container.decode(UserSerializer1.self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    verifiedBy = try container.decode(UserSerializer1.self, forKey: .verifiedBy)
                
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
                    company = try container.decode(GetCompanySerializer.self, forKey: .company)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(verifiedOn, forKey: .verifiedOn)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(rejectReason, forKey: .rejectReason)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(verifiedBy, forKey: .verifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandListSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandListSerializer: Codable {
        
        
        public var items: [CompanyBrandSerializer]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [CompanyBrandSerializer]?, page: Page?) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CompanyBrandListSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandListSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([CompanyBrandSerializer].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: CompanyBrandPostRequestSerializer
        Used By: CompanyProfile
    */

    class CompanyBrandPostRequestSerializer: Codable {
        
        
        public var brands: [Int]
        
        public var uid: Int?
        
        public var company: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case brands = "brands"
            
            case uid = "uid"
            
            case company = "company"
            
        }

        public init(brands: [Int], company: Int, uid: Int?) {
            
            self.brands = brands
            
            self.uid = uid
            
            self.company = company
            
        }

        public func duplicate() -> CompanyBrandPostRequestSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandPostRequestSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                brands = try container.decode([Int].self, forKey: .brands)
                
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brands, forKey: .brands)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
        }
        
    }
    
    /*
        Model: GetAddressSerializer1
        Used By: CompanyProfile
    */

    class GetAddressSerializer1: Codable {
        
        
        public var city: String?
        
        public var latitude: Double?
        
        public var country: String?
        
        public var address2: String?
        
        public var longitude: Double?
        
        public var landmark: String?
        
        public var address1: String?
        
        public var countryCode: String?
        
        public var state: String?
        
        public var addressType: String?
        
        public var pincode: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case city = "city"
            
            case latitude = "latitude"
            
            case country = "country"
            
            case address2 = "address2"
            
            case longitude = "longitude"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case countryCode = "country_code"
            
            case state = "state"
            
            case addressType = "address_type"
            
            case pincode = "pincode"
            
        }

        public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, countryCode: String?, landmark: String?, latitude: Double?, longitude: Double?, pincode: Int?, state: String?) {
            
            self.city = city
            
            self.latitude = latitude
            
            self.country = country
            
            self.address2 = address2
            
            self.longitude = longitude
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.countryCode = countryCode
            
            self.state = state
            
            self.addressType = addressType
            
            self.pincode = pincode
            
        }

        public func duplicate() -> GetAddressSerializer1 {
            let dict = self.dictionary!
            let copy = GetAddressSerializer1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    longitude = try container.decode(Double.self, forKey: .longitude)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
    
    /*
        Model: LocationSerializer
        Used By: CompanyProfile
    */

    class LocationSerializer: Codable {
        
        
        public var manager: LocationManagerSerializer?
        
        public var warnings: [String: Any]?
        
        public var gstCredentials: InvoiceDetailsSerializer?
        
        public var contactNumbers: [SellerPhoneNumber]?
        
        public var customJson: [String: Any]?
        
        public var uid: Int?
        
        public var address: GetAddressSerializer1
        
        public var name: String
        
        public var documents: [Document]?
        
        public var productReturnConfig: ProductReturnConfigSerializer?
        
        public var company: Int
        
        public var code: String
        
        public var displayName: String
        
        public var notificationEmails: [String]?
        
        public var stage: String?
        
        public var storeType: String?
        
        public var timing: [LocationDayWiseSerializer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case manager = "manager"
            
            case warnings = "warnings"
            
            case gstCredentials = "gst_credentials"
            
            case contactNumbers = "contact_numbers"
            
            case customJson = "_custom_json"
            
            case uid = "uid"
            
            case address = "address"
            
            case name = "name"
            
            case documents = "documents"
            
            case productReturnConfig = "product_return_config"
            
            case company = "company"
            
            case code = "code"
            
            case displayName = "display_name"
            
            case notificationEmails = "notification_emails"
            
            case stage = "stage"
            
            case storeType = "store_type"
            
            case timing = "timing"
            
        }

        public init(address: GetAddressSerializer1, code: String, company: Int, contactNumbers: [SellerPhoneNumber]?, displayName: String, documents: [Document]?, gstCredentials: InvoiceDetailsSerializer?, manager: LocationManagerSerializer?, name: String, notificationEmails: [String]?, productReturnConfig: ProductReturnConfigSerializer?, stage: String?, storeType: String?, timing: [LocationDayWiseSerializer]?, uid: Int?, warnings: [String: Any]?, customJson: [String: Any]?) {
            
            self.manager = manager
            
            self.warnings = warnings
            
            self.gstCredentials = gstCredentials
            
            self.contactNumbers = contactNumbers
            
            self.customJson = customJson
            
            self.uid = uid
            
            self.address = address
            
            self.name = name
            
            self.documents = documents
            
            self.productReturnConfig = productReturnConfig
            
            self.company = company
            
            self.code = code
            
            self.displayName = displayName
            
            self.notificationEmails = notificationEmails
            
            self.stage = stage
            
            self.storeType = storeType
            
            self.timing = timing
            
        }

        public func duplicate() -> LocationSerializer {
            let dict = self.dictionary!
            let copy = LocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    manager = try container.decode(LocationManagerSerializer.self, forKey: .manager)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    warnings = try container.decode([String: Any].self, forKey: .warnings)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(GetAddressSerializer1.self, forKey: .address)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    documents = try container.decode([Document].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productReturnConfig = try container.decode(ProductReturnConfigSerializer.self, forKey: .productReturnConfig)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                company = try container.decode(Int.self, forKey: .company)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
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
                    storeType = try container.decode(String.self, forKey: .storeType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(manager, forKey: .manager)
            
            
            
            
            try? container.encodeIfPresent(warnings, forKey: .warnings)
            
            
            
            
            try? container.encodeIfPresent(gstCredentials, forKey: .gstCredentials)
            
            
            
            
            try? container.encodeIfPresent(contactNumbers, forKey: .contactNumbers)
            
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(productReturnConfig, forKey: .productReturnConfig)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
            
            
            
            
            try? container.encodeIfPresent(stage, forKey: .stage)
            
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            
            try? container.encodeIfPresent(timing, forKey: .timing)
            
            
        }
        
    }
    
    /*
        Model: BulkLocationSerializer
        Used By: CompanyProfile
    */

    class BulkLocationSerializer: Codable {
        
        
        public var data: [LocationSerializer]?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: [LocationSerializer]?) {
            
            self.data = data
            
        }

        public func duplicate() -> BulkLocationSerializer {
            let dict = self.dictionary!
            let copy = BulkLocationSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([LocationSerializer].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
}
