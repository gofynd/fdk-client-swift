

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: FulfillmentOptionItem
        Used By: Logistic
    */
    class FulfillmentOptionItem: Codable {
        
        public var applicationId: String?
        
        public var businessUnit: [BusinessUnit]?
        
        public var companyId: Int?
        
        public var defaultFor: FulfillmentOptionDefaultFor?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var serviceabilityType: String?
        
        public var status: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var isDefault: Bool?
        
        public var id: String?
        
        public var type: String?
        
        public var name: String?
        
        public var maxPromiseAllowed: MaxPromiseAllowed?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case businessUnit = "business_unit"
            
            case companyId = "company_id"
            
            case defaultFor = "default_for"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case serviceabilityType = "serviceability_type"
            
            case status = "status"
            
            case slug = "slug"
            
            case description = "description"
            
            case isDefault = "is_default"
            
            case id = "id"
            
            case type = "type"
            
            case name = "name"
            
            case maxPromiseAllowed = "max_promise_allowed"
            
        }

        public init(applicationId: String? = nil, businessUnit: [BusinessUnit]? = nil, companyId: Int? = nil, defaultFor: FulfillmentOptionDefaultFor? = nil, description: String? = nil, id: String? = nil, isDefault: Bool? = nil, maxPromiseAllowed: MaxPromiseAllowed? = nil, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String? = nil, serviceabilityType: String? = nil, slug: String? = nil, status: String? = nil, type: String? = nil) {
            
            self.applicationId = applicationId
            
            self.businessUnit = businessUnit
            
            self.companyId = companyId
            
            self.defaultFor = defaultFor
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.serviceabilityType = serviceabilityType
            
            self.status = status
            
            self.slug = slug
            
            self.description = description
            
            self.isDefault = isDefault
            
            self.id = id
            
            self.type = type
            
            self.name = name
            
            self.maxPromiseAllowed = maxPromiseAllowed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                businessUnit = try container.decode([BusinessUnit].self, forKey: .businessUnit)
            
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
                defaultFor = try container.decode(FulfillmentOptionDefaultFor.self, forKey: .defaultFor)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
            
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
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                maxPromiseAllowed = try container.decode(MaxPromiseAllowed.self, forKey: .maxPromiseAllowed)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            try? container.encodeIfPresent(businessUnit, forKey: .businessUnit)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(defaultFor, forKey: .defaultFor)
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(maxPromiseAllowed, forKey: .maxPromiseAllowed)
            
            
        }
        
    }
}
