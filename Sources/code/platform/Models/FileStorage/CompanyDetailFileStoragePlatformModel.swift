

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: CompanyDetail
        Used By: FileStorage
    */

    class CompanyDetail: Codable {
        
        
        public var name: String?
        
        public var address: String?
        
        public var city: String?
        
        public var state: String?
        
        public var country: String?
        
        public var zipCode: Double?
        
        public var stateCode: String?
        
        public var countryCode: String?
        
        public var gstin: String?
        
        public var pan: String?
        
        public var phoneNo: String?
        
        public var cin: String?
        
        public var websiteUrl: String?
        
        public var email: String?
        
        public var displayAddress: String?
        
        public var sector: String?
        
        public var phone: [String: Any]?
        
        public var trn: String?
        
        public var vat: String?
        
        public var businessCountryTimezone: String?
        
        public var businessCountryCurrency: [String: Any]?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case address = "address"
            
            case city = "city"
            
            case state = "state"
            
            case country = "country"
            
            case zipCode = "zip_code"
            
            case stateCode = "state_code"
            
            case countryCode = "country_code"
            
            case gstin = "gstin"
            
            case pan = "pan"
            
            case phoneNo = "phone_no"
            
            case cin = "cin"
            
            case websiteUrl = "website_url"
            
            case email = "email"
            
            case displayAddress = "display_address"
            
            case sector = "sector"
            
            case phone = "phone"
            
            case trn = "trn"
            
            case vat = "vat"
            
            case businessCountryTimezone = "business_country_timezone"
            
            case businessCountryCurrency = "business_country_currency"
            
            case meta = "meta"
            
        }

        public init(address: String? = nil, businessCountryCurrency: [String: Any]? = nil, businessCountryTimezone: String? = nil, cin: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, displayAddress: String? = nil, email: String? = nil, gstin: String? = nil, meta: [String: Any]? = nil, name: String? = nil, pan: String? = nil, phone: [String: Any]? = nil, phoneNo: String? = nil, sector: String? = nil, state: String? = nil, stateCode: String? = nil, trn: String? = nil, vat: String? = nil, websiteUrl: String? = nil, zipCode: Double? = nil) {
            
            self.name = name
            
            self.address = address
            
            self.city = city
            
            self.state = state
            
            self.country = country
            
            self.zipCode = zipCode
            
            self.stateCode = stateCode
            
            self.countryCode = countryCode
            
            self.gstin = gstin
            
            self.pan = pan
            
            self.phoneNo = phoneNo
            
            self.cin = cin
            
            self.websiteUrl = websiteUrl
            
            self.email = email
            
            self.displayAddress = displayAddress
            
            self.sector = sector
            
            self.phone = phone
            
            self.trn = trn
            
            self.vat = vat
            
            self.businessCountryTimezone = businessCountryTimezone
            
            self.businessCountryCurrency = businessCountryCurrency
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zipCode = try container.decode(Double.self, forKey: .zipCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
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
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNo = try container.decode(String.self, forKey: .phoneNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cin = try container.decode(String.self, forKey: .cin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    websiteUrl = try container.decode(String.self, forKey: .websiteUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayAddress = try container.decode(String.self, forKey: .displayAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sector = try container.decode(String.self, forKey: .sector)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode([String: Any].self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trn = try container.decode(String.self, forKey: .trn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vat = try container.decode(String.self, forKey: .vat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryTimezone = try container.decode(String.self, forKey: .businessCountryTimezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryCurrency = try container.decode([String: Any].self, forKey: .businessCountryCurrency)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(zipCode, forKey: .zipCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(pan, forKey: .pan)
            
            
            
            
            try? container.encodeIfPresent(phoneNo, forKey: .phoneNo)
            
            
            
            
            try? container.encodeIfPresent(cin, forKey: .cin)
            
            
            
            
            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(trn, forKey: .trn)
            
            
            
            
            try? container.encodeIfPresent(vat, forKey: .vat)
            
            
            
            
            try? container.encodeIfPresent(businessCountryTimezone, forKey: .businessCountryTimezone)
            
            
            
            
            try? container.encodeIfPresent(businessCountryCurrency, forKey: .businessCountryCurrency)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: CompanyDetail
        Used By: FileStorage
    */

    class CompanyDetail: Codable {
        
        
        public var name: String?
        
        public var address: String?
        
        public var city: String?
        
        public var state: String?
        
        public var country: String?
        
        public var zipCode: Double?
        
        public var stateCode: String?
        
        public var countryCode: String?
        
        public var gstin: String?
        
        public var pan: String?
        
        public var phoneNo: String?
        
        public var cin: String?
        
        public var websiteUrl: String?
        
        public var email: String?
        
        public var displayAddress: String?
        
        public var sector: String?
        
        public var phone: [String: Any]?
        
        public var trn: String?
        
        public var vat: String?
        
        public var businessCountryTimezone: String?
        
        public var businessCountryCurrency: [String: Any]?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case address = "address"
            
            case city = "city"
            
            case state = "state"
            
            case country = "country"
            
            case zipCode = "zip_code"
            
            case stateCode = "state_code"
            
            case countryCode = "country_code"
            
            case gstin = "gstin"
            
            case pan = "pan"
            
            case phoneNo = "phone_no"
            
            case cin = "cin"
            
            case websiteUrl = "website_url"
            
            case email = "email"
            
            case displayAddress = "display_address"
            
            case sector = "sector"
            
            case phone = "phone"
            
            case trn = "trn"
            
            case vat = "vat"
            
            case businessCountryTimezone = "business_country_timezone"
            
            case businessCountryCurrency = "business_country_currency"
            
            case meta = "meta"
            
        }

        public init(address: String? = nil, businessCountryCurrency: [String: Any]? = nil, businessCountryTimezone: String? = nil, cin: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, displayAddress: String? = nil, email: String? = nil, gstin: String? = nil, meta: [String: Any]? = nil, name: String? = nil, pan: String? = nil, phone: [String: Any]? = nil, phoneNo: String? = nil, sector: String? = nil, state: String? = nil, stateCode: String? = nil, trn: String? = nil, vat: String? = nil, websiteUrl: String? = nil, zipCode: Double? = nil) {
            
            self.name = name
            
            self.address = address
            
            self.city = city
            
            self.state = state
            
            self.country = country
            
            self.zipCode = zipCode
            
            self.stateCode = stateCode
            
            self.countryCode = countryCode
            
            self.gstin = gstin
            
            self.pan = pan
            
            self.phoneNo = phoneNo
            
            self.cin = cin
            
            self.websiteUrl = websiteUrl
            
            self.email = email
            
            self.displayAddress = displayAddress
            
            self.sector = sector
            
            self.phone = phone
            
            self.trn = trn
            
            self.vat = vat
            
            self.businessCountryTimezone = businessCountryTimezone
            
            self.businessCountryCurrency = businessCountryCurrency
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zipCode = try container.decode(Double.self, forKey: .zipCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
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
                    gstin = try container.decode(String.self, forKey: .gstin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pan = try container.decode(String.self, forKey: .pan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNo = try container.decode(String.self, forKey: .phoneNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cin = try container.decode(String.self, forKey: .cin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    websiteUrl = try container.decode(String.self, forKey: .websiteUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    displayAddress = try container.decode(String.self, forKey: .displayAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sector = try container.decode(String.self, forKey: .sector)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phone = try container.decode([String: Any].self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    trn = try container.decode(String.self, forKey: .trn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vat = try container.decode(String.self, forKey: .vat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryTimezone = try container.decode(String.self, forKey: .businessCountryTimezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    businessCountryCurrency = try container.decode([String: Any].self, forKey: .businessCountryCurrency)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(zipCode, forKey: .zipCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(gstin, forKey: .gstin)
            
            
            
            
            try? container.encodeIfPresent(pan, forKey: .pan)
            
            
            
            
            try? container.encodeIfPresent(phoneNo, forKey: .phoneNo)
            
            
            
            
            try? container.encodeIfPresent(cin, forKey: .cin)
            
            
            
            
            try? container.encodeIfPresent(websiteUrl, forKey: .websiteUrl)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(trn, forKey: .trn)
            
            
            
            
            try? container.encodeIfPresent(vat, forKey: .vat)
            
            
            
            
            try? container.encodeIfPresent(businessCountryTimezone, forKey: .businessCountryTimezone)
            
            
            
            
            try? container.encodeIfPresent(businessCountryCurrency, forKey: .businessCountryCurrency)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


