

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundData
        Used By: Payment
    */
    class RefundData: Codable {
        
        public var beneNameMismatch: Bool?
        
        public var status: String?
        
        public var subcode: String?
        
        public var hashKey: String?
        
        public var message: String?
        
        public var mobile: String?
        
        public var requestId: Int?
        
        public var beneficiaryId: String?
        
        public var accountNo: String?
        
        public var accountHolder: String?
        
        public var bankName: String?
        
        public var branchName: String?
        
        public var ifscCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneNameMismatch = "bene_name_mismatch"
            
            case status = "status"
            
            case subcode = "subcode"
            
            case hashKey = "hash_key"
            
            case message = "message"
            
            case mobile = "mobile"
            
            case requestId = "request_id"
            
            case beneficiaryId = "beneficiary_id"
            
            case accountNo = "account_no"
            
            case accountHolder = "account_holder"
            
            case bankName = "bank_name"
            
            case branchName = "branch_name"
            
            case ifscCode = "ifsc_code"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, bankName: String? = nil, beneficiaryId: String? = nil, beneNameMismatch: Bool? = nil, branchName: String? = nil, hashKey: String? = nil, ifscCode: String? = nil, message: String? = nil, mobile: String? = nil, requestId: Int? = nil, status: String? = nil, subcode: String? = nil) {
            
            self.beneNameMismatch = beneNameMismatch
            
            self.status = status
            
            self.subcode = subcode
            
            self.hashKey = hashKey
            
            self.message = message
            
            self.mobile = mobile
            
            self.requestId = requestId
            
            self.beneficiaryId = beneficiaryId
            
            self.accountNo = accountNo
            
            self.accountHolder = accountHolder
            
            self.bankName = bankName
            
            self.branchName = branchName
            
            self.ifscCode = ifscCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                beneNameMismatch = try container.decode(Bool.self, forKey: .beneNameMismatch)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                subcode = try container.decode(String.self, forKey: .subcode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hashKey = try container.decode(String.self, forKey: .hashKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mobile = try container.decode(String.self, forKey: .mobile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                requestId = try container.decode(Int.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
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
                branchName = try container.decode(String.self, forKey: .branchName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(beneNameMismatch, forKey: .beneNameMismatch)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(subcode, forKey: .subcode)
            
            
            
            try? container.encodeIfPresent(hashKey, forKey: .hashKey)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
        }
        
    }
}
