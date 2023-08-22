

import Foundation


public extension PlatformClient.Partner {
    /*
        Model: PartnerInviteDetails
        Used By: Partner
    */

    class PartnerInviteDetails: Codable {
        
        
        public var accountType: String?
        
        public var approvedPermissions: ApprovedPermissions?
        
        public var comment: String?
        
        public var companyId: Double?
        
        public var companyName: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var organizationId: String?
        
        public var organizationName: String?
        
        public var requestStatus: String?
        
        public var requestedPermissions: RequestedPermissions?
        
        public var userId: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountType = "account_type"
            
            case approvedPermissions = "approved_permissions"
            
            case comment = "comment"
            
            case companyId = "company_id"
            
            case companyName = "company_name"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case organizationId = "organization_id"
            
            case organizationName = "organization_name"
            
            case requestStatus = "request_status"
            
            case requestedPermissions = "requested_permissions"
            
            case userId = "user_id"
            
            case id = "_id"
            
        }

        public init(accountType: String? = nil, approvedPermissions: ApprovedPermissions? = nil, comment: String? = nil, companyId: Double? = nil, companyName: String? = nil, createdAt: String? = nil, modifiedAt: String? = nil, organizationId: String? = nil, organizationName: String? = nil, requestedPermissions: RequestedPermissions? = nil, requestStatus: String? = nil, userId: String? = nil, id: String? = nil) {
            
            self.accountType = accountType
            
            self.approvedPermissions = approvedPermissions
            
            self.comment = comment
            
            self.companyId = companyId
            
            self.companyName = companyName
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.organizationId = organizationId
            
            self.organizationName = organizationName
            
            self.requestStatus = requestStatus
            
            self.requestedPermissions = requestedPermissions
            
            self.userId = userId
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approvedPermissions = try container.decode(ApprovedPermissions.self, forKey: .approvedPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
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
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizationName = try container.decode(String.self, forKey: .organizationName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestStatus = try container.decode(String.self, forKey: .requestStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestedPermissions = try container.decode(RequestedPermissions.self, forKey: .requestedPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(approvedPermissions, forKey: .approvedPermissions)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(organizationName, forKey: .organizationName)
            
            
            
            
            try? container.encodeIfPresent(requestStatus, forKey: .requestStatus)
            
            
            
            
            try? container.encodeIfPresent(requestedPermissions, forKey: .requestedPermissions)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Partner {
    /*
        Model: PartnerInviteDetails
        Used By: Partner
    */

    class PartnerInviteDetails: Codable {
        
        
        public var accountType: String?
        
        public var approvedPermissions: ApprovedPermissions?
        
        public var comment: String?
        
        public var companyId: Double?
        
        public var companyName: String?
        
        public var createdAt: String?
        
        public var modifiedAt: String?
        
        public var organizationId: String?
        
        public var organizationName: String?
        
        public var requestStatus: String?
        
        public var requestedPermissions: RequestedPermissions?
        
        public var userId: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountType = "account_type"
            
            case approvedPermissions = "approved_permissions"
            
            case comment = "comment"
            
            case companyId = "company_id"
            
            case companyName = "company_name"
            
            case createdAt = "created_at"
            
            case modifiedAt = "modified_at"
            
            case organizationId = "organization_id"
            
            case organizationName = "organization_name"
            
            case requestStatus = "request_status"
            
            case requestedPermissions = "requested_permissions"
            
            case userId = "user_id"
            
            case id = "_id"
            
        }

        public init(accountType: String? = nil, approvedPermissions: ApprovedPermissions? = nil, comment: String? = nil, companyId: Double? = nil, companyName: String? = nil, createdAt: String? = nil, modifiedAt: String? = nil, organizationId: String? = nil, organizationName: String? = nil, requestedPermissions: RequestedPermissions? = nil, requestStatus: String? = nil, userId: String? = nil, id: String? = nil) {
            
            self.accountType = accountType
            
            self.approvedPermissions = approvedPermissions
            
            self.comment = comment
            
            self.companyId = companyId
            
            self.companyName = companyName
            
            self.createdAt = createdAt
            
            self.modifiedAt = modifiedAt
            
            self.organizationId = organizationId
            
            self.organizationName = organizationName
            
            self.requestStatus = requestStatus
            
            self.requestedPermissions = requestedPermissions
            
            self.userId = userId
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    approvedPermissions = try container.decode(ApprovedPermissions.self, forKey: .approvedPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    comment = try container.decode(String.self, forKey: .comment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Double.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyName = try container.decode(String.self, forKey: .companyName)
                
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
                    organizationId = try container.decode(String.self, forKey: .organizationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    organizationName = try container.decode(String.self, forKey: .organizationName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestStatus = try container.decode(String.self, forKey: .requestStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requestedPermissions = try container.decode(RequestedPermissions.self, forKey: .requestedPermissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(approvedPermissions, forKey: .approvedPermissions)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(companyName, forKey: .companyName)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(organizationName, forKey: .organizationName)
            
            
            
            
            try? container.encodeIfPresent(requestStatus, forKey: .requestStatus)
            
            
            
            
            try? container.encodeIfPresent(requestedPermissions, forKey: .requestedPermissions)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}


