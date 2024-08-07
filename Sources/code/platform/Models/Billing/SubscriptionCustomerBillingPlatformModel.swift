

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionCustomer
        Used By: Billing
    */

    class SubscriptionCustomer: Codable {
        
        
        public var phone: Phone?
        
        public var billingAddress: SubscriptionBillingAddress?
        
        public var id: String?
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var name: String?
        
        public var email: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var data: [String: Any]?
        
        public var documents: [String: Any]?
        
        public var consent: Bool?
        
        public var comms: Bool?
        
        public var creditBalance: Int?
        
        public var businessCountryInfo: BusinessCountryInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case billingAddress = "billing_address"
            
            case id = "_id"
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case name = "name"
            
            case email = "email"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case data = "data"
            
            case documents = "documents"
            
            case consent = "consent"
            
            case comms = "comms"
            
            case creditBalance = "credit_balance"
            
            case businessCountryInfo = "business_country_info"
            
        }

        public init(billingAddress: SubscriptionBillingAddress? = nil, businessCountryInfo: BusinessCountryInfo? = nil, comms: Bool? = nil, consent: Bool? = nil, createdAt: String? = nil, creditBalance: Int? = nil, data: [String: Any]? = nil, documents: [String: Any]? = nil, email: String? = nil, modifiedAt: String? = nil, name: String? = nil, phone: Phone? = nil, type: String? = nil, uniqueId: String? = nil, id: String? = nil) {
            
            self.phone = phone
            
            self.billingAddress = billingAddress
            
            self.id = id
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.name = name
            
            self.email = email
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.data = data
            
            self.documents = documents
            
            self.consent = consent
            
            self.comms = comms
            
            self.creditBalance = creditBalance
            
            self.businessCountryInfo = businessCountryInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(Phone.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    billingAddress = try container.decode(SubscriptionBillingAddress.self, forKey: .billingAddress)
                
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
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedAt = try container.decode(String.self, forKey: .modifiedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    documents = try container.decode([String: Any].self, forKey: .documents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    consent = try container.decode(Bool.self, forKey: .consent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comms = try container.decode(Bool.self, forKey: .comms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditBalance = try container.decode(Int.self, forKey: .creditBalance)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(consent, forKey: .consent)
            
            
            
            
            try? container.encodeIfPresent(comms, forKey: .comms)
            
            
            
            
            try? container.encodeIfPresent(creditBalance, forKey: .creditBalance)
            
            
            
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            
        }
        
    }
}




