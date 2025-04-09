

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GetCountryFieldsAddress
        Used By: Logistic
    */
    class GetCountryFieldsAddress: Codable {
        
        public var displayName: String
        
        public var slug: String
        
        public var required: Bool
        
        public var edit: Bool?
        
        public var input: String
        
        public var validation: FieldValidation?
        
        public var values: GetCountryFieldsAddressValues?
        
        public var errorText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayName = "display_name"
            
            case slug = "slug"
            
            case required = "required"
            
            case edit = "edit"
            
            case input = "input"
            
            case validation = "validation"
            
            case values = "values"
            
            case errorText = "error_text"
            
        }

        public init(displayName: String, edit: Bool? = nil, errorText: String? = nil, input: String, required: Bool, slug: String, validation: FieldValidation? = nil, values: GetCountryFieldsAddressValues? = nil) {
            
            self.displayName = displayName
            
            self.slug = slug
            
            self.required = required
            
            self.edit = edit
            
            self.input = input
            
            self.validation = validation
            
            self.values = values
            
            self.errorText = errorText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            displayName = try container.decode(String.self, forKey: .displayName)
            
            
            
            
            slug = try container.decode(String.self, forKey: .slug)
            
            
            
            
            required = try container.decode(Bool.self, forKey: .required)
            
            
            
            
            do {
                edit = try container.decode(Bool.self, forKey: .edit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            input = try container.decode(String.self, forKey: .input)
            
            
            
            
            do {
                validation = try container.decode(FieldValidation.self, forKey: .validation)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                values = try container.decode(GetCountryFieldsAddressValues.self, forKey: .values)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                errorText = try container.decode(String.self, forKey: .errorText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(required, forKey: .required)
            
            
            
            try? container.encodeIfPresent(edit, forKey: .edit)
            
            
            
            try? container.encodeIfPresent(input, forKey: .input)
            
            
            
            try? container.encodeIfPresent(validation, forKey: .validation)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            try? container.encodeIfPresent(errorText, forKey: .errorText)
            
            
        }
        
    }
}
