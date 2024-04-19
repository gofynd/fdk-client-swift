

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: AppStore
        Used By: Catalog
    */
    class AppStore: Codable {
        
        public var uid: Int?
        
        public var departments: [StoreDepartments]?
        
        public var company: CompanyStore?
        
        public var manager: StoreManagerSerializer?
        
        public var storeCode: String?
        
        public var address: StoreAddressSerializer?
        
        public var name: String?
        
        public var contactNumbers: [SellerPhoneNumber]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case departments = "departments"
            
            case company = "company"
            
            case manager = "manager"
            
            case storeCode = "store_code"
            
            case address = "address"
            
            case name = "name"
            
            case contactNumbers = "contact_numbers"
            
        }

        public init(address: StoreAddressSerializer? = nil, company: CompanyStore? = nil, contactNumbers: [SellerPhoneNumber]? = nil, departments: [StoreDepartments]? = nil, manager: StoreManagerSerializer? = nil, name: String? = nil, storeCode: String? = nil, uid: Int? = nil) {
            
            self.uid = uid
            
            self.departments = departments
            
            self.company = company
            
            self.manager = manager
            
            self.storeCode = storeCode
            
            self.address = address
            
            self.name = name
            
            self.contactNumbers = contactNumbers
            
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
                departments = try container.decode([StoreDepartments].self, forKey: .departments)
            
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
                manager = try container.decode(StoreManagerSerializer.self, forKey: .manager)
            
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
                address = try container.decode(StoreAddressSerializer.self, forKey: .address)
            
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
            
            
        }
        
    }
}
