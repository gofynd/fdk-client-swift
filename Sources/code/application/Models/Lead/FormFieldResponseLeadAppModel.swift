

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: FormFieldResponse
        Used By: Lead
    */
    class FormFieldResponse: Codable {
        
        public var id: String?
        
        public var v: Double?
        
        public var applicationId: String?
        
        public var formSlug: String?
        
        public var createdOn: CreatedOn?
        
        public var response: [FormFieldResponseValues]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case v = "__v"
            
            case applicationId = "application_id"
            
            case formSlug = "form_slug"
            
            case createdOn = "created_on"
            
            case response = "response"
            
        }

        public init(applicationId: String? = nil, createdOn: CreatedOn? = nil, formSlug: String? = nil, response: [FormFieldResponseValues]? = nil, id: String? = nil, v: Double? = nil) {
            
            self.id = id
            
            self.v = v
            
            self.applicationId = applicationId
            
            self.formSlug = formSlug
            
            self.createdOn = createdOn
            
            self.response = response
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
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
                applicationId = try container.decode(String.self, forKey: .applicationId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                formSlug = try container.decode(String.self, forKey: .formSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdOn = try container.decode(CreatedOn.self, forKey: .createdOn)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                response = try container.decode([FormFieldResponseValues].self, forKey: .response)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            try? container.encodeIfPresent(formSlug, forKey: .formSlug)
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}
