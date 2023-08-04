

import Foundation
public extension PublicClient.Partner {
    /*
        Model: ExtensionUsingSlug
        Used By: Partner
    */

    class ExtensionUsingSlug: Codable {
        
        
        public var category: CategoryCommon?
        
        public var contactInfo: ContactInfo?
        
        public var createdAt: String?
        
        public var currentStatus: String?
        
        public var details: Details?
        
        public var extensionId: String?
        
        public var isComingSoon: Bool?
        
        public var listingInfo: ListingInfo?
        
        public var modifiedAt: String?
        
        public var organization: Organization?
        
        public var organizationId: String?
        
        public var planType: String?
        
        public var plans: [Plans]?
        
        public var plansUrl: String?
        
        public var reviewInstructions: String?
        
        public var scope: [String]?
        
        public var slug: String?
        
        public var id: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case category = "category"
            
            case contactInfo = "contact_info"
            
            case createdAt = "created_at"
            
            case currentStatus = "current_status"
            
            case details = "details"
            
            case extensionId = "extension_id"
            
            case isComingSoon = "is_coming_soon"
            
            case listingInfo = "listing_info"
            
            case modifiedAt = "modified_at"
            
            case organization = "organization"
            
            case organizationId = "organization_id"
            
            case planType = "plan_type"
            
            case plans = "plans"
            
            case plansUrl = "plans_url"
            
            case reviewInstructions = "review_instructions"
            
            case scope = "scope"
            
            case slug = "slug"
            
            case id = "_id"
            
        }

        public init(category: CategoryCommon? = nil, contactInfo: ContactInfo? = nil, createdAt: String? = nil, currentStatus: String? = nil, details: Details? = nil, extensionId: String? = nil, isComingSoon: Bool? = nil, listingInfo: ListingInfo? = nil, modifiedAt: String? = nil, organization: Organization? = nil, organizationId: String? = nil, plans: [Plans]? = nil, plansUrl: String? = nil, planType: String? = nil, reviewInstructions: String? = nil, scope: [String]? = nil, slug: String? = nil, id: String? = nil) {
            
            self.category = category
            
            self.contactInfo = contactInfo
            
            self.createdAt = createdAt
            
            self.currentStatus = currentStatus
            
            self.details = details
            
            self.extensionId = extensionId
            
            self.isComingSoon = isComingSoon
            
            self.listingInfo = listingInfo
            
            self.modifiedAt = modifiedAt
            
            self.organization = organization
            
            self.organizationId = organizationId
            
            self.planType = planType
            
            self.plans = plans
            
            self.plansUrl = plansUrl
            
            self.reviewInstructions = reviewInstructions
            
            self.scope = scope
            
            self.slug = slug
            
            self.id = id
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    category = try container.decode(CategoryCommon.self, forKey: .category)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contactInfo = try container.decode(ContactInfo.self, forKey: .contactInfo)
                
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
                    currentStatus = try container.decode(String.self, forKey: .currentStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    details = try container.decode(Details.self, forKey: .details)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    extensionId = try container.decode(String.self, forKey: .extensionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isComingSoon = try container.decode(Bool.self, forKey: .isComingSoon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    listingInfo = try container.decode(ListingInfo.self, forKey: .listingInfo)
                
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
                    organization = try container.decode(Organization.self, forKey: .organization)
                
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
                    planType = try container.decode(String.self, forKey: .planType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    plans = try container.decode([Plans].self, forKey: .plans)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    plansUrl = try container.decode(String.self, forKey: .plansUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reviewInstructions = try container.decode(String.self, forKey: .reviewInstructions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    scope = try container.decode([String].self, forKey: .scope)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            try? container.encodeIfPresent(category, forKey: .category)
            
            
            
            
            try? container.encodeIfPresent(contactInfo, forKey: .contactInfo)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(extensionId, forKey: .extensionId)
            
            
            
            
            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)
            
            
            
            
            try? container.encodeIfPresent(listingInfo, forKey: .listingInfo)
            
            
            
            
            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
            
            
            
            
            try? container.encodeIfPresent(organization, forKey: .organization)
            
            
            
            
            try? container.encodeIfPresent(organizationId, forKey: .organizationId)
            
            
            
            
            try? container.encodeIfPresent(planType, forKey: .planType)
            
            
            
            
            try? container.encodeIfPresent(plans, forKey: .plans)
            
            
            
            
            try? container.encodeIfPresent(plansUrl, forKey: .plansUrl)
            
            
            
            
            try? container.encodeIfPresent(reviewInstructions, forKey: .reviewInstructions)
            
            
            
            
            try? container.encodeIfPresent(scope, forKey: .scope)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
        }
        
    }
}
