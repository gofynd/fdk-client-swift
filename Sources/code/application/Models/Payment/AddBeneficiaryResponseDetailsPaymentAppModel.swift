

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryResponseDetails
        Used By: Payment
    */
    class AddBeneficiaryResponseDetails: Codable {
        
        public var message: String?
        
        public var isVerified: Bool?
        
        public var id: String?
        
        public var accountNo: String?
        
        public var accountHolder: String?
        
        public var bankName: String?
        
        public var upi: String?
        
        public var logo: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case isVerified = "is_verified"
            
            case id = "id"
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
            case bankName = "bank_name"
            
            case upi = "upi"
            
            case logo = "logo"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, bankName: String? = nil, id: String? = nil, isVerified: Bool? = nil, logo: String? = nil, message: String? = nil, upi: String? = nil) {
            
            self.message = message
            
            self.isVerified = isVerified
            
            self.id = id
            
            self.accountNo = accountNo
            
            self.accountHolder = accountHolder
            
            self.bankName = bankName
            
            self.upi = upi
            
            self.logo = logo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isVerified = try container.decode(Bool.self, forKey: .isVerified)
            
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
                accountNo = try container.decode(String.self, forKey: .accountNo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bankName = try container.decode(String.self, forKey: .bankName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                upi = try container.decode(String.self, forKey: .upi)
            
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
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(isVerified, forKey: .isVerified)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
        }
        
    }
}
