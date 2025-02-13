

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ManifestItems
        Used By: Order
    */

    class ManifestItems: Codable {
        
        
        public var filters: Filters?
        
        public var manifestId: String?
        
        public var uniqueId: String?
        
        public var companyId: Int?
        
        public var dpId: String?
        
        public var courierPartnerSlug: String?
        
        public var action: String?
        
        public var createdBy: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case manifestId = "manifest_id"
            
            case uniqueId = "unique_id"
            
            case companyId = "company_id"
            
            case dpId = "dp_id"
            
            case courierPartnerSlug = "courier_partner_slug"
            
            case action = "action"
            
            case createdBy = "created_by"
            
            case userId = "user_id"
            
        }

        public init(action: String? = nil, companyId: Int? = nil, courierPartnerSlug: String? = nil, createdBy: String? = nil, dpId: String? = nil, filters: Filters? = nil, manifestId: String? = nil, uniqueId: String? = nil, userId: String? = nil) {
            
            self.filters = filters
            
            self.manifestId = manifestId
            
            self.uniqueId = uniqueId
            
            self.companyId = companyId
            
            self.dpId = dpId
            
            self.courierPartnerSlug = courierPartnerSlug
            
            self.action = action
            
            self.createdBy = createdBy
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode(Filters.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manifestId = try container.decode(String.self, forKey: .manifestId)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerSlug = try container.decode(String.self, forKey: .courierPartnerSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerSlug, forKey: .courierPartnerSlug)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ManifestItems
        Used By: Order
    */

    class ManifestItems: Codable {
        
        
        public var filters: Filters?
        
        public var manifestId: String?
        
        public var uniqueId: String?
        
        public var companyId: Int?
        
        public var dpId: String?
        
        public var courierPartnerSlug: String?
        
        public var action: String?
        
        public var createdBy: String?
        
        public var userId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case manifestId = "manifest_id"
            
            case uniqueId = "unique_id"
            
            case companyId = "company_id"
            
            case dpId = "dp_id"
            
            case courierPartnerSlug = "courier_partner_slug"
            
            case action = "action"
            
            case createdBy = "created_by"
            
            case userId = "user_id"
            
        }

        public init(action: String? = nil, companyId: Int? = nil, courierPartnerSlug: String? = nil, createdBy: String? = nil, dpId: String? = nil, filters: Filters? = nil, manifestId: String? = nil, uniqueId: String? = nil, userId: String? = nil) {
            
            self.filters = filters
            
            self.manifestId = manifestId
            
            self.uniqueId = uniqueId
            
            self.companyId = companyId
            
            self.dpId = dpId
            
            self.courierPartnerSlug = courierPartnerSlug
            
            self.action = action
            
            self.createdBy = createdBy
            
            self.userId = userId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode(Filters.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manifestId = try container.decode(String.self, forKey: .manifestId)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dpId = try container.decode(String.self, forKey: .dpId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    courierPartnerSlug = try container.decode(String.self, forKey: .courierPartnerSlug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(String.self, forKey: .createdBy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
            
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(dpId, forKey: .dpId)
            
            
            
            
            try? container.encodeIfPresent(courierPartnerSlug, forKey: .courierPartnerSlug)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
        }
        
    }
}


