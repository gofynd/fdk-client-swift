

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: WalletBeneficiaryDetails
        Used By: Payment
    */

    class WalletBeneficiaryDetails: Codable {
        
        
        public var beneficiaryId: String
        
        public var modifiedOn: String
        
        public var displayName: String
        
        public var id: Int
        
        public var subtitle: String
        
        public var transferMode: String
        
        public var mobile: String?
        
        public var isActive: Bool
        
        public var createdOn: String
        
        public var address: String
        
        public var title: String
        
        public var walletAddress: String
        
        public var comment: String?
        
        public var wallet: String?
        
        public var email: String
        
        public var delightsUserName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaryId = "beneficiary_id"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
            case id = "id"
            
            case subtitle = "subtitle"
            
            case transferMode = "transfer_mode"
            
            case mobile = "mobile"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case title = "title"
            
            case walletAddress = "wallet_address"
            
            case comment = "comment"
            
            case wallet = "wallet"
            
            case email = "email"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(address: String, beneficiaryId: String, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String, wallet: String? = nil, walletAddress: String) {
            
            self.beneficiaryId = beneficiaryId
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
            self.id = id
            
            self.subtitle = subtitle
            
            self.transferMode = transferMode
            
            self.mobile = mobile
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.title = title
            
            self.walletAddress = walletAddress
            
            self.comment = comment
            
            self.wallet = wallet
            
            self.email = email
            
            self.delightsUserName = delightsUserName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                walletAddress = try container.decode(String.self, forKey: .walletAddress)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(walletAddress, forKey: .walletAddress)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: WalletBeneficiaryDetails
        Used By: Payment
    */

    class WalletBeneficiaryDetails: Codable {
        
        
        public var beneficiaryId: String
        
        public var modifiedOn: String
        
        public var displayName: String
        
        public var id: Int
        
        public var subtitle: String
        
        public var transferMode: String
        
        public var mobile: String?
        
        public var isActive: Bool
        
        public var createdOn: String
        
        public var address: String
        
        public var title: String
        
        public var walletAddress: String
        
        public var comment: String?
        
        public var wallet: String?
        
        public var email: String
        
        public var delightsUserName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaryId = "beneficiary_id"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
            case id = "id"
            
            case subtitle = "subtitle"
            
            case transferMode = "transfer_mode"
            
            case mobile = "mobile"
            
            case isActive = "is_active"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case title = "title"
            
            case walletAddress = "wallet_address"
            
            case comment = "comment"
            
            case wallet = "wallet"
            
            case email = "email"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(address: String, beneficiaryId: String, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String, wallet: String? = nil, walletAddress: String) {
            
            self.beneficiaryId = beneficiaryId
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
            self.id = id
            
            self.subtitle = subtitle
            
            self.transferMode = transferMode
            
            self.mobile = mobile
            
            self.isActive = isActive
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.title = title
            
            self.walletAddress = walletAddress
            
            self.comment = comment
            
            self.wallet = wallet
            
            self.email = email
            
            self.delightsUserName = delightsUserName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
            
            
            
                displayName = try container.decode(String.self, forKey: .displayName)
                
            
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                subtitle = try container.decode(String.self, forKey: .subtitle)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                walletAddress = try container.decode(String.self, forKey: .walletAddress)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    wallet = try container.decode(String.self, forKey: .wallet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                do {
                    delightsUserName = try container.decode(String.self, forKey: .delightsUserName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(walletAddress, forKey: .walletAddress)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
        }
        
    }
}


