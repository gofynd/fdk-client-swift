

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Subscriber
        Used By: Billing
    */

    class Subscriber: Codable {
        
        
        public var documents: Documents?
        
        public var phone: [String: Any]?
        
        public var billingAddress: BillingAddress?
        
        public var consent: Bool?
        
        public var comms: Bool?
        
        public var id: String?
        
        public var type: String?
        
        public var uniqueId: String?
        
        public var name: String?
        
        public var email: String?
        
        public var businessCountryInfo: BusinessCountryInfo?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var creditBalance: Int?
        
        public var data: SubscriberData?
        

        public enum CodingKeys: String, CodingKey {
            
            case documents = "documents"
            
            case phone = "phone"
            
            case billingAddress = "billing_address"
            
            case consent = "consent"
            
            case comms = "comms"
            
            case id = "_id"
            
            case type = "type"
            
            case uniqueId = "unique_id"
            
            case name = "name"
            
            case email = "email"
            
            case businessCountryInfo = "business_country_info"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case creditBalance = "credit_balance"
            
            case data = "data"
            
        }

        public init(billingAddress: BillingAddress? = nil, businessCountryInfo: BusinessCountryInfo? = nil, comms: Bool? = nil, consent: Bool? = nil, createdAt: String? = nil, creditBalance: Int? = nil, data: SubscriberData? = nil, documents: Documents? = nil, email: String? = nil, modifiedAt: String? = nil, name: String? = nil, phone: [String: Any]? = nil, type: String? = nil, uniqueId: String? = nil, id: String? = nil) {
            
            self.documents = documents
            
            self.phone = phone
            
            self.billingAddress = billingAddress
            
            self.consent = consent
            
            self.comms = comms
            
            self.id = id
            
            self.type = type
            
            self.uniqueId = uniqueId
            
            self.name = name
            
            self.email = email
            
            self.businessCountryInfo = businessCountryInfo
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.creditBalance = creditBalance
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    documents = try container.decode(Documents.self, forKey: .documents)
                
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
                    billingAddress = try container.decode(BillingAddress.self, forKey: .billingAddress)
                
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
                    id = try container.decode(String.self, forKey: .id)
                
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
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
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
                    businessCountryInfo = try container.decode(BusinessCountryInfo.self, forKey: .businessCountryInfo)
                
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
                    creditBalance = try container.decode(Int.self, forKey: .creditBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(SubscriberData.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(documents, forKey: .documents)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)
            
            
            
            
            try? container.encodeIfPresent(consent, forKey: .consent)
            
            
            
            
            try? container.encodeIfPresent(comms, forKey: .comms)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(businessCountryInfo, forKey: .businessCountryInfo)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(creditBalance, forKey: .creditBalance)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}




