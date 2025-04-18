

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: UpiBeneficiaryDetails
        Used By: Payment
    */

    class UpiBeneficiaryDetails: Codable {
        
        
        public var beneficiaryId: String
        
        public var modifiedOn: String
        
        public var displayName: String
        
        public var id: Int
        
        public var subtitle: String
        
        public var transferMode: String
        
        public var vpa: String?
        
        public var mobile: String?
        
        public var vpaAddress: String
        
        public var createdOn: String
        
        public var address: String
        
        public var title: String
        
        public var comment: String?
        
        public var isActive: Bool
        
        public var email: String
        
        public var delightsUserName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaryId = "beneficiary_id"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
            case id = "id"
            
            case subtitle = "subtitle"
            
            case transferMode = "transfer_mode"
            
            case vpa = "vpa"
            
            case mobile = "mobile"
            
            case vpaAddress = "vpa_address"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case title = "title"
            
            case comment = "comment"
            
            case isActive = "is_active"
            
            case email = "email"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(address: String, beneficiaryId: String, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String, vpa: String? = nil, vpaAddress: String) {
            
            self.beneficiaryId = beneficiaryId
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
            self.id = id
            
            self.subtitle = subtitle
            
            self.transferMode = transferMode
            
            self.vpa = vpa
            
            self.mobile = mobile
            
            self.vpaAddress = vpaAddress
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.title = title
            
            self.comment = comment
            
            self.isActive = isActive
            
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
                    vpa = try container.decode(String.self, forKey: .vpa)
                
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
                
            
            
                vpaAddress = try container.decode(String.self, forKey: .vpaAddress)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(vpaAddress, forKey: .vpaAddress)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: UpiBeneficiaryDetails
        Used By: Payment
    */

    class UpiBeneficiaryDetails: Codable {
        
        
        public var beneficiaryId: String
        
        public var modifiedOn: String
        
        public var displayName: String
        
        public var id: Int
        
        public var subtitle: String
        
        public var transferMode: String
        
        public var vpa: String?
        
        public var mobile: String?
        
        public var vpaAddress: String
        
        public var createdOn: String
        
        public var address: String
        
        public var title: String
        
        public var comment: String?
        
        public var isActive: Bool
        
        public var email: String
        
        public var delightsUserName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaryId = "beneficiary_id"
            
            case modifiedOn = "modified_on"
            
            case displayName = "display_name"
            
            case id = "id"
            
            case subtitle = "subtitle"
            
            case transferMode = "transfer_mode"
            
            case vpa = "vpa"
            
            case mobile = "mobile"
            
            case vpaAddress = "vpa_address"
            
            case createdOn = "created_on"
            
            case address = "address"
            
            case title = "title"
            
            case comment = "comment"
            
            case isActive = "is_active"
            
            case email = "email"
            
            case delightsUserName = "delights_user_name"
            
        }

        public init(address: String, beneficiaryId: String, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String, vpa: String? = nil, vpaAddress: String) {
            
            self.beneficiaryId = beneficiaryId
            
            self.modifiedOn = modifiedOn
            
            self.displayName = displayName
            
            self.id = id
            
            self.subtitle = subtitle
            
            self.transferMode = transferMode
            
            self.vpa = vpa
            
            self.mobile = mobile
            
            self.vpaAddress = vpaAddress
            
            self.createdOn = createdOn
            
            self.address = address
            
            self.title = title
            
            self.comment = comment
            
            self.isActive = isActive
            
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
                    vpa = try container.decode(String.self, forKey: .vpa)
                
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
                
            
            
                vpaAddress = try container.decode(String.self, forKey: .vpaAddress)
                
            
            
            
                createdOn = try container.decode(String.self, forKey: .createdOn)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
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
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(vpaAddress, forKey: .vpaAddress)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(delightsUserName, forKey: .delightsUserName)
            
            
        }
        
    }
}


