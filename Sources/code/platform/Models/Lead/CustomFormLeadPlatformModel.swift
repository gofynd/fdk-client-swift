

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: CustomForm
        Used By: Lead
    */

    class CustomForm: Codable {
        
        
        public var applicationId: String
        
        public var slug: String
        
        public var headerImage: String?
        
        public var title: String
        
        public var description: String?
        
        public var loginRequired: Bool
        
        public var shouldNotify: Bool
        
        public var successMessage: String?
        
        public var submitButton: SubmitButton?
        
        public var inputs: [[String: Any]]
        
        public var createdOn: CreatedOn?
        
        public var pollForAssignment: PollForAssignment?
        
        public var availableAssignees: [String]?
        
        public var id: String
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Double?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case slug = "slug"
            
            case headerImage = "header_image"
            
            case title = "title"
            
            case description = "description"
            
            case loginRequired = "login_required"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case submitButton = "submit_button"
            
            case inputs = "inputs"
            
            case createdOn = "created_on"
            
            case pollForAssignment = "poll_for_assignment"
            
            case availableAssignees = "available_assignees"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
            case createdBy = "created_by"
            
        }

        public init(applicationId: String, availableAssignees: [String]? = nil, createdAt: String? = nil, createdBy: String? = nil, createdOn: CreatedOn? = nil, description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment? = nil, shouldNotify: Bool, slug: String, submitButton: SubmitButton? = nil, successMessage: String? = nil, title: String, updatedAt: String? = nil, id: String, v: Double? = nil) {
            
            self.applicationId = applicationId
            
            self.slug = slug
            
            self.headerImage = headerImage
            
            self.title = title
            
            self.description = description
            
            self.loginRequired = loginRequired
            
            self.shouldNotify = shouldNotify
            
            self.successMessage = successMessage
            
            self.submitButton = submitButton
            
            self.inputs = inputs
            
            self.createdOn = createdOn
            
            self.pollForAssignment = pollForAssignment
            
            self.availableAssignees = availableAssignees
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    headerImage = try container.decode(String.self, forKey: .headerImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
                
            
            
            
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
                
            
            
            
                do {
                    successMessage = try container.decode(String.self, forKey: .successMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    submitButton = try container.decode(SubmitButton.self, forKey: .submitButton)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                inputs = try container.decode([[String: Any]].self, forKey: .inputs)
                
            
            
            
                do {
                    createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableAssignees = try container.decode([String].self, forKey: .availableAssignees)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            
            
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            
            
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            
            
            
            try? container.encodeIfPresent(submitButton, forKey: .submitButton)
            
            
            
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
            
            
            
            try? container.encodeIfPresent(availableAssignees, forKey: .availableAssignees)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: CustomForm
        Used By: Lead
    */

    class CustomForm: Codable {
        
        
        public var applicationId: String
        
        public var slug: String
        
        public var headerImage: String?
        
        public var title: String
        
        public var description: String?
        
        public var loginRequired: Bool
        
        public var shouldNotify: Bool
        
        public var successMessage: String?
        
        public var submitButton: SubmitButton?
        
        public var inputs: [[String: Any]]
        
        public var createdOn: CreatedOn?
        
        public var pollForAssignment: PollForAssignment?
        
        public var availableAssignees: [String]?
        
        public var id: String
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var v: Double?
        
        public var createdBy: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case slug = "slug"
            
            case headerImage = "header_image"
            
            case title = "title"
            
            case description = "description"
            
            case loginRequired = "login_required"
            
            case shouldNotify = "should_notify"
            
            case successMessage = "success_message"
            
            case submitButton = "submit_button"
            
            case inputs = "inputs"
            
            case createdOn = "created_on"
            
            case pollForAssignment = "poll_for_assignment"
            
            case availableAssignees = "available_assignees"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case v = "__v"
            
            case createdBy = "created_by"
            
        }

        public init(applicationId: String, availableAssignees: [String]? = nil, createdAt: String? = nil, createdBy: String? = nil, createdOn: CreatedOn? = nil, description: String? = nil, headerImage: String? = nil, inputs: [[String: Any]], loginRequired: Bool, pollForAssignment: PollForAssignment? = nil, shouldNotify: Bool, slug: String, submitButton: SubmitButton? = nil, successMessage: String? = nil, title: String, updatedAt: String? = nil, id: String, v: Double? = nil) {
            
            self.applicationId = applicationId
            
            self.slug = slug
            
            self.headerImage = headerImage
            
            self.title = title
            
            self.description = description
            
            self.loginRequired = loginRequired
            
            self.shouldNotify = shouldNotify
            
            self.successMessage = successMessage
            
            self.submitButton = submitButton
            
            self.inputs = inputs
            
            self.createdOn = createdOn
            
            self.pollForAssignment = pollForAssignment
            
            self.availableAssignees = availableAssignees
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.v = v
            
            self.createdBy = createdBy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    headerImage = try container.decode(String.self, forKey: .headerImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                title = try container.decode(String.self, forKey: .title)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                loginRequired = try container.decode(Bool.self, forKey: .loginRequired)
                
            
            
            
                shouldNotify = try container.decode(Bool.self, forKey: .shouldNotify)
                
            
            
            
                do {
                    successMessage = try container.decode(String.self, forKey: .successMessage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    submitButton = try container.decode(SubmitButton.self, forKey: .submitButton)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                inputs = try container.decode([[String: Any]].self, forKey: .inputs)
                
            
            
            
                do {
                    createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    pollForAssignment = try container.decode(PollForAssignment.self, forKey: .pollForAssignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableAssignees = try container.decode([String].self, forKey: .availableAssignees)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    v = try container.decode(Double.self, forKey: .v)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(headerImage, forKey: .headerImage)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(loginRequired, forKey: .loginRequired)
            
            
            
            
            try? container.encodeIfPresent(shouldNotify, forKey: .shouldNotify)
            
            
            
            
            try? container.encodeIfPresent(successMessage, forKey: .successMessage)
            
            
            
            
            try? container.encodeIfPresent(submitButton, forKey: .submitButton)
            
            
            
            
            try? container.encodeIfPresent(inputs, forKey: .inputs)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(pollForAssignment, forKey: .pollForAssignment)
            
            
            
            
            try? container.encodeIfPresent(availableAssignees, forKey: .availableAssignees)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
        }
        
    }
}


